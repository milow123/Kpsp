<?php
class Ujikpsp extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        // is_logged_in();
    }

    public function index()
    {
        $data['title'] = 'Uji KPSP';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();

        // Cari bulan
        $sql = "SELECT DISTINCT `bulan` FROM `kpsp`";
        $query = $this->db->query($sql);
        $data['pilih_bulan'] = $query->result();

        $tanggal_lahir = $data['login']['tanggal_lahir'];

        $birthDate = new DateTime($tanggal_lahir);
        $today = new DateTime('now');
        if ($birthDate > $today) {
            exit(" 0 bulan 0 hari");
        }
        $y = $today->diff($birthDate)->y * 12;
        $m = $today->diff($birthDate)->m + $y;
        $d = $today->diff($birthDate)->d;

        // $data['tanggal_lahir'] = $m . "bulan";
        $bulan = (int) $m;

        // Filter kuesioner sesuai bulan
        if (!is_null($this->input->post('umur_bulan'))) {
            $fixbulan = $this->input->post('umur_bulan');
        } else {
            $fixbulan = floor($bulan / 3) * 3;
        }

        $data['kpsp'] = $this->db->get_where('kpsp', ['bulan' => $fixbulan])->result_array();

        $data['umur_bulan'] = $fixbulan;
        $data['umur_bayi'] = $bulan;

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('kpsp/index', $data);
        $this->load->view('template/footer', $data);

        $this->load->helper(array('kpsp', 'date'), $data);
    }

    public function hitung_umur($tanggal_lahir)
    {
        $birthDate = new DateTime($tanggal_lahir);
        $today = new DateTime("today");
        if ($birthDate > $today) {
            exit(" 0 bulan 0 hari");
        }
        $y = $today->diff($birthDate)->y * 12;
        $m = $today->diff($birthDate)->m + $y;
        $d = $today->diff($birthDate)->d;
    }

    public function jawaban()
    {
        $user_id = $this->session->userdata('id');
        $umur = $this->input->post('umur_bulan');

        $sql = "INSERT INTO `uji_kpsp` (`tanggal_uji`, `user_id`, `umur`) VALUES (NOW(), ?, ?) ";
        $query = $this->db->query($sql, [$user_id, $umur]);

        if ($query) {
            $insert_success = TRUE;
            $ujikpsp_id = $this->db->insert_id();

            // Cari kpsp id berdasarkan umur
            $kpsp = $this->db->get_where('kpsp', ['bulan' => $umur])->result_array();
            if (count($kpsp) > 0) {
                // Total jawaban untuk kategori
                $total_jawaban = 0;
                foreach ($kpsp as $k) {
                    $jawaban = $this->input->post('jawaban' . $k['id']);

                    if ($jawaban == '1') {
                        $total_jawaban++;
                    }

                    $sql = "INSERT INTO `jawaban_kpsp` (`ujikpsp_id`, `kpsp_id`, `jawaban`) VALUES(?, ?, ?) ";
                    $query = $this->db->query($sql, [$ujikpsp_id, $k['id'], $jawaban]);
                    if (!$query) {
                        $insert_success = FALSE;
                        break;
                    }
                }
            } else {
                $insert_success = FALSE;
            }
        }

        if ($insert_success) {
            if ($total_jawaban > 9) {
                $kategori = "sesuai";
            } else if ($total_jawaban > 6 && $total_jawaban < 9) {
                $kategori = "meragukan";
            } else if ($total_jawaban <= 6) {
                $kategori = "tidak sesuai";
            }
            $sql = "UPDATE `uji_kpsp` SET `kategori` = ? WHERE `ujikpsp_id` = ?";
            $this->db->query($sql, [$kategori, $ujikpsp_id]);
            redirect('Ujikpsp/detail/' . $ujikpsp_id);
        } else {
            redirect('Ujikpsp');
        }
    }

    public function detail($id)
    {
        $data['title'] = 'Detail Uji KPSP';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();
        $tanggal_lahir = $data['login']['tanggal_lahir'];

        $birthDate = new DateTime($tanggal_lahir);
        $today = new DateTime('now');
        if ($birthDate > $today) {
            exit(" 0 bulan 0 hari");
        }

        $y = $today->diff($birthDate)->y * 12;
        $m = $today->diff($birthDate)->m + $y;
        $d = $today->diff($birthDate)->d;

        $bulan = (int) $m;
        $fixbulan = floor($bulan / 3) * 3;

        $data['bulan'] = $fixbulan;

        $sql = "SELECT * FROM `uji_kpsp` WHERE ujikpsp_id = ?";
        $query = $this->db->query($sql, [$id]);
        $data['uji_kpsp']  = $uji_kpsp = $query->row();

        $data['kpsp'] = $this->db->get_where('kpsp', ['bulan' => $uji_kpsp->umur])->result_array();

        $sql = "SELECT * FROM `jawaban_kpsp` WHERE ujikpsp_id = ?";
        $query = $this->db->query($sql, [$id]);
        $data['jawaban_ujikpsp'] = $query->result_array();

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('kpsp/detail', $data);
        $this->load->view('template/footer', $data);

        $this->load->helper(array('kpsp', 'date'), $data);
    }
}

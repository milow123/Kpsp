<?php
class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }
    public function index()
    {
        $data['title'] = 'Welcome';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();
        $data['menu'] = $this->db->get('user_menu')->result_array();
        $data['sub'] = 'History';
        $sql = "SELECT uk.`ujikpsp_id`, uk.`tanggal_uji`, l.`nama_bayi`, uk.`umur`, uk.`kategori` FROM `uji_kpsp` uk "
            . "JOIN `login` l ON uk.`user_id` = l.`id` "
            . "WHERE uk.`user_id` = ? "
            . "ORDER BY uk.`tanggal_uji` DESC";
        $query = $this->db->query($sql, [$this->session->userdata('id')]);
        if ($query) {
            $data['kpsp'] = $query->result_array();
        }

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('template/footer', $data);
    }

    public function edit()
    {
        $data['title'] = 'Edit Profile';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();


        $this->form_validation->set_rules('nama', 'Nama Lengkap', 'required|trim', ['required' => 'Nama belum terisi.']);
        $this->form_validation->set_rules('nama_bayi', 'Nama Lengkap Bayi', 'required|trim', ['required' => 'Nama bayi belum terisi.']);

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('user/edit', $data);
            $this->load->view('template/footer', $data);
        } else {
            $nama = $this->input->post('nama');
            $nama_bayi = $this->input->post('nama_bayi');
            $email = $this->input->post('email');

            //cek jika ada gambar yang diuoload
            $upload_gambar = $_FILES['gambar']['name'];
            if ($upload_gambar) {
                $config['allowed_types'] = 'gif|jpg|png';
                $config['max_size']      = '2048';
                $config['upload_path']   = './asset/img/profile/';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('gambar')) {
                    $old_gambar = $data['login']['gambar'];
                    if ($old_gambar != 'default.jpg') {
                        unlink(FCPATH . 'asset/img/profile/' . $old_gambar);
                    }
                    $new_gambar = $this->upload->data('file_name');
                    $this->db->set('gambar', $new_gambar);
                } else {
                    $this->upload->display_errors();
                }
            }


            $this->db->set('nama', $nama);
            $this->db->set('nama_bayi', $nama_bayi);
            $this->db->where('email', $email);
            $this->db->update('login');
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Selamat, profil anda telah terupdate</div>');
            redirect('user/edit');
        }
    }
    public function ubahpassword()
    {
        $data['title'] = 'My Profile';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();


        $this->form_validation->set_rules('password_sekarang', 'Password Sekarang', 'required|trim', [
            'required' => 'Password sekarang belum terisi.'
        ]);
        $this->form_validation->set_rules('password_baru1', 'Password Baru', 'required|trim|min_length[5]|matches[password_baru2]', [
            'required' => 'Password baru belum terisi.',
            'matches' => 'Password tidak sama.',
            'min_lenght' => 'Password harus lebih dari 5 digit.'
        ]);
        $this->form_validation->set_rules('password_baru2', 'Password', 'required|trim|matches[password_baru1]', [
            'required' => 'Password baru belum terisi.'
        ]);

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('user/ubahpassword', $data);
            $this->load->view('template/footer', $data);
        } else {
            $password_sekarang = $this->input->post('password_sekarang');
            $password_baru = $this->input->post('password_baru1');
            if (!password_verify($password_sekarang, $data['login']['password'])) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Password Salah</div>');
                redirect('user/ubahpassword');
            } else {
                if ($password_sekarang == $password_baru) {
                    $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Password baru tidak boleh sama dengan password lama</div>');
                    redirect('user/ubahpassword');
                } else {
                    $password_hash = password_hash($password_baru, PASSWORD_DEFAULT);

                    $this->db->set('password', $password_hash);
                    $this->db->where('email', $this->session->userdata('email'));
                    $this->db->update('login');
                    $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Password berhasil diubah</div>');
                    redirect('user/ubahpassword');
                }
            }
        }
    }
}

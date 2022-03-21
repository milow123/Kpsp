<?php
class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->library('form_validation');
    }
    public function index()
    {
        if ($this->session->userdata('email')) {
            redirect('user');
        }
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        if ($this->form_validation->run() == false) {

            $data['title'] = 'Home Page';

            $this->load->view('template/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('template/auth_footer');
        } else {
            //validasi sukses
            $this->_login();
        }
    }

    private function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $login = $this->db->get_where('login', ['email' => $email])->row_array();


        if ($login) {
            if ($login['is_active'] == 1) {
                if (password_verify($password, $login['password'])) {
                    $data = [
                        'email' => $login['email'],
                        'id' => $login['id'],
                        'level_id' => $login['level_id']
                    ];
                    $this->session->set_userdata($data);
                    if ($login['level_id'] == 1) {
                        redirect('admin');
                    } else {
                        redirect('user');
                    }
                } else {
                    $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Maaf, password salah.</div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Maaf, email belum teraktivasi.</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Maaf, email belum terdaftar.</div>');
            redirect('auth');
        }
    }

    public function regristrasi()
    {
        if ($this->session->userdata('email')) {
            redirect('user');
        }
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Nama belum terisi.'
        ]);
        $this->form_validation->set_rules('nama_bayi', 'Nama Bayi', 'required|trim', [
            'required' => 'Nama Bayi belum terisi.'
        ]);
        $this->form_validation->set_rules('tanggal_lahir', 'Tanggal Lahir', 'required|trim', [
            'required' => 'Tanggal lahir belum terisi.'
        ]);
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[login.email]', [
            'required' => 'Email belum terisi.',
            'valid_email' => 'Email tidak valid.',
            'is_unique' => 'Email sudah terdaftar.'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[5]|matches[password2]', [
            'required' => 'Password belum terisi.',
            'matches' => 'Password tidak sama.',
            'min_lenght' => 'Password harus lebih dari 8 digit.'
        ]);
        $this->form_validation->set_rules('password2', 'Password', 'required|trim|matches[password1]');
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Regristrasi';
            $this->load->view('template/auth_header', $data);
            $this->load->view('auth/regristrasi');
            $this->load->view('template/auth_footer');
        } else {
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'nama_bayi' => htmlspecialchars($this->input->post('nama_bayi', true)),
                'tanggal_lahir' => $this->input->post('tanggal_lahir'),
                'email' => htmlspecialchars($this->input->post('email', true)),
                'gambar' => 'default.jpg',
                'password' => password_hash($this->input->post('password1'), PASSWORD_DEFAULT),
                'level_id' => 2,
                'is_active' => 1,
                'waktu_pembuatan' => time()
            ];

            $this->db->insert('login', $data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Selamat! akun anda telah teregristrasi. Silahkan login.</div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('level_id');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Sukses untuk logout.</div>');
        redirect('auth');
    }


    public function blocked()
    {

        $this->load->view('auth/blocked');
    }
}

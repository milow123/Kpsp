<?php
class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
    }
    public function index()
    {
        $data['title'] = 'Dashboard Admin';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();
        $data['tampil_login'] = $this->db->get('login')->result_array();
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/index', $data);
        $this->load->view('template/footer', $data);
    }
    public function role()
    {
        $data['title'] = 'Role';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get('level')->result_array();

        $this->form_validation->set_rules('role', 'Role', 'required');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('admin/role', $data);
            $this->load->view('template/footer', $data);
        } else {
            $this->db->insert('level', ['role' => $this->input->post('role')]);
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Role telah ditambah.</div>');
            redirect('admin/role');
        }
    }
    public function roleAccess($level_id)
    {
        $data['title'] = 'Role Access';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $this->db->get_where('level', ['id' => $level_id])->row_array();

        $this->db->where('id !=', 1);
        $data['menu'] =  $this->db->get('user_menu')->result_array();
        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('template/topbar', $data);
        $this->load->view('admin/roleaccess', $data);
        $this->load->view('template/footer', $data);
    }
    public function changeAccess()
    {
        $menu_id = $this->input->post('menuId');
        $role_id = $this->input->post('roleId');

        $data = [
            'level_id' => $role_id,
            'menu_id' => $menu_id
        ];

        $result = $this->db->get_where('user_access_menu', $data);
        if ($result->num_rows() < 1) {
            $this->db->insert('user_access_menu', $data);
        } else {
            $this->db->delete('user_access_menu', $data);
        }

        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Akses telah berubah.</div>');
    }
    public function hapus($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('level');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Menu berhasil dihapus.</div>');
        redirect('admin/role');
    }
    public function edit($id)
    {

        $role = $this->input->post('edit_role');
        $this->db->set('role', $role);
        $this->db->where('id', $id);
        $this->db->update('level');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Selamat, profil anda telah terupdate</div>');
        redirect('admin/role');
    }
}

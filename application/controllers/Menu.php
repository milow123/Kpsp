<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Menu extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('menu_model');
    }
    public function index()
    {
        $data['title'] = 'Menu Management';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();
        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->form_validation->set_rules('menu', 'Menu', 'required');

        if ($this->form_validation->run() == false) {

            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/index', $data);
            $this->load->view('template/footer', $data);
        } else {
            $this->db->insert('user_menu', ['menu' => $this->input->post('menu')]);
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Menu telah ditambah.</div>');
            redirect('menu');
        }
    }
    public function submenu()
    {
        $data['title'] = 'Submenu Management';
        $data['login'] = $this->db->get_where('login', ['email' => $this->session->userdata('email')])->row_array();

        $this->load->model('Menu_model');

        $data['submenu'] = $this->Menu_model->getSubMenu();
        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->form_validation->set_rules('nama_menu', 'Title', 'required');
        $this->form_validation->set_rules('menu_id', 'Menu', 'required');
        $this->form_validation->set_rules('url', 'URL', 'required');
        $this->form_validation->set_rules('icon', 'icon', 'required');
        $this->form_validation->set_rules('is_active', 'is_active', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('template/topbar', $data);
            $this->load->view('menu/submenu', $data);
            $this->load->view('template/footer', $data);
        } else {
            $data = [
                'nama_menu' => $this->input->post('nama_menu'),
                'menu_id' => $this->input->post('menu_id'),
                'url' => $this->input->post('url'),
                'icon' => $this->input->post('icon'),
                'is_active' => $this->input->post('is_active')
            ];
            $this->db->insert('user_sub_menu', $data);
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Submenu telah ditambah.</div>');
            redirect('menu/submenu');
        }
    }

    public function hapus($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('user_menu');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Menu berhasil dihapus.</div>');
        redirect('menu');
    }

    public function edit($id)
    {
        // var_dump($data['menu']);
        $menu = $this->input->post('edit_menu');
        $this->db->set('menu', $menu);
        $this->db->where('id', $id);
        $this->db->update('user_menu');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Selamat, profil anda telah terupdate</div>');
        redirect('menu');
    }

    public function hapus_submenu($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('user_sub_menu');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Menu berhasil dihapus.</div>');
        redirect('menu/submenu');
    }
    public function edit_submenu($id)
    {
        // $this->load->model('Menu_model');

        // $data['submenu'] = $this->Menu_model->getSubMenu();
        // $data['menu'] = $this->db->get('user_menu')->result_array();
        // // var_dump($data['menu']);
        // $this->db->update('user_sub_menu', $data);
        // $data = [
        //     'nama_menu' => $this->input->post('edit_nama_menu'),
        //     'menu_id' => $this->input->post('edit_menu_id'),
        //     'url' => $this->input->post('edit_url'),
        //     'icon' => $this->input->post('edit_icon'),
        //     'is_active' => $this->input->post('edit_is_active')
        // ];
        $nama_menu = $this->input->post('edit_nama_menu');
        $menu_id = $this->input->post('edit_menu_id');
        $url = $this->input->post('edit_url');
        $icon = $this->input->post('edit_icon');
        $is_active = $this->input->post('edit_is_active');
        $this->db->set('nama_menu', $nama_menu);
        $this->db->set('menu_id', $menu_id);
        $this->db->set('url', $url);
        $this->db->set('icon', $icon);
        $this->db->set('is_active', $is_active);
        $this->db->where('id', $id);
        $this->db->update('user_sub_menu');
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Selamat, profil anda telah terupdate</div>');
        redirect('menu/submenu');
    }
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admincontroller extends CI_Controller {
	function __construct()
  	{
		parent::__construct();
		$this->user = $this->session->userdata('login');
		if (!$this->user) {
			$this->session->sess_destroy();
			redirect(base_url().'auth/login');
		}
	}
	  
	public function index()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/index');
		$this->load->view('paneladmin/footer');
	}
	public function kakilangit()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/kakilangit');
		$this->load->view('paneladmin/footer');
	}
	public function obyekwisata()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/obyekwisata');
		$this->load->view('paneladmin/footer');
	}
	public function berita()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/berita');
		$this->load->view('paneladmin/footer');
	}
	public function galery()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/galery');
		$this->load->view('paneladmin/footer');
	}
	public function booking()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/booking');
		$this->load->view('paneladmin/footer');
	}
	public function tambahkakilangit()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/tambahkakilangit');
		$this->load->view('paneladmin/footer');
	}
	public function tambahobyekwisata()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/tambahobyekwisata');
		$this->load->view('paneladmin/footer');
	}
	public function tambahberita()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/tambahberita');
		$this->load->view('paneladmin/footer');
	}
	public function tambahgalery()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/tambahgalery');
		$this->load->view('paneladmin/footer');
	}
	public function tentang()
	{
		$this->load->view('paneladmin/header');
		$this->load->view('paneladmin/tentang');
		$this->load->view('paneladmin/footer');
	}



}

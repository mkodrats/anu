<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usercontroller extends CI_Controller {

	public function index()
	{
		$this->load->view('user/header');
		$this->load->view('user/index');
		$this->load->view('user/footer');
	}
	public function kakilangit()
	{
		$this->load->view('user/header');
		$this->load->view('user/kakilangit');
		$this->load->view('user/footer');
	}
	public function obyekwisata()
	{
		$this->load->view('user/header');
		$this->load->view('user/obyekwisata');
		$this->load->view('user/footer');
	}
	public function berita()
	{
		$this->load->view('user/header');
		$this->load->view('user/berita');
		$this->load->view('user/footer');
	}
	public function galery()
	{
		$this->load->view('user/header');
		$this->load->view('user/galery');
		$this->load->view('user/footer');
	}
	public function tentang()
	{
		$this->load->view('user/header');
		$this->load->view('user/tentang');
		$this->load->view('user/footer');
	}
	public function booking()
	{
		$this->load->view('user/header');
		$this->load->view('user/booking');
		$this->load->view('user/footer');
	}


}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Estudiantes extends CI_Controller {
	public function index()
	{
		$this->load->view('head');
		$this->load->view('lista');
		$this->load->view('footer');
	}

	public function notasestudiantes()
	{
		$this->load->view('head');
		$this->load->view('notas');
		$this->load->view('footer');
	}
}
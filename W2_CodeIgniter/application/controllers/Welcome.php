<?php
defined('BASEPATH') OR exit('No direct script access allowed'); //Prohibe el acceso remoto directo (PHP)

class Welcome extends CI_Controller {
	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function listaestudiantes()
	{
		$this->load->view('lista');
	}
}
// En controladores y modelos no cerramos php. Solo se cierra en vistas
<?php

defined('BASEPATH') OR exit ('No direct script access alloweed');

/**
 * 
 */
class Usuarios extends CI_Controller
{
	
	public function index()
	{
		if($this->session->userdata('login'))
		{
			redirect('usuarios/panel', 'refresh');
		}
		else
		{
			$this->load->view('loginform');
		}
	}

	public function listausuariospdf()
	{
		$this->load->library('pdf');
		$lista = $this->usuarios_model->listausuarios();
		$lista = $lista->result();
		$this->pdf = new Pdf();
		$this->pdf->AddPage();
		$this->pdf->SetFont('Arial', 'B', 11);
		$this->pdf->Cell(20,10,'Lista de Ciudades', 0, 0, 'C');
		$this->pdf->Ln(20);
		foreach ($lista as $row) {
			$usuario = $row->login;
			$this->pdf->Cell(62,5,$usuario, 1, 0, 'L', 0);
			$this->pdf->Ln(5);
		}
		$this->pdf->Output("Listaciudades.pdf", 'I');
	}

	public function validarusuarios()
	{
		$login = $_POST['login'];
		$password = md5($_POST['password']);

		$consulta = $this->usuarios_model->validar($login, $password);

		if($consulta->num_rows() > 0)
		{
			foreach($consulta->result() as $row)
			{
				$this->session->set_userdata('login', $row->login);
				$this->session->set_userdata('tipo', $row->tipo);
				redirect('usuarios/panel', 'refresh');
			}
		}
		else
		{
			redirect('usuarios/index', 'refresh');
		}
	}

	public function panel()
	{
		if($this->session->userdata('login'))
		{
			$this->load->view('panelvista');
		}
		else
		{
			redirect('usuarios/index', 'refresh');
		}
	}


	public function logout()
	{
		$this->session->sess_destroy();
		redirect('usuarios/index', 'refresh');
	}
}


?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RPLController extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public $Dosen_Login = " ";
	public function __construct()
	{
		parent::__construct();
		$this->load->model('RPLModel');
	}

	public function index()
	{
		$this->load->view('Login');
	}

	public function login()
	{
		$Data['Nama'] = $_POST['username'];
		$Data['Password'] = $_POST['password'];
		$cek = $this->RPLModel->CheckUser($Data);
		if($cek == 1)//if login success
		{
			if($Data['Nama'] == '0011')
			{
				$file['Data'] = $this->RPLModel->GetAllData($Data);
				$file['Nama'] = $this->RPLModel->GetNamaDosen($Data);
				$file['Pesan'] = $this->RPLModel->GetPesan();
				$this->load->view('Admin', $file);
			}
			else
			{
				$file['Data'] = $this->RPLModel->GetDataDosen($Data);
				$file['Nama'] = $this->RPLModel->GetNamaDosen($Data);
				$Dosen_Login = $this->RPLModel->GetNamaDosen($Data);
				$this->load->view('Dosen', $file);
			}
			
		}
		else
		{
			echo "failed";
		}
	}

	function Ganti($data)
	{
		$Ch['Nama'] = '0011';
		$Ch['Kode_Jadwal'] = $_POST['Kode_Jadwal'];
		$Ch['Hari'] = $_POST['Hari'];
		$Ch['Jam'] = $_POST['Jam'];
		$kode= $_POST['Ruangan'];
		$Ch['Ruangan'] = $this->RPLModel->CariKodeRuangan($kode);
		$Ch['Sks'] = $_POST['Sks'];
		$this->RPLModel->GantiJadwal($Ch);
		$file['Data'] = $this->RPLModel->GetAllData($Ch);
		$file['Nama'] = $this->RPLModel->GetNamaDosen($Ch);
		$file['Pesan'] = $this->RPLModel->GetPesan();
		$this->load->view('Admin', $file);
	}


	function Logout()
	{
		$this->load->view('Login');
	}

	function Edit($data)
	{
		if($data != NULL)
		{
			echo $data;
			echo '<br>';
			$JDW['JadwalK'] = $this->RPLModel->JadwalKosong();
			$JDW['Data'] = $data;
			$JDW['Nama'] = $Dosen_Login;

			echo "<table>";
			foreach ($JadwalK as $JK) 
			{
				for ($i=0; $i < 5 ; $i++) { 
					echo '<tr>';
					for ($j=0; $j < 6; $j++) { 
						echo '<td>'.$JK->Jadwal[$i][$j].'</td>';
					}
					echo '</tr>';
				}
			}
			echo "</table>";
		}
		else
		{
			echo "Semangat jangan Menyerah";
		}
	}

	function SendRequest()
	{
		$Data['Nama'] = $_POST['Nama'];
		$Data['Request'] = $_POST['Request'];
		$this->RPLModel->AddRequest($Data);
		/*$this->load->view('Dosen', $Data);*/
		$file['Data'] = $this->RPLModel->GetDataDosen2($Data);
		$file['Nama'] = $this->RPLModel->GetNamaDosen2($Data);
		$this->load->view('Dosen', $file);
	}
}

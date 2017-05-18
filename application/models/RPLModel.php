<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class RPLModel extends CI_Model {

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
	function __construct()
	{
		parent::__construct();
	}

	function CheckUser($data)
	{
		$name = $data['Nama'];
		$password = $data['Password'];
		$query = "Select * FROM dosen WHERE Kode_Dosen='$name' and Password='$password';";
		$hasil = $this->db->query($query);
		if($hasil->num_rows() > 0)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}

	function GetPesan()
	{
		$query = "SELECT dosen.Nama_Dosen, pesan.Isi_Pesan from pesan INNER JOIN dosen ON pesan.Kode_Dosen = dosen.Kode_Dosen;";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}
	function GetAllData($data)
	{
		$name = $data['Nama'];
		$query = "SELECT jadwal.Kode_Jadwal, dosen.Nama_Dosen, mata_kuliah.Nama_Mata_Kuliah, jadwal.Hari, jadwal.jam, ruangan.Nama_Ruangan, jadwal.Sks FROM jadwal AS jadwal INNER JOIN dosen AS dosen ON jadwal.Kode_Dosen = dosen.Kode_Dosen INNER JOIN ruangan AS ruangan ON jadwal.Kode_Ruangan = ruangan.Kode_Ruangan INNER JOIN mata_kuliah AS mata_kuliah ON jadwal.Kode_Mata_Kuliah = mata_kuliah.Kode_Mata_Kuliah;";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function GetDataDosen($data)
	{
		$name = $data['Nama'];
		$query = "SELECT jadwal.Kode_Jadwal, dosen.Nama_Dosen, mata_kuliah.Nama_Mata_Kuliah, jadwal.Hari, jadwal.jam, ruangan.Nama_Ruangan, jadwal.Sks FROM jadwal AS jadwal INNER JOIN dosen AS dosen ON jadwal.Kode_Dosen = dosen.Kode_Dosen INNER JOIN ruangan AS ruangan ON jadwal.Kode_Ruangan = ruangan.Kode_Ruangan INNER JOIN mata_kuliah AS mata_kuliah ON jadwal.Kode_Mata_Kuliah = mata_kuliah.Kode_Mata_Kuliah WHERE jadwal.Kode_Dosen = '$name';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function GetNamaDosen($data)
	{
		$name = $data['Nama'];
		$query = "SELECT Nama_Dosen from dosen WHERE Kode_Dosen = '$name';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function GetDataDosen2($data)
	{
		$name = $data['Nama'];
		$query = "SELECT jadwal.Kode_Jadwal, dosen.Nama_Dosen, mata_kuliah.Nama_Mata_Kuliah, jadwal.Hari, jadwal.jam, ruangan.Nama_Ruangan, jadwal.Sks FROM jadwal AS jadwal INNER JOIN dosen AS dosen ON jadwal.Kode_Dosen = dosen.Kode_Dosen INNER JOIN ruangan AS ruangan ON jadwal.Kode_Ruangan = ruangan.Kode_Ruangan INNER JOIN mata_kuliah AS mata_kuliah ON jadwal.Kode_Mata_Kuliah = mata_kuliah.Kode_Mata_Kuliah WHERE Dosen.Nama_Dosen = '$name';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function GetNamaDosen2($data)
	{
		$name = $data['Nama'];
		$query = "SELECT Nama_Dosen from dosen WHERE Nama_Dosen = '$name';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function CheckStatus($data)
	{
		$name = $data['Nama'];
		$query = "Select status From login WHERE Username='$name';";
		$hasil = $this->db->query($query);
		foreach ($hasil->result() as $row)
		{
		    if($row->status == 'Admin')
		    {
		    	return 1;
		    }
		    else
		    {
		    	return 0;
		    }
		}
	}

	function JadwalKosong()
	{
		//hari->jam
		$query = "SELECT Nama_Ruangan FROM ruangan;";
		$NamaRuangan = $this->db->query($query);
		$Ruangan = $Nama_Ruangan->result();

		foreach ($Ruangan as $NR) {
			
			$Jadwal[$NR->Nama_Ruangan] = array(//1
					array($NR->Nama_Ruangan, "Senin","07:00 - 09:30", "09:30 - 12:00" , "13:00 - 15:30", "15:30 - 18:00"),
					array($NR->Nama_Ruangan, "Selasa","07:00 - 09:30", "09:30 - 12:00" , "13:00 - 15:30", "15:30 - 18:00"),
					array($NR->Nama_Ruangan, "Rabu","07:00 - 09:30", "09:30 - 12:00" , "13:00 - 15:30", "15:30 - 18:00"),
					array($NR->Nama_Ruangan, "Kamis","07:00 - 09:30", "09:30 - 12:00" , "13:00 - 15:30", "15:30 - 18:00"),
					array($NR->Nama_Ruangan, "Jumat","07:00 - 09:30", "09:30 - 12:00" , "13:00 - 15:30", "15:30 - 18:00")
					);
			$Hari = array("senin","selasa","rabu","kamis","jumat");
			$Jam = array("07:00", "09:30", "13:00","15:30");

			for ($i=0; $i < 5; $i++) 
			{ 
				for ($j=0; $j < 4; $j++) 
				{ 
					$query = "SELECT * FROM jadwal WHERE Kode_Ruangan = '$ruangan' AND Hari = '$Hari[$i]' AND Jam LIKE '$Jam[$j]%'";
					$hasil = $this->db->query($query);
					if($hasil->num_rows() > 0)
					{
						$Jadwal[$i][$j+2] = "X";
					}
				}
			}
		}
		return $Ruangan;
	}

	function AddRequest($data)
	{
		/*$this->db->insert('request',$data);*/
		$nama = $data['Nama'];
		$query = "SELECT Kode_Dosen from dosen WHERE Nama_Dosen = '$nama';";
		$hasil = $this->db->query($query);
		$kode = $hasil->result();
		foreach ($kode as $k) {
			$kode2 = $k->Kode_Dosen;
		}
		$request = $data['Request'];
		$query = "INSERT into pesan (Kode_Dosen, Isi_Pesan) Values('$kode2' , '$request');";
		$hasil = $this->db->query($query);
	}

	function CariKodeRuangan($data)
	{
		$Nama_Ruangan = $data;
		$query = "SELECT Kode_Ruangan FROM ruangan WHERE Nama_Ruangan = '$Nama_Ruangan';";
		$hasil = $this->db->query($query);
		$hasil1 = $hasil->result();
		foreach($hasil1 as $h)
		{
			$Kode_Ruangan = $h->Kode_Ruangan;
		}
		return $Kode_Ruangan;
	}
	function GantiJadwal($data)
	{
		$Kode_Jadwal = $data['Kode_Jadwal'];
		$Hari = $data['Hari'];
		$Jam = $data['Jam'];
		$Ruangan = $data['Ruangan'];
		$Sks = $data['Sks'];

		$query = "UPDATE jadwal Set Hari ='$Hari', Jam = '$Jam', Kode_Ruangan = '$Ruangan', Sks = '$Sks' WHERE Kode_Jadwal = '$Kode_Jadwal';";
		$hasil = $this->db->query($query);
	}

	function EditHari($kode)
	{
		$query = "Select Hari From jadwal Where Kode_Jadwal ='$kode';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function EditJam($kode)
	{
		$query = "Select Jam From jadwal Where Kode_Jadwal ='$kode';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function EditRuangan($kode)
	{
		$query = "SELECT jadwal.Kode_Jadwal, dosen.Nama_Dosen, mata_kuliah.Nama_Mata_Kuliah, jadwal.Hari, jadwal.jam, ruangan.Nama_Ruangan, jadwal.Sks FROM jadwal AS jadwal INNER JOIN dosen AS dosen ON jadwal.Kode_Dosen = dosen.Kode_Dosen INNER JOIN ruangan AS ruangan ON jadwal.Kode_Ruangan = ruangan.Kode_Ruangan INNER JOIN mata_kuliah AS mata_kuliah ON jadwal.Kode_Mata_Kuliah = mata_kuliah.Kode_Mata_Kuliah Where Kode_Jadwal ='$kode';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}

	function EditSks($kode)
	{
		$query = "Select Sks From jadwal Where Kode_Jadwal ='$kode';";
		$hasil = $this->db->query($query);
		return $hasil->result();
	}
}

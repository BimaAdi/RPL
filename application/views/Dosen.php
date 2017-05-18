 <!DOCTYPE html>
<html>
<head>
<title>SRPJD : Sistem Request Penggantian Jadwal Dosen</title>
<link rel="icon" href="<?php echo base_url();?>/asset/logo.png">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="<?php echo base_url();?>css/layout/styles/layout.css" type="text/css" />
<!-- <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/css/bootstrap/css/bootstrap.min.css"> -->
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div class="fl_left">
      <h1><a href="index.html">SISTEM REQUEST GANTI</a></h1>
	  <p>Departemen Pendidikan Ilmu Komputer FPMIPA UPI</p>
    </div>
    <div class="fl_right"><a href="#"><img src="<?php echo base_url()?>/css/images/demo/468x60.gif" alt="" /></a></div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li class="active"><a href="">Home</a></li>
        <!-- <li><a href="#">Master Data</a>
          <ul>
            <li><a href="ruangan.html">Ruangan</a></li>
			<li><a href="dosen.html">Dosen</a></li>
          </ul>
        </li> -->
        <!--<li><a href="pages/style-demo.html">Pengguna Sistem</a></li>-->
		<!-- <li class="active"><a href="admin.html">Admin</a></li>
        <li><a href="matakuliah.html">Mata Kuliah</a></li>
		<li><a href="penjadwalan.html">Penjadwalan</a></li> -->
		<li><a href="<?php echo site_url('RPLController/Logout');?>">Logout</a></li>
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
        <fieldset>
          <legend>Site Search</legend>
          <input type="text" value="Cari..."  onfocus="this.value=(this.value=='Cari...')? '' : this.value ;" />
          <input type="submit" name="go" id="go" value="Search" />
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="home.html">Home</a></li>
      <!-- <li>&#187;</li>
      <li><a href="admin.html">Admin</a></li> -->
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div style="padding-left: 200px;">
  <font size="6"><?php foreach ($Nama as $Name) {
        echo $Name->Nama_Dosen;
      }?></font>  
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      <!-- <a href="tambah_admin.html"><button>Tambah Admin</button></a><br><br> -->
	  
<!--combobox-->	  
<!-- <select>
  <option nama="5" value="10">5</option>
  <option nama="4" value="10">4</option>
  <option nama="3" value="10">3</option>
  <option nama="2" value="10">2</option>
  <option nama="1" value="10">1</option>
</select><br><br>
 -->
<!--search di atas tabel-->
<!-- <form>
  <input class="search" type="text" placeholder="Cari..." required>	
  <input class="button" type="button" value="Cari">		
</form><br>
 -->	  
<p><?php echo $this->session->flashdata('request'); ?></p>
<table border="1" style="background-color: white;" class="highlighted-row ">
<thead>
<tr>
<th width="120px">Mata Kuliah</th>
<th width="10px">Hari</th>
<th width="120px">Jam</th>
<th width="120px">Ruang</th>
<th width="10px">Sks</th>
<!-- <th width="20px">Ganti</th> -->
</tr>
</thead>
<tbody>
<?php
  foreach ($Nama as $Name) {
        $NamaDosen =  $Name->Nama_Dosen;
      }
  foreach ($Data as $All) {
          echo '<tr>';
          echo '<td width="120px">'.$All->Nama_Mata_Kuliah.'</td>';
          echo '<td width="10px">'.$All->Hari.'</td>';
          echo '<td width="80px">'.$All->jam.'</td>';
          echo '<td width="120px">'.$All->Nama_Ruangan.'</td>';
          echo '<td width="10px">'.$All->Sks.'</td>';
          $kode= $All->Kode_Jadwal;
?>
          <!-- <td width="40px" style="color: red;"><a href="<?php echo site_url('RPLController/Edit/'.$kode);?>"><u>Ganti</u></a></td> -->
<?php   
          echo '</tr>';
        } 
?>       
<!-- <tr>

<td><center><button>Edit</button>  <button>Delete</button></center></td>
<td width="10px">1</td>
<td width="120px">dewiarnisari</td>
<td width="120px">1 Mei 2017</td>
</tr>
<tr>
<td><center><button>Edit</button>  <button>Delete</button></center></td>
<td width="10px">2</td>
<td width="120px">bima_adi</td>
<td width="120px">30 April 2017</td>
</tr>
<tr>
<td><center><button>Edit</button>  <button>Delete</button></center></td>
<td width="10px">3</td>
<td width="120px">luvizatnika</td>
<td width="120px">28 April 2017</td>
</tr>
<tr>
<td><center><button>Edit</button>  <button>Delete</button></center></td>
<td width="10px">4</td>
<td width="120px">benget</td>
<td width="120px">20 April 2017</td>
</tr>
<tr>
<td><center><button>Edit</button>  <button>Delete</button></center></td>
<td width="10px">5</td>
<td width="120px">adit_nugraha</td>
<td width="120px">18 April 2017</td>
</tr> -->
</tbody>
</table>
<form action="<?php echo site_url('RPLController/SendRequest');?>" method="POST">
      <div class="form-group">
        <input type="hidden" name="Nama" value="<?php foreach ($Nama as $Name) {
        echo $Name->Nama_Dosen;
      }?>">
        <label for="comment">Request Jadwal:</label><br>
        <textarea cols="90" rows="5"  name="Request"></textarea><br>
        <input type="submit" value="Request">
      </div>
  </form>
<!--<p><b>1</b> of <b>1</b></p>-->
</div>
<!-- ####################################################################################################### -->
    <div id="column">
      <ul id="latestnews">
        <li><img src="<?php echo base_url()?>/css/images/demo/notif.png" width="50" heigth="60" alt="" />
          <p><strong><a href="#">[Judul]</a></strong> ini adalah kotak notifikasi atau berita</p>
        </li>
        <li><img src="<?php echo base_url()?>/css/images/demo/notif.png" width="50" heigth="60" alt="" />
          <p><strong><a href="#">[judul]</a></strong> ini adalah kotak notifikasi atau berita</p>
        </li>
        <li><img src="<?php echo base_url()?>/css/images/demo/notif.png" width="50" heigth="60" alt="" />
          <p><strong><a href="#">[judul]</a></strong> ini adalah kotak notifikasi atau berita</p>
        </li>
       
      </ul>
    </div>
    <br class="clear" />
  </div>
  <br class="clear" />
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left"><center>Indonesia University of Education - Jl. Setiabudi No. 229 Gd. FPIPS, UPI, Isola, Sukasari, Sukasari Bandung, Jawa Barat 40154</center></p>
    
    <br class="clear" />
  </div>
</div>
</body>
</html>
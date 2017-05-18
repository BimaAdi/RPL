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
        <li class="active"><a href="#">Home</a></li>
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
    
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      
<h1>Pesan</h1>
<table border="1" style="background-color: white;" class="highlighted-row ">
<thead>
<tr>
<th width="120px">Nama Dosen</th>
<th width="160px">Request</th>
</tr>
</thead>
<tbody>
<?php
  foreach ($Pesan as $All) {
          echo '<tr>';
          echo '<td width="120px">'.$All->Nama_Dosen.'</td>';
          echo '<td width="160px">'.$All->Isi_Pesan.'</td>';
          echo '</tr>';
        } 
?>
</tbody>
</table>
<!-- change -->
<?php 
  $hari = array("senin","selasa","rabu","kamis","jumat");
  $jam = array("07:00 - 09:30", "09:30 - 12:00", "13:00 - 15:30","15:30 - 18:00");
  $sks = array(2, 3);
?>
<form action="<?php echo site_url('RPLController/Ganti');?>" method="POST">
      <div class="form-group">
        kode Jadwal : <select name="Kode_Jadwal">
         <option value="<?php echo $kode_jadwal?>"><?php echo $kode_jadwal?></option>
          <?php 
            foreach ($Data as $All) {
          ?>
              <option value = "<?php echo $All->Kode_Jadwal;?>"><?php echo $All->Kode_Jadwal; ?></option>;
          <?php 
            }
          ?>
        </select><br>


        Hari : <select name="Hari">
        <?php 
            foreach ($Hari as $All) {
          ?>
              <option value = "<?php echo $All->Hari;?>"><?php echo $All->Hari; ?></option>;
          <?php 
            }
          ?>
          <!-- -->
          <?php 
            for ($i=0; $i < 5; $i++) { 
          ?>
              <option value = "<?php echo $hari[$i];?>"><?php echo $hari[$i];?></option>;
          <?php 
            }
          ?>
        </select><br>


        Jam : <select name="Jam">
        <?php 
            foreach ($Jam as $All) {
          ?>
              <option value = "<?php echo $All->Jam;?>"><?php echo $All->Jam; ?></option>;
          <?php 
            }
          ?>
          <!-- -->
           <?php 
            for ($i=0; $i < 4; $i++) { 
          ?>
              <option value = "<?php echo $jam[$i];?>"><?php echo $jam[$i];?></option>;
          <?php 
            }
          ?>
        </select><br>


        Ruangan : <select name="Ruangan">
         <?php 
            foreach ($ruangan as $All) {
          ?>
              <option value = "<?php echo $All->Nama_Ruangan;?>"><?php echo $All->Nama_Ruangan; ?></option>;
          <?php 
            }
          ?>
          <!-- -->
          <?php 
            foreach ($Data as $All) {
          ?>
              <option value = "<?php echo $All->Nama_Ruangan;?>"><?php echo $All->Nama_Ruangan; ?></option>;
          <?php 
            }
          ?>
        </select><br>


        Sks : <select name="Sks">
        <?php 
            foreach ($Sks as $All) {
          ?>
              <option value = "<?php echo $All->Sks;?>"><?php echo $All->Sks; ?></option>;
          <?php 
            }
          ?>
          <!-- -->
           <?php 
            for ($i=0; $i < 2; $i++) { 
          ?>
              <option value = "<?php echo $sks[$i];?>"><?php echo $sks[$i];?></option>;
          <?php 
            }
          ?>
        </select><br>
        <input type="submit" value="Change">
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
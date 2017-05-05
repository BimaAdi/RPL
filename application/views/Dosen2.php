<!DOCTYPE html>
<html>
<head>
	<title>SRPJD : Sistem Request Penggantian Jadwal Dosen</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/css/styleDosen.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/css/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div id="header">
		<div class="div1">
			<div class="div2"><strong>SISTEM REQUEST PENGANTIAN JADWAL DOSEN</strong></div>
			<div id="logged" class="div3"></div>
		</div>
		<div id="menu">
					<ul class="left">
    			  <li><a href="#" class="top">Jadwal</a></li>
            <li><a href="#" class="top">Jadwal Kosong</a></li>
            <!-- <li><a href="#" class="top">Request Jadwal</a></li> -->
    			  <li><a class="top" href="#">Logout</a></li>
    			</ul>
			
			<ul class="right">
			  <li class="top"><a href="#"></a></li>
			</ul>
				</div>
	</div>

	
<div class="isi"> 
    <h3><?php foreach ($Nama as $Name) {
      echo $Name->Nama_Dosen;
    }?></h3>
    <table border="1" style="background-color: white;" class="highlighted-row "> 
    <thead>
      <tr>
        <th width="120px">Mata Kuliah</th>
        <th width="10px">Hari</th>
        <th width="120px">Jam</th>
        <th width="120px">Ruang</th>
        <th width="10px">Sks</th>
      </tr>
    </thead>
    <tbody>
      <!-- <tr>
        <td>KOMPUTER DAN MASYSRAKAT</td>
        <td>Kamis</td>
        <td>07.50 - 09.30</td>
        <td>B-205 GD.FPMIPA - B</td>
      </tr> -->
      <?php 
        foreach ($Data as $All) {
          echo '<tr>';
          echo '<td width="120px">'.$All->Nama_Mata_Kuliah.'</td>';
          echo '<td width="10px">'.$All->Hari.'</td>';
          echo '<td width="120px">'.$All->jam.'</td>';
          echo '<td width="120px">'.$All->Nama_Ruangan.'</td>';
          echo '<td width="10px">'.$All->Sks.'</td>';
          echo '</tr>';
        }
      ?>
    </tbody>
    </table>
    <form action="" method="POST">
      <div class="form-group">
        <input type="hidden" name="Nama" value="<?php $Nama;?>">
        <label for="comment">Request Jadwal:</label>
        <textarea class="form-control" rows="5" id="comment" name="Request"></textarea><br>
        <input type="submit" value="Request">
      </div>
    </form>
</div>


</body>
</html>
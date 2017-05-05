<!DOCTYPE html>
<html>
<head>
	<title>SRPJD : Sistem Request Penggantian Jadwal Dosen</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>/css/style.css">
</head>
<body>
	<div id="header">
		<div class="div1">
			<div class="div2"><strong>SISTEM REQUEST PENGANTIAN JADWAL DOSEN</strong></div>
			<div id="logged" class="div3"></div>
		</div>
		<div id="menu">
					<ul class="left">
			  <!-- <li><a href="#" class="top">Home</a>
			  </li>
			  <li><a class="top" href="#">Logout</a></li>
			</ul>
			
			<ul class="right">
			  <li class="top"><a href="#"></a></li>
			</ul> -->
		</div>
	</div>

	<form action=<?php echo site_url('RPLController/Login');?> method="post" accept-charset="utf-8">
<div class="box" style="width: 400px; min-height: 300px; margin: 40px auto;">

    <div class="heading">
            <h1>
                        <img alt="" src="<?php echo base_url()?>/asset/lockscreen.png">
                        
                                     GUNAKAN AKUN INTERNET ANDA
                                     
                                             </h1>
                                                 </div>
<div class="content" style="min-height: 150px; overflow: hidden;">
 <table border="0" style="width: 100%;">
           <tbody><tr>
               <td width="120" valign="top" style="text-align: center;" rowspan="4"><img src="<?php echo base_url()?>/asset/login.png" alt="Please enter your login details."></td>
            </tr>
            <tr>
               <td>Username:<br>
			<input type="text" name="username" value=""><br>                <br>
                 Password:<br>
			<input type="password" name="password" value=""><br>	
                <br>
                <input type="submit" name="submit" value="LOGIN" id="submit"> 
		                </td>
            </tr>
            <tr><td colspan="2">
            </td></tr>
</tbody></table>                                                                                                </div></form></div>                                                                                                                   
</body>
</html>
<?php

session_start();
if (!(isset($_SESSION['username']) && isset($_SESSION['password']))) {
    header('location:index.php');
    exit();
} else {
?>
<?php
session_start();
include "../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Hapus pengetahuan
if ($module=='pengetahuan' AND $act=='hapus'){
  mysqli_query($conn,"DELETE FROM basis_pengetahuan WHERE kode_pengetahuan='$_GET[id]'");
  header('location:../../index.php?module='.$module);
}

// Input pengetahuan
elseif ($module=='pengetahuan' AND $act=='input'){
$kode_kerusakan=$_POST[kode_kerusakan];
$kode_gejala=$_POST[kode_gejala];
$mb=$_POST[mb];
$md=$_POST[md];
mysqli_query($conn,"INSERT INTO basis_pengetahuan(
			      kode_kerusakan,kode_gejala,mb,md) 
	                       VALUES(
				'$kode_kerusakan','$kode_gejala','$mb','$md')");
header('location:../../index.php?module='.$module);
}

// Update pengetahuan
elseif ($module=='pengetahuan' AND $act=='update'){
$kode_kerusakan=$_POST[kode_kerusakan];
$kode_gejala=$_POST[kode_gejala];
$mb=$_POST[mb];
$md=$_POST[md];
  mysqli_query($conn,"UPDATE basis_pengetahuan SET
					kode_kerusakan   = '$kode_kerusakan',
					kode_gejala   = '$kode_gejala',
					mb   = '$mb',
					md   = '$md'
               WHERE kode_pengetahuan       = '$_POST[id]'");
  header('location:../../index.php?module='.$module);
 }
 
?>
<?php } ?>
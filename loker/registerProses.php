<?php
session_start();

include "koneksi.php";

//dapatkan data user dari form register
$nama_member = $_POST['nama_member'];
$alamat = $_POST['alamat'];
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$repassword = $_POST['repassword'];

//validasi jika password & password_confirmation sama

if ($password != $repassword) {
	$_SESSION['error'] = 'Password yang anda masukkan tidak sama dengan password confirmation.';
	$_SESSION['username'] = $_POST['username'];
	header("Location:register.php");
	return;
}

$sql	= "INSERT INTO member VALUES('$id_member', '$nama_member' ,'$username', '$password', '$email', '$alamat')";

$query	= mysqli_query($connect, $sql) or die(mysqli_error($connect));

if ($query) {
	header("location:login.php?pesan=register");
} else {
	echo "Input Data Gagal.";
}
?>
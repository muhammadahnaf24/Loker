<?php
	include 'koneksi.php';
    $id_member      = $_POST['id_member'];
	$nama_member	= $_POST['nama_member'];
	$alamat		    = $_POST['alamat'];
	$email	        = $_POST['email'];

	$sql	= "UPDATE member SET nama_member = '$nama_member', alamat = '$alamat', email = '$email' WHERE id_member = '$id_member'";

	$query	= mysqli_query($connect, $sql) or die(mysqli_error($connect));

	if($query) {
		header("location:profilPage.php");
	} else {
		echo "Input Data Gagal.";
	}
?>
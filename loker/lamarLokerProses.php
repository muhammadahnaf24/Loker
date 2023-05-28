<?php
session_start();
include 'koneksi.php';

$nama_pelamar       = $_POST['nama_pelamar'];
$alamat_pelamar     = $_POST['alamat_pelamar'];
$pengalaman         = $_POST['pengalaman'];
$pendidikan         = $_POST['pendidikan'];
$id_pekerjaan       = $_GET['id_pekerjaan'];
$username           = $_SESSION['username'];
$filename           = $_FILES["dokumen"]["name"];
$tempname           = $_FILES["dokumen"]["tmp_name"];
$folder             = "./lamar_img/" . $filename;

$sql = "SELECT * FROM member WHERE username = '$username'";
$query = mysqli_query($connect, $sql);

while ($data = mysqli_fetch_array($query)) {
    $id_member = $data['id_member'];
}

$sql    = "INSERT INTO lamaran VALUES(
                        '$id_member', 
                        '$alamat_pelamar', 
                        '$nama_pelamar', 
                        '$pengalaman', 
                        '$pendidikan', 
                        '$filename', 
                        '$id_pekerjaan')";

$query    = mysqli_query($connect, $sql) or die(mysqli_error($connect));

if ($query && move_uploaded_file($tempname, $folder)) {
    header("location:lamaransaya.php");
} else {
    echo "Input Data Gagal.";
}

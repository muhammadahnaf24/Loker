<?php
session_start();
include 'koneksi.php';
$id_pekerjaan = $_GET['id_pekerjaan'];
$username = $_SESSION['username'];
$sql = "SELECT * FROM member WHERE username = '$username'";
$query    = mysqli_query($connect, $sql);

while ($data = mysqli_fetch_array($query)) {
    $id_member = $data['id_member'];
}
$sql    = "DELETE FROM lamaran WHERE id_pekerjaan = '$id_pekerjaan' AND id_member = '$id_member'";
$query    = mysqli_query($connect, $sql);
if ($query) {
    header("location:lamaranSaya.php?hapus");
} else {
    echo "Proses hapus gagal !";
}
?>
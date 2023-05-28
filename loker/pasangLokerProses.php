<?php
    include 'koneksi.php';
    $nama               = $_POST['nama'];
    $perusahaan         = $_POST['perusahaan'];
    $lokasi             = $_POST['lokasi'];
    $gaji               = $_POST['gaji'];
    $kualifikasi        = $_POST['kualifikasi'];
    $lulusan            = $_POST['lulusan'];
    $status_pekerjaan   = $_POST['status_pekerjaan'];
    $filename = $_FILES["gambar"]["name"];
    $tempname = $_FILES["gambar"]["tmp_name"];
    $folder = "./company_img/" . $filename;


    $sql    = "INSERT INTO pekerjaan VALUES('', '$nama', '$perusahaan', '$lokasi', '$filename')";
    $sql2   = "INSERT INTO informasi VALUES('', '$gaji', '$kualifikasi', '$lulusan', '$status_pekerjaan')";

    $query    = mysqli_query($connect, $sql) or die(mysqli_error($connect));

    if ($query && move_uploaded_file($tempname, $folder)) {
        $input    = mysqli_query($connect, $sql2) or die(mysqli_error($connect));
        header("location:beranda.php?pasang");
    } else {
        echo "Input Data Gagal.";
    }
?>
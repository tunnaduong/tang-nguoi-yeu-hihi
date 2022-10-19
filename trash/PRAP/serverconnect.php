<?php
$maychu = "103.81.85.224";
$tendangnhap = "tunnaduong";
$matkhau = "tunganh2003";
$tendb = "prolunteer";
$db = mysqli_connect($maychu, $tendangnhap, $matkhau, $tendb);
$servername = $maychu;
$username = $tendangnhap;
$password = $matkhau;
$dbname = $tendb;
$conn = new mysqli($servername, $username, $password, $dbname);
$DATABASE_HOST = $maychu;
$DATABASE_USER = $tendangnhap;
$DATABASE_PASS = $matkhau;
$DATABASE_NAME = $tendb;
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
mysqli_set_charset($conn, 'UTF8');
mysqli_set_charset($db, 'UTF8');
mysqli_set_charset($con, 'UTF8');
$link = mysqli_connect($maychu, $tendangnhap, $matkhau, $tendb);
if ($link === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
<?php

$url    = 'http://localhost/jackshop'; //Sesuaikan dengan url project
$db_host = "localhost";
$db_name = "db_jackshop";
$db_user = "root";
$db_pass = "";


$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

 $url = rtrim($url,'/');
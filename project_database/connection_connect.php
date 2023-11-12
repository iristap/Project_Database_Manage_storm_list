<?php
$servername = "localhost";
$username = "db23_140";
$password = "db23_140";
$dbname = "db23_140";
$conn = new mysqli($servername,$username,$password);
mysqli_set_charset($conn, "utf8");
//function เช็คว่าเชื่อมต่อแล้วหรือไม่
if($conn->connect_error){
    die("Connection failed: ".$conn->connect_error);
}
if(!$conn->select_db($dbname)){
    die("Connection failed: ".$conn->connect_error);
}
?>
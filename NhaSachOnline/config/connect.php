<?php
$servername="localhost";
$username="root";
$password="";
$db="nhasachonline";
$conn = new mysqli( $servername, $username, $password, $db );
if( $conn->connect_error ) {
    echo"Kết nỗi bị lỗi". $conn->connect_error;
}


?>
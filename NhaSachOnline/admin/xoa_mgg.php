<?php
// xoa.php

require('../config/connect.php');
mysqli_set_charset($conn, 'utf8');

// Get the id from the URL
$id = $_GET['id'];

// Delete the discount code from the database
$sql = "DELETE FROM giamgia WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $id);

if ($stmt->execute()) {
    echo "Xóa mã giảm giá thành công!";
    header('Location: admin.php?quanly=giamgia'); 
    exit;
} else {
    echo "Xóa thất bại!";
}

$conn->close();
?>
<?php
// sua.php

require('../config/connect.php');
mysqli_set_charset($conn, 'utf8');

// Get the id from the URL
$id = $_GET['id'];

// Fetch current discount code data
$sql = "SELECT * FROM giamgia WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
} else {
    echo "Mã giảm giá không tồn tại!";
    exit;
}

// Handle form submission for updating the discount code
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $maGiamGia = $_POST['maGiamGia'];
    $soTien = $_POST['soTien'];
    $trangThai = $_POST['trangThai'];

    // Update query
    $updateSql = "UPDATE giamgia SET maGiamGia = ?, soTien = ?, trangThai = ? WHERE id = ?";
    $updateStmt = $conn->prepare($updateSql);
    $updateStmt->bind_param('ssii', $maGiamGia, $soTien, $trangThai, $id);

    if ($updateStmt->execute()) {
        echo "Cập nhật thành công!";
        header('Location: admin.php?quanly=giamgia'); // Redirect to the main page
        exit;
    } else {
        echo "Cập nhật thất bại!";
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <title>Chỉnh sửa mã giảm giá</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    form {
        background-color: white;
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        color: #555;
        font-weight: bold;
    }

    input[type="text"],
    select {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }
    </style>
</head>

<body>

    <form method="POST">
        <h2>Chỉnh sửa mã giảm giá</h2>
        <label>Mã giảm giá:</label><br>
        <input type="text" name="maGiamGia" value="<?php echo $row['maGiamGia']; ?>" required><br>

        <label>Số tiền:</label><br>
        <input type="text" name="soTien" value="<?php echo $row['soTien']; ?>" required><br>

        <label>Trạng thái:</label><br>
        <select name="trangThai" required>
            <option value="1" <?php echo $row['trangThai'] == 1 ? 'selected' : ''; ?>>Chưa sử dụng</option>
            <option value="0" <?php echo $row['trangThai'] == 0 ? 'selected' : ''; ?>>Đã sử dụng</option>
        </select><br><br>

        <button type="submit">Lưu</button>
    </form>

    <script>
    document.getElementById('editForm').addEventListener('submit', function(event) {
        // Ngăn form submit ngay lập tức
        event.preventDefault();

        // Lấy giá trị từ các trường input
        var maGiamGia = document.getElementById('maGiamGia').value;
        var soTien = document.getElementById('soTien').value;
        var trangThai = document.getElementById('trangThai').value == 1 ? 'Chưa sử dụng' : 'Đã sử dụng';

        // Hiển thị thông báo với mã giảm giá đã được cập nhật
        alert("Mã giảm giá: " + maGiamGia + "\nSố tiền: " + soTien + "\nTrạng thái: " + trangThai);

        // Sau khi thông báo, tiếp tục gửi form
        this.submit();
    });
    </script>
</body>

</html>
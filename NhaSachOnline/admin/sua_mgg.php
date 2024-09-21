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
        header('Location:admin.php?quanly=giamgia'); // Redirect to the main page
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
</head>

<body>
    <h2>Chỉnh sửa mã giảm giá</h2>
    <form method="POST">
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
</body>

</html>
<div class="giamgia">
    <table class="table-header">
        <tr>
            <th style="width: 5%;background-color: yellow;">ID</th>
            <th style="width: 7%;background-color: yellow;">Mã giảm giá</th>
            <th style="width: 10%;background-color: yellow;">Số tiền</th>
            <th style="width: 5%;background-color: yellow;">Trạng thái</th>
            <th style="width: 15%;background-color: yellow;">Hành động</th>
        </tr>
        <?php
        require('../config/connect.php');
        mysqli_set_charset($conn, 'utf8');

        // Lấy dữ liệu từ bảng giamgia
        $sql = "SELECT * FROM giamgia ORDER BY id ASC";
        $result = $conn->query($sql);

        // Kiểm tra kết quả truy vấn
        if ($result && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td style='text-align: center;'>".$row['id']."</td>
                    <td style='text-align: center;'>".$row['maGiamGia']."</td>
                    <td style='text-align: center;'>".$row['soTien']."</td>
                    <td style='text-align: center;'>".($row['trangThai'] == 1 ? 'Chưa sử dụng' : 'Đã sử dụng')."</td>
                    <td style='text-align: center;'>
                        <a href='sua_mgg.php?id=".$row['id']."'><i style='color:blue;font-size:1.4em' class='fa fa-pencil'></i></a> |
                        <a href='xoa_mgg.php?id=".$row['id']."' onclick=\"return confirm('Bạn có chắc chắn muốn xóa không?')\"><i style='color:red;font-size:1.4em' class='fa fa-trash-o'></i></a>
                    </td>
                </tr>";
            }
        } else {
            echo "<tr><td colspan='6' style='text-align: center;'>Không có dữ liệu</td></tr>";
        }

        // Đóng kết nối cơ sở dữ liệu
        $conn->close();
        ?>
    </table>
</div>

<!-- Thêm form thêm mã giảm giá -->
<div class="add-discount">
    <h3>Thêm mã giảm giá mới</h3>
    <form method="POST" action="">
        <label for="maGiamGia">Mã giảm giá:</label><br>
        <input type="text" id="maGiamGia" name="maGiamGia" required><br><br>

        <label for="soTien">Số tiền giảm:</label><br>
        <input type="number" id="soTien" name="soTien" required><br><br>

        <label for="trangThai">Trạng thái:</label><br>
        <select id="trangThai" name="trangThai">
            <option value="1">Chưa sử dụng</option>
            <option value="0">Đã sử dụng</option>
        </select><br><br>

        <button type="submit" name="addDiscount">Thêm mã giảm giá</button>
    </form>
</div>

<?php
if (isset($_POST['addDiscount'])) {
    $maGiamGia = $_POST['maGiamGia'];
    $soTien = $_POST['soTien'];
    $trangThai = $_POST['trangThai'];

    require('../config/connect.php');
    
    $check_sql = "SELECT * FROM giamgia WHERE maGiamGia = '$maGiamGia'";
    $check_result = $conn->query($check_sql);

    if ($check_result->num_rows > 0) {
        echo "<script>alert('Mã giảm giá đã tồn tại');</script>";
    } else {
        $insert_sql = "INSERT INTO giamgia (maGiamGia, soTien, trangThai) VALUES ('$maGiamGia', '$soTien', '$trangThai')";
        if ($conn->query($insert_sql) === TRUE) {
            echo "<script>alert('Thêm mã giảm giá thành công'); window.location.href='admin.php?quanly=giamgia';</script>";
        } else {
            echo "Lỗi: " . $insert_sql . "<br>" . $conn->error;
        }
    }
}
?>
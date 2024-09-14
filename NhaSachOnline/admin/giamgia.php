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
                        <a href='sua.php?id=".$row['id']."'>Sửa</a> |
                        <a href='xoa.php?id=".$row['id']."' onclick=\"return confirm('Bạn có chắc chắn muốn xóa không?')\">Xóa</a>
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

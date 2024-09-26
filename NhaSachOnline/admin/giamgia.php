<head>
    <style>
    /* Thêm một ít CSS cho đẹp */
    .giamgia {
        width: 80%;
        margin: 0 auto;
    }

    .table-header {
        width: 100%;
        border-collapse: collapse;
    }

    .table-header th,
    .table-header td {
        border: 1px solid black;
        padding: 10px;
    }

    button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }

    button:hover {
        background-color: #45a049;
    }

    form {
        margin-top: 20px;
    }

    form input,
    form select {
        padding: 10px;
        width: 100%;
        margin-bottom: 10px;
    }

    form button {
        width: auto;
    }

    input {
        width: 20%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    select {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    </style>
</head>
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
        <button id="addDiscountBtn" style="margin-bottom: 20px; background-color: #f28022; margin-top: 20px;">Thêm mã
            giảm giá</button>

        <?php
require('../config/connect.php');
mysqli_set_charset($conn, 'utf8');

// Xử lý thêm mã giảm giá nếu form được submit
if (isset($_POST['addDiscount'])) {
    $maGiamGia = $_POST['maGiamGia'];
    $soTien = $_POST['soTien'];
    $trangThai = $_POST['trangThai'];

    // Kiểm tra nếu mã giảm giá đã tồn tại
    $check_sql = "SELECT * FROM giamgia WHERE maGiamGia = '$maGiamGia'";
    $check_result = $conn->query($check_sql);

    if ($check_result->num_rows > 0) {
        echo "<script>alert('Mã giảm giá đã tồn tại');</script>";
    } else {
        // Thêm mã giảm giá mới vào bảng giamgia
        $insert_sql = "INSERT INTO giamgia (maGiamGia, soTien, trangThai) VALUES ('$maGiamGia', '$soTien', '$trangThai')";
        if ($conn->query($insert_sql) === TRUE) {
            echo "<script>alert('Thêm mã giảm giá thành công'); window.location.href='admin.php?quanly=giamgia';</script>";
        } else {
            echo "Lỗi: " . $insert_sql . "<br>" . $conn->error;
        }
    }
}
?>
        <!-- Form thêm mã giảm giá, ẩn khi mới load trang -->
        <div id="addDiscountForm" style="display: none; margin-top: 20px;">
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

                <button type="submit" name="addDiscount" style="margin-bottom: 30px;">Thêm mã giảm giá</button>
            </form>
        </div>

        <script>
        document.getElementById('addDiscountBtn').addEventListener('click', function() {
            var form = document.getElementById('addDiscountForm');
            if (form.style.display === 'none') {
                form.style.display = 'block';
            } else {
                form.style.display = 'none';
            }
        });
        </script>
    </table>
</div>
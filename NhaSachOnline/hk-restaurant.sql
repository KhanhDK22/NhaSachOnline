-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hk-restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `about_id` varchar(10) NOT NULL,
  `about_img1` varchar(200) NOT NULL,
  `about_img2` varchar(200) NOT NULL,
  `about_img3` varchar(200) NOT NULL,
  `about_title` varchar(100) NOT NULL,
  `about_detail` text NOT NULL,
  `about_time` date NOT NULL DEFAULT current_timestamp(),
  `trang_thai` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `numberphone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `numberphone`) VALUES
('admin', 'admin@123', '0967851017');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ct_id` varchar(10) NOT NULL,
  `ct_name` varchar(50) NOT NULL,
  `ct_email` varchar(100) NOT NULL,
  `ct_numberphone` varchar(15) NOT NULL,
  `ct_problem` varchar(150) NOT NULL,
  `ct_detail` text NOT NULL,
  `ct_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ct_id`, `ct_name`, `ct_email`, `ct_numberphone`, `ct_problem`, `ct_detail`, `ct_time`) VALUES
('oBy9B', 'Hà Mạnh Kiên', 'nguyenvulam2606@gmail.com', '0967851017', 'Đồ ăn của cửa hàng         ', ' Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI Anh là anh toàn AI ', '2023-12-25 10:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `id` int(11) NOT NULL,
  `maGiamGia` varchar(10) DEFAULT NULL,
  `soTien` int(11) DEFAULT NULL,
  `trangThai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`id`, `maGiamGia`, `soTien`, `trangThai`) VALUES
(1, 'MGG603', 20000, 1),
(2, 'MGG990', 30000, 0),
(3, 'MGG395', 15000, 1),
(4, 'MGG597', 20000, 1),
(5, 'MGG801', 30000, 1),
(6, 'MGG845', 15000, 1),
(7, 'MGG856', 20000, 0),
(8, 'MGG659', 30000, 1),
(9, 'MGG830', 150000, 0),
(10, 'MGG832', 20000, 1),
(11, 'MGG342', 30000, 0),
(12, 'MGG024', 15000, 1),
(13, 'MGG379', 20000, 0),
(14, 'MGG995', 30000, 0),
(15, 'MGG505', 15000, 1),
(16, 'MGG638', 20000, 0),
(17, 'MGG578', 30000, 1),
(18, 'MGG244', 15000, 0),
(19, 'MGG432', 20000, 0),
(20, 'MGG023', 30000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(11) NOT NULL,
  `oder_username` varchar(100) NOT NULL,
  `oder_prd` varchar(150) NOT NULL,
  `oder_quantity` int(11) NOT NULL,
  `type_pay` varchar(150) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `order_status` varchar(150) NOT NULL,
  `order_total` varchar(15) DEFAULT NULL,
  `order_address` varchar(250) DEFAULT NULL,
  `Image_bank` varchar(200) NOT NULL,
  `ghi_chu` varchar(150) NOT NULL,
  `trang_thai` varchar(150) NOT NULL DEFAULT 'Đơn mới'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `oder_username`, `oder_prd`, `oder_quantity`, `type_pay`, `order_date`, `order_status`, `order_total`, `order_address`, `Image_bank`, `ghi_chu`, `trang_thai`) VALUES
('B5klN', 'manhkien', 'Cá chép om dưa', 1, 'Thanh toán khi nhận hàng', '2024-01-06 01:13:00', '', '400000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', 'Thanh toán 100% khi nhận hàng', 'Đã Hủy'),
('I59Zn', 'manhkien', 'Bò Bít Tết', 1, 'Thanh toán khi nhận hàng', '2024-01-06 01:13:00', '', '300000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', 'Thanh toán 100% khi nhận hàng', 'Đã Hủy'),
('IVZRY', 'manhkien', 'Cá chép om dưa', 1, 'Thanh toán khi nhận hàng', '2024-01-06 01:12:40', '', '400000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', 'Thanh toán 100% khi nhận hàng', 'Đã Hủy'),
('JxGrx', 'Kiênpr0123', 'Thanh long trắng', 1, 'Thanh toán khi nhận hàng', '2023-12-25 10:22:03', '', '50,000.00', 'hà manh kiên, 0866539033, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', '', 'Giao hàng thành công'),
('kcfUe', 'Kiênpr0123', 'Cam siêu ngọt', 1, 'Thanh toán khi nhận hàng', '2023-12-25 10:22:03', '', '150,000.00', 'hà manh kiên, 0866539033, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', '', 'Đơn mới'),
('KL5kK', 'manhkien', 'Cá chép om dưa', 8, 'Đã thanh toán', '2024-01-06 03:09:07', '', '3200000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', 'lợn quay.jpg', 'Đã thanh toán 100%', 'Đơn mới'),
('LrHiN', 'Kiênpr0123', 'Cá chép om dưa', 1, 'Thanh toán khi nhận hàng', '2023-12-25 10:22:03', '', '400,000.00', 'hà manh kiên, 0866539033, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', '', 'Giao hàng thành công'),
('sp7ru', 'manhkien', 'Cá chép om dưa', 90, 'Thanh toán khi nhận hàng', '2024-01-06 01:14:48', '', '36000000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', 'Thanh toán 100% khi nhận hàng', 'Đã Hủy'),
('uIYCg', 'manhkien', 'Cá chép om dưa', 10, 'Thanh toán khi nhận hàng', '2024-01-06 01:13:56', '', '4000000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', 'Thanh toán 100% khi nhận hàng', 'Đã Hủy'),
('Va6Jq', 'manhkien', 'Cá chép om dưa', 15, 'Thanh toán khi nhận hàng', '2024-01-06 01:13:29', '', '6000000', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', 'Thanh toán 100% khi nhận hàng', 'Đã Hủy'),
('vQTIF', 'Kiênpr0123', 'Dâu Tây', 1, 'Thanh toán khi nhận hàng', '2023-12-25 10:22:03', '', '50,000.00', 'hà manh kiên, 0866539033, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang', '', '', 'Đơn mới');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prd_id` varchar(15) NOT NULL,
  `prd_name` varchar(150) NOT NULL,
  `prd_detail` text NOT NULL,
  `prd_price` decimal(15,2) NOT NULL,
  `prd_quantity` int(11) NOT NULL,
  `prd_img` varchar(200) DEFAULT NULL,
  `prd_category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prd_id`, `prd_name`, `prd_detail`, `prd_price`, `prd_quantity`, `prd_img`, `prd_category`) VALUES
('DA01', '\"Đắc Nhân Tâm\" - Dale Carnegie:', '\"Atomic Habits\" (Thói quen tốt) - James Clear: Cách xây dựng và duy trì thói quen tốt trong cuộc sống.', 300000.00, 50, 'đắc nhân tâm.jpg', 'Phát triển bản thân'),
('DA02', 'Bò Bít Tết', 'Bò Bít Tết', 300000.00, 54, 'bò bit tết.jpg', 'Đồ ăn'),
('DA03', 'Bò hầm rau củ', 'Bò hầm rau củ', 200000.00, 35, 'bò hầm rau củ.jpg', 'Đồ ăn'),
('DA04', 'Bún bò Huế', 'Bún bò huế nổi tiếng xứ Huế', 50000.00, 19, 'bun-bo-1.jpg', 'Đồ ăn'),
('DA05', 'Bánh xèo Hà Nội', 'bánh xèo', 75000.00, 40, 'bánh xeo.jpg', 'Đồ ăn'),
('DA06', 'Gà đồi chiên mắm tỏi', 'Gà đồi chiên mắm tỏi', 300000.00, 109, 'gà chiên mắm tỏi.jpg', 'Đồ ăn'),
('DU01', '7 Up', '7up', 15000.00, 17, '7 up.jpg', 'Đồ uống'),
('DU02', 'Coca', 'Coca-Cola (hay còn gọi là Coca, Coke) là một thương hiệu nước ngọt có ga chứa nước cacbon dioxide bão hòa được sản xuất bởi Công ty Coca-Cola. Coca-Cola được điều chế bởi dược sĩ John Pemberton vào cuối thế kỷ XIX với mục đích ban đầu là trở thành một loại biệt dược.', 15000.00, 16, 'cacacola.png', 'Đồ uống'),
('DU03', 'Rượu Nếp', 'Rượu nếp quê là rượu được ủ từ gạo nếp và được chưng cất theo phương pháp gia truyền. Không chỉ là đồ uống, rượu nếp cũng được dùng rất nhiều trong nấu ăn. Đây cũng là loại gia vị có chức năng khử mùi hiệu quả.', 50000.00, 85, 'rượu nếp.png', 'Đồ uống'),
('DU04', 'Rươu vang Chile', 'Rươu vang Chile', 170000.00, 115, 'rượu vang đỏ chile.jpg', 'Đồ ăn'),
('DU05', 'Rượu ngô Tây Bắc', 'Rượu ngô Tây Bắc', 60000.00, 114, 'rượu ngô.jpg', 'Đồ uống'),
('DU06', 'Rượu mơ ', 'Rượu mơ -đậm đà từng ly', 75000.00, 48, 'rượu mơ.jpeg', 'Đồ uống'),
('TM01', 'Cam siêu ngọt', 'Cam siêu ngọt', 150000.00, 17, 'cam.jpg', 'Tráng miệng'),
('TM02', 'Dâu Tây', 'quả đỏ, mọng nước, hương thơm mùi kẹo ngọt và có vị ngọt thanh đậm đà, khác với tất cả các loại dâu khác đang được trồng tại Đà Lạt và vùng lân cận hiện nay: Dâu tây nhật Đà Lạt – mê hoặc từ vị ngon! Dâu tây Nhật được xem là giống dâu cao cấp hiện nay được trồng tại Đà Lạt.', 50000.00, 40, 'dâu tây.jpg', 'Tráng miệng'),
('TM03', 'Dưa Hấu', 'đa dạng về hình dạng và màu sắc, thường có màu xanh nhạt và có những đường kẻ từ trên xuống dưới. Hình dạng được xem xét với mặt phẳng cắt ngang từ cuống trái đến đuôi trái dưa. Có các dạng chính sau: dạng thuôn dài, dạng trái oval, dạng trái tròn. Hạt dưa cũng rất đa dạng về kích cỡ (lớn, trung bình, nhỏ).', 45000.00, 65, 'dưa hấu.jpg', 'Tráng miệng'),
('TM04', 'Thanh long trắng', 'Thanh long trắng', 50000.00, 19, 'thanh long.jpg', 'Tráng miệng'),
('TM05', 'Kem dâu', 'Kem dâu -với dâu tây xay nguyên chất 100%', 18000.00, 60, 'kem dâu.jpg', 'Tráng miệng'),
('TM06', 'Dưa leo', 'Dưa leo bổ dọc', 15000.00, 20, 'dưa leo.jpg', 'Tráng miệng');

-- --------------------------------------------------------

--
-- Table structure for table `sp_noibat`
--

CREATE TABLE `sp_noibat` (
  `sp_id` varchar(15) NOT NULL,
  `sp_name` varchar(150) NOT NULL,
  `sp_image` varchar(200) NOT NULL,
  `sp_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_noibat`
--

INSERT INTO `sp_noibat` (`sp_id`, `sp_name`, `sp_image`, `sp_price`) VALUES
('DA02', 'Bò Bít Tết', 'bò bit tết.jpg', 300000.00),
('DA03', 'Bò hầm rau củ', 'bò hầm rau củ.jpg', 200000.00),
('DA04', 'Bún bò Huế', 'bun-bo-1.jpg', 50000.00),
('DA05', 'Bánh xèo Hà Nội', 'bánh xeo.jpg', 75000.00),
('DA06', 'Gà đồi chiên mắm tỏi', 'gà chiên mắm tỏi.jpg', 300000.00),
('DU01', '7 Up', '7 up.jpg', 15000.00),
('DU02', 'Coca', 'cacacola.png', 15000.00),
('DU03', 'Rượu Nếp', 'rượu nếp.png', 50000.00),
('DU04', 'Rươu vang Chile', 'rượu vang đỏ chile.jpg', 170000.00),
('DU05', 'Rượu ngô Tây Bắc', 'rượu ngô.jpg', 60000.00),
('DU06', 'Rượu mơ ', 'rượu mơ.jpeg', 75000.00),
('TM01', 'Cam siêu ngọt', 'cam.jpg', 150000.00),
('TM02', 'Dâu Tây', 'dâu tây.jpg', 50000.00),
('TM04', 'Thanh long trắng', 'thanh long.jpg', 50000.00),
('TM05', 'Kem dâu', 'kem dâu.jpg', 18000.00),
('TM06', 'Dưa leo', 'dưa leo.jpg', 15000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `numberphone` varchar(15) NOT NULL,
  `address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `numberphone`, `address`) VALUES
('Kiênpr0123', '2042003K', '0975562225', 'hà manh kiên, 0866539033, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang'),
('manhkien', '2042003K', '0967851017', 'hà manh kiên, 0865544662, Thôn quyền ,ngọc sơn hiệp hòa ,bắc giang'),
('manhkien1', '2042003K', '0967851017', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `oder_username` (`oder_username`),
  ADD KEY `product_id` (`oder_prd`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prd_id`);

--
-- Indexes for table `sp_noibat`
--
ALTER TABLE `sp_noibat`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`oder_username`) REFERENCES `users` (`username`);

--
-- Constraints for table `sp_noibat`
--
ALTER TABLE `sp_noibat`
  ADD CONSTRAINT `sp_noibat_ibfk_1` FOREIGN KEY (`sp_id`) REFERENCES `products` (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

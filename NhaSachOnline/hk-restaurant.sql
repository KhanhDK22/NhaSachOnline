-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2024 at 06:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
  `about_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `about_img1` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `about_img2` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `about_img3` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `about_title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `about_detail` text COLLATE utf8mb4_general_ci NOT NULL,
  `about_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` varchar(25) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `numberphone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `ct_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `ct_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ct_email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `ct_numberphone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `ct_problem` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `ct_detail` text COLLATE utf8mb4_general_ci NOT NULL,
  `ct_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`ct_id`, `ct_name`, `ct_email`, `ct_numberphone`, `ct_problem`, `ct_detail`, `ct_time`) VALUES
('AKfMl', 'Nguyễn Hồng Hà', 'ha2k3.dev@gmail.com', '0862088336', 'Đánh giá trang web của bạn', 'Giao diện của trang web rất thân thiện và dễ sử dụng. Tìm kiếm sách nhanh chóng và kết quả tìm kiếm khá chính xác. Tuy nhiên, tôi gặp khó khăn khi thanh toán vì giao diện thanh toán chưa thực sự rõ ràng.', '2024-09-14 09:24:34'),
('ChMZr', 'Đào Anh Khánh', 'ha2k3.dev@gmail.comH', '0654532154122', 'Đánh giá trang web của bạn', 'Tôi rất ấn tượng với sự đa dạng của các đầu sách trên trang web này. Chất lượng dịch vụ giao hàng cũng rất tốt, sách đến tay tôi nhanh chóng và trong tình trạng hoàn hảo.', '2024-09-14 09:25:13'),
('N0cCl', 'Hoàng Anh Kiệt', '999grrrdev@gmail.comH', '0654532154126', 'Đánh giá trang web của bạn', 'Trang web có nhiều chức năng hữu ích, nhưng tốc độ tải trang hơi chậm. Hy vọng đội ngũ kỹ thuật có thể cải thiện điều này trong tương lai.\"', '2024-09-14 09:26:04'),
('FlHXz', 'Tạ Duyên Hải', 'haikkkk@gmail.comH', '06546664122', 'Đánh giá trang web của bạn', 'Trang web có nhiều chức năng hữu ích, nhưng tốc độ tải trang hơi chậm. Hy vọng đội ngũ kỹ thuật có thể cải thiện điều này trong tương lai.\"', '2024-09-14 09:26:42'),
('iTsrt', 'Đinh Thành Long', 'llooooggggv@gmail.comH', '0862088336', 'Đánh giá trang web của bạn', 'Giao diện của trang web rất thân thiện và dễ sử dụng. Tìm kiếm sách nhanh chóng và kết quả tìm kiếm khá chính xác. Tuy nhiên, tôi gặp khó khăn khi thanh toán vì giao diện thanh toán chưa thực sự rõ ràng.', '2024-09-14 09:27:13'),
('CZWEF', 'Thái Thị Thùy Trang', 'hgtggggev@gmail.comH', '06546664122', 'Đánh giá trang web của bạn', 'Giao diện của trang web rất thân thiện và dễ sử dụng. Tìm kiếm sách nhanh chóng và kết quả tìm kiếm khá chính xác. Tuy nhiên, tôi gặp khó khăn khi thanh toán vì giao diện thanh toán chưa thực sự rõ ràng.', '2024-09-14 09:27:58'),
('NK7v2', 'Nguyễn Hồng Hà', 'ha2k3.dev@gmail.comH', '0654532154122', 'Đánh giá trang web của bạn', 'Tôi rất ấn tượng với sự đa dạng của các đầu sách trên trang web này. Chất lượng dịch vụ giao hàng cũng rất tốt, sách đến tay tôi nhanh chóng và trong tình trạng hoàn hảo.', '2024-09-14 09:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `id` int NOT NULL,
  `maGiamGia` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `soTien` int DEFAULT NULL,
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
  `order_id` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `oder_username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `oder_prd` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `oder_quantity` int NOT NULL,
  `type_pay` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `order_total` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Image_bank` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `ghi_chu` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `trang_thai` varchar(150) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Đơn mới'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `oder_username`, `oder_prd`, `oder_quantity`, `type_pay`, `order_date`, `order_status`, `order_total`, `order_address`, `Image_bank`, `ghi_chu`, `trang_thai`) VALUES
('w24yE', 'hadeboss', 'Đắc nhân tâm', 2, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:30', 'ok', '98', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('7iGm3', 'hadeboss', 'Atomic Habits', 2, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:30', 'ok', '596.8', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('lyIz3', 'hadeboss', '7 Thói Quen Hiệu Quả', 1, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:30', 'ok', '397.32', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('o7RbE', 'hadeboss', '\"Dám Bị Ghét\" - Ichiro Kishimi & Fumitake Koga', 4, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:30', 'ok', '380.8', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('llGnK', 'hadeboss', '7 Thói Quen Hiệu Quả', 1, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:51', '', '397.32', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('nnoUk', 'hadeboss', 'Atomic Habits', 2, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:51', '', '596.8', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('5y8jo', 'hadeboss', '\"The Power of Now\" - Eckhart Tolle', 1, 'Thanh toán khi nhận hàng', '2024-09-14 09:20:51', '', '146.16', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('JZeQK', 'admin', 'Đắc nhân tâm', 4, 'Thanh toán khi nhận hàng', '2024-09-17 05:39:02', '', '196', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('EJiQp', 'admin', 'Atomic Habits', 1, 'Thanh toán khi nhận hàng', '2024-09-17 09:57:38', 'trả bằng tình cảm nhé', '298.4', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đã duyệt'),
('Qe7Gx', 'admin', 'Đắc nhân tâm', 1, 'Thanh toán khi nhận hàng', '2024-09-17 09:57:38', 'trả bằng tình cảm nhé', '49', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('U4Man', 'hadeboss', '\"Tâm lý học đám đông\" - Gustave Le Bon', 1, 'Thanh toán khi nhận hàng', '2024-09-17 12:02:05', 'ok', '111500', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đang vận chuyển'),
('egW7x', 'hadeboss', '\"Thinking, Fast and Slow\" - Daniel Kahneman', 1, 'Thanh toán khi nhận hàng', '2024-09-17 12:02:05', 'ok', '150000', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prd_id` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `prd_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `prd_detail` text COLLATE utf8mb4_general_ci NOT NULL,
  `prd_price` decimal(15,2) NOT NULL,
  `prd_quantity` int NOT NULL,
  `prd_img` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prd_category` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prd_id`, `prd_name`, `prd_detail`, `prd_price`, `prd_quantity`, `prd_img`, `prd_category`) VALUES
('DA01', '\"Đắc Nhân Tâm\" - Dale Carnegie', 'Hướng dẫn cách tương tác và thuyết phục người khác một cách hiệu quả.', 49000.00, 25, 'đắc nhân tâm.jpg', 'Phát triển bản thân'),
('DA02', '\"Atomic Habits\" (Thói quen tốt) - James Clear', 'Cách xây dựng và duy trì thói quen tốt trong cuộc sống.', 298400.00, 12, 'Atomic Habits.png', 'Phát triển bản thân'),
('DA03', '\"7 Thói Quen Hiệu Quả\" - Stephen R. Covey', '\"7 Thói Quen Hiệu Quả\" - Stephen R. Covey', 397320.00, 34, '7 Thói Quen Hiệu Quả.jpg', 'Phát triển bản thân'),
('DA04', '\"Nhà Giả Kim\" - Paulo Coelho', 'Câu chuyện về hành trình khám phá bản thân đầy cảm hứng.', 111500.00, 45, 'download.jpg', 'Phát triển bản thân'),
('DA05', '\"Dám Bị Ghét\" - Ichiro Kishimi & Fumitake Koga', 'Sách về tư duy Adlerian và việc chấp nhận bản thân.', 95200.00, 28, 'Dám Bị Ghét.png', 'Phát triển bản thân'),
('DA06', '\"The Power of Now\" (Sức mạnh của hiện tại) - Eckhart Tolle', 'Sách về cách sống trong hiện tại để đạt được bình an nội tâm', 146160.00, 45, 'The Power of Now.jpg', 'Phát triển bản thân'),
('DU01', '\"Sapiens: Lược Sử Loài Người\" - Yuval Noah Harari', 'Khám phá lịch sử và tâm lý con người từ thời tiền sử đến hiện đại.', 127000.00, 21, 'Sapiens Lược Sử Loài Người.png', 'Tâm lý - Xã hội'),
('DU02', '\"Thinking, Fast and Slow\" - Daniel Kahneman', 'Phân tích cách con người ra quyết định và những lỗi tư duy thường gặp.', 150000.00, 53, 'Thinking.jpg', 'Tâm lý - Xã hội'),
('DU03', '\"Tâm lý học đám đông\" - Gustave Le Bon', 'Phân tích tâm lý và hành vi của đám đông trong xã hội.', 397320.00, 12, 'Tâm lý học đám đông.png', 'Tâm lý - Xã hội'),
('DU04', '\"Influence: The Psychology of Persuasion\" (Tâm lý học thuyết phục) - Robert Cialdini', 'Những nguyên lý tâm lý khiến con người dễ bị thuyết phục.', 111500.00, 31, 'Tâm lý học thuyết phục.jpg', 'Tâm lý - Xã hội'),
('DU05', '\"The Social Animal\" (Con thú xã hội) - Elliot Aronson', 'ác phẩm kinh điển về tâm lý học xã hội.', 472000.00, 44, 'con thú xã hội.png', 'Tâm lý - Xã hội'),
('DU06', 'ác phẩm kinh điển về tâm lý học xã hội.', 'Nghiên cứu về các yếu tố tạo nên sự thành công vượt bậc.', 113500.00, 3, 'những kẻ xuất chúng.jpg', 'Tâm lý - Xã hội'),
('TM01', '\"Cha Giàu, Cha Nghèo\" - Robert Kiyosaki', 'Những bài học về tư duy tài chính và làm giàu.', 490000.00, 55, 'cha giàu, cha nghèo.jpg', ' Kinh tế - Kinh doanh'),
('TM02', '\"The Lean Startup\" - Eric Ries', 'Hướng dẫn cách khởi nghiệp thành công trong thế giới kinh doanh hiện đại.', 132000.00, 7, 'The Lean Startup.jpg', ' Kinh tế - Kinh doanh'),
('TM03', '\"Tư duy triệu phú\" - T. Harv Eker', 'Khám phá sự khác biệt trong tư duy của người giàu và người nghèo.', 108000.00, 9, 'tư duy triệu phú.jpg', ' Kinh tế - Kinh doanh'),
('TM04', '\"Good to Great\" (Từ tốt đến vĩ đại) - Jim Collins', 'Nghiên cứu về cách các công ty chuyển từ thành công bình thường đến xuất sắc.', 99000.00, 43, 'từ tốt đến vĩ đại.jpg', ' Kinh tế - Kinh doanh'),
('TM05', '\"The 4-Hour Workweek\" (Tuần làm việc 4 giờ) - Timothy Ferriss', 'Phương pháp tạo thu nhập thụ động và làm việc ít nhưng hiệu quả.', 472000.00, 44, 'tuần làm việc 4 giờ.jpg', ' Kinh tế - Kinh doanh');

-- --------------------------------------------------------

--
-- Table structure for table `sp_noibat`
--

CREATE TABLE `sp_noibat` (
  `sp_id` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `sp_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sp_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sp_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_noibat`
--

INSERT INTO `sp_noibat` (`sp_id`, `sp_name`, `sp_image`, `sp_price`) VALUES
('DA01', 'Đắc nhân tâm', 'đắc nhân tâm.jpg', 49000.00),
('DA02', 'Atomic Habits', 'Atomic Habits.png', 298400.00),
('DA03', '7 Thói Quen Hiệu Quả', '7 Thói Quen Hiệu Quả.jpg', 397320.00),
('DA04', 'Tâm lý học đám đông', 'download.jpg', 111500.00),
('DA05', 'Dám Bị Ghét', 'Dám Bị Ghét.png', 95200.00),
('DA06', 'The Power of Now', 'The Power of Now.jpg', 146160.00),
('DU01', 'Sapiens: Lược Sử Loài Người', 'Sapiens Lược Sử Loài Người.png', 127000.00),
('DU02', 'Thinking, Fast and Slow', 'Thinking.jpg', 150000.00),
('DU03', 'Influence: The Psychology of Persuasion', 'tâm lý học thuyết phục.jfif', 397320.00),
('DU04', 'The 4-Hour Workweek', 'tuần làm việc 4 giờ.jfif', 169000.00),
('DU05', 'Outliers: The Story of Success', 'những kẻ xuất chúng.jfif', 472000.00),
('DU06', 'Cha Giàu, Cha Nghèo', 'cha giàu, cha nghèo.jfif', 113500.00),
('TM01', 'The Lean Startup', 'The Lean Startup', 490000.00),
('TM02', 'Tư duy triệu phú', 'tư duy triệu phú.jfif', 132000.00),
('TM03', 'Good to Great', 'từ tốt đến vĩ đại.jfif', 108000.00),
('TM04', 'The 4-Hour Workweek', 'tuần làm việc 4 giờ.jfif', 99000.00),
('TM05', 'The Intelligent Investor', 'nhà đầu tư thông minh.jfif', 472000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `numberphone` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `numberphone`, `address`) VALUES
('hadeboss', 'Hade1234@', '0862-60969696', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_noibat`
--
ALTER TABLE `sp_noibat`
  ADD PRIMARY KEY (`sp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 10:50 AM
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
-- Database: `nhasachonline`
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
  `about_time` timestamp NOT NULL DEFAULT current_timestamp(),
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
  `id` int(11) NOT NULL,
  `maGiamGia` varchar(10) DEFAULT NULL,
  `soTien` int(11) DEFAULT NULL,
  `trangThai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`id`, `maGiamGia`, `soTien`, `trangThai`) VALUES
(4, 'MGG597', 20000, 1),
(5, 'MGG801', 30000, 1),
(6, 'MGG845', 15000, 1),
(7, 'MGG856', 20000, 0),
(8, 'MGG659', 30000, 1),
(9, 'MGG830', 150000, 1),
(10, 'MGG832', 20000, 1),
(12, 'MGG024', 15000, 1),
(13, 'MGG379', 20000, 0),
(14, 'MGG995', 30000, 0),
(15, 'MGG505', 15000, 1),
(16, 'MGG638', 20000, 1),
(21, 'MGG608', 30000, 1);

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
('egW7x', 'hadeboss', '\"Thinking, Fast and Slow\" - Daniel Kahneman', 1, 'Thanh toán khi nhận hàng', '2024-09-17 12:02:05', 'ok', '150000', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('lesbe', 'hadeboss', '\"Dám Bị Ghét\" - Ichiro Kishimi & Fumitake Koga', 3, 'Đã thanh toán', '2024-09-18 06:16:40', 'okkk', '285600', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', 'qr.jpg', 'Đã thanh toán 100%', 'Giao hàng thành công'),
('4jX7V', 'hadeboss', '\"The Power of Now\" (Sức mạnh của hiện tại) - Eckhart Tolle', 1, 'Đã thanh toán', '2024-09-18 06:16:40', 'okkk', '146160', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', 'qr.jpg', 'Đã thanh toán 100%', 'Đơn mới'),
('whQzn', 'hadeboss', '\"Nhà Giả Kim\" - Paulo Coelho', 1, 'Đã thanh toán', '2024-09-18 06:16:40', 'okkk', '111500', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', 'qr.jpg', 'Đã thanh toán 100%', 'Đơn mới'),
('s2DUg', 'hadeboss', '\"Sapiens: Lược Sử Loài Người\" - Yuval Noah Harari', 1, 'Đã thanh toán', '2024-09-18 06:16:40', 'okkk', '127000', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', 'qr.jpg', 'Đã thanh toán 100%', 'Đơn mới'),
('fYH1S', 'dtlong2510', '\"Sapiens: Lược Sử Loài Người\" - Yuval Noah Harari', 1, 'Thanh toán khi nhận hàng', '2024-09-26 01:21:26', 'trả bằng tình cảm nhé', '127000', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('F52iR', 'dtlong2510', '\"The Power of Now\" (Sức mạnh của hiện tại) - Eckhart Tolle', 1, 'Thanh toán khi nhận hàng', '2024-09-26 01:21:26', 'trả bằng tình cảm nhé', '146160', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('xDcua', 'dtlong2510', '\"Thinking, Fast and Slow\" - Daniel Kahneman', 1, 'Thanh toán khi nhận hàng', '2024-09-26 01:21:26', 'trả bằng tình cảm nhé', '150000', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('HJHli', 'dtlong2510', '\"Đắc Nhân Tâm\" - Dale Carnegie', 1, 'Đã thanh toán', '2024-09-26 01:32:04', '', '49000', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', 'đắc nhân tâm.jpg', 'Đã thanh toán 100%', 'Đơn mới'),
('VOLHF', 'dtlong2510', '\"Atomic Habits\" (Thói quen tốt) - James Clear', 2, 'Đã thanh toán', '2024-09-26 01:32:04', '', '596800', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', 'đắc nhân tâm.jpg', 'Đã thanh toán 100%', 'Đơn mới'),
('9jJx0', 'dtlong2510', '\"Atomic Habits\" (Thói quen tốt) - James Clear', 5, 'Thanh toán khi nhận hàng', '2024-09-26 08:34:57', '', '1492000', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('oGMYK', 'HoangKiet', '\"Atomic Habits\" (Thói quen tốt) - James Clear', 3, 'Thanh toán khi nhận hàng', '2024-09-26 08:40:58', 'ok', '895200', 'Hoàng Anh Kiệt, 0862088338, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('75iuS', 'HoangKiet', '\"Đắc Nhân Tâm\" - Dale Carnegie', 1, 'Thanh toán khi nhận hàng', '2024-09-26 08:40:58', 'ok', '49000', 'Hoàng Anh Kiệt, 0862088338, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('MZys8', 'KhanhDK', '\"Atomic Habits\" (Thói quen tốt) - James Clear', 2, 'Thanh toán khi nhận hàng', '2024-09-26 08:44:20', '', '596800', 'Đào Anh Khánh, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('fjfUH', 'KhanhDK', '\"Dám Bị Ghét\" - Ichiro Kishimi & Fumitake Koga', 1, 'Thanh toán khi nhận hàng', '2024-09-26 08:44:20', '', '95200', 'Đào Anh Khánh, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('BQFv0', 'Changchang', '\"Dám Bị Ghét\" - Ichiro Kishimi & Fumitake Koga', 1, 'Thanh toán khi nhận hàng', '2024-09-26 08:46:56', '', '95200', 'Thái Thị Thùy Trang, 0862088338, 112 Cầu Giấy, Hà Nội', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới'),
('fbWBp', 'HaiTa', '\"Đắc Nhân Tâm\" - Dale Carnegie', 1, 'Thanh toán khi nhận hàng', '2024-09-26 08:48:23', '', '49000', 'Tạ Duyên Hải, 0862088338, 112 Cầu Giấy, Hà Nội', '', 'Thanh toán 100% khi nhận hàng', 'Đơn mới');

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
('DA01', '\"Đắc Nhân Tâm\" - Dale Carnegie', 'Hướng dẫn cách tương tác và thuyết phục người khác một cách hiệu quả.', 49000.00, 22, 'đắc nhân tâm.jpg', 'Phát triển bản thân'),
('DA02', '\"Atomic Habits\" (Thói quen tốt) - James Clear', 'Cách xây dựng và duy trì thói quen tốt trong cuộc sống.', 298400.00, 0, 'Atomic Habits.png', 'Phát triển bản thân'),
('DA05', '\"Dám Bị Ghét\" - Ichiro Kishimi & Fumitake Koga', 'Sách về tư duy Adlerian và việc chấp nhận bản thân.', 95200.00, 23, 'Dám Bị Ghét.png', 'Tâm lý - Xã hội'),
('DA06', '\"The Power of Now\" (Sức mạnh của hiện tại) - Eckhart Tolle', 'Sách về cách sống trong hiện tại để đạt được bình an nội tâm', 146160.00, 43, 'The Power of Now.jpg', ' Kinh tế - Kinh doanh'),
('DU01', '\"Sapiens: Lược Sử Loài Người\" - Yuval Noah Harari', 'Khám phá lịch sử và tâm lý con người từ thời tiền sử đến hiện đại.', 127000.00, 19, 'Sapiens Lược Sử Loài Người.png', 'Tâm lý - Xã hội'),
('DU02', '\"Thinking, Fast and Slow\" - Daniel Kahneman', 'Phân tích cách con người ra quyết định và những lỗi tư duy thường gặp.', 150000.00, 52, 'Thinking.jpg', 'Tâm lý - Xã hội'),
('DU03', '\"Tâm lý học đám đông\" - Gustave Le Bon', 'Phân tích tâm lý và hành vi của đám đông trong xã hội.', 397320.00, 12, 'Tâm lý học đám đông.png', 'Tâm lý - Xã hội'),
('DU06', '72 tuyệt kĩ đánh chồng nhà họ Nguyễn', '72 bí kíp đánh chồng nhà họ Nguyễn\" là tập truyện hài hước, có thể liên quan đến một tác phẩm giải trí', 75000.00, 5, 'bk_danhchong.jpg', ' Kinh tế - Kinh doanh'),
('DU08', '7 Thói Quen Hiệu Quả\" - Stephen R. Covey', '	\"7 Thói Quen Hiệu Quả\" - Stephen R. Covey', 75000.00, 33, '7 Thói Quen Hiệu Quả.jpg', 'Kinh tế - Kinh doanh'),
('DU092', '\"Nhà Giả Kim\" - Paulo Coelho', 'Câu chuyện về hành trình khám phá bản thân đầy cảm hứng.', 111500.00, 30, 'download.jpg', 'Kinh tế - Kinh doanh');

-- --------------------------------------------------------

--
-- Table structure for table `sp_noibat`
--

CREATE TABLE `sp_noibat` (
  `sp_id` varchar(10) NOT NULL,
  `sp_name` varchar(255) DEFAULT NULL,
  `sp_image` varchar(255) DEFAULT NULL,
  `sp_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sp_noibat`
--

INSERT INTO `sp_noibat` (`sp_id`, `sp_name`, `sp_image`, `sp_price`) VALUES
('DA01', '72 tuyệt kĩ đánh chồng nhà họ Nguyễn', 'bk_danhchong.jpg', 75000.00),
('DA02', 'Atomic Habits', 'Atomic Habits.png', 298400.00),
('DA03', '7 Thói Quen Hiệu Quả', '7 Thói Quen Hiệu Quả.jpg', 397320.00),
('DA04', 'Tâm lý học đám đông', 'download.jpg', 111500.00),
('DA05', 'Dám Bị Ghét', 'Dám Bị Ghét.png', 95200.00),
('DA06', 'The Power of Now', 'The Power of Now.jpg', 146160.00),
('DU01', 'Sapiens: Lược Sử Loài Người', 'Sapiens Lược Sử Loài Người.png', 127000.00),
('DU02', 'Thinking, Fast and Slow', 'Thinking.jpg', 150000.00);

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
('hadeboss', 'Hade1234@', '0862-60969696', 'Nguyễn Hồng Hà, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa'),
('haha', 'haha@123', '0862088336', 'Nguyễn Hồng Hà, 0862088336, abctrrrrr5555555555555555555'),
('HaiTa', '1234567890', '0862088335', 'Tạ Duyên Hải, 0862088338, 112 Cầu Giấy, Hà Nội'),
('KhanhDK', '11223344', '0862088333', 'Đào Anh Khánh, 0862088336, Kiến Long Hưng Lộc Hậu Lộc Thanh Hóa'),
('Changchang', '12343211', '0862088336', 'Thái Thị Thùy Trang, 0862088338, 112 Cầu Giấy, Hà Nội'),
('dtlong2510', 'dtlong2510', '0869999999', 'Đinh Thành Long, 08625555555, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN'),
('HoangKiet', 'HoangKiet', '0862088663', 'Hoàng Anh Kiệt, 0862088338, 1 Trần Duy Hưng, Trung Hòa, Cầu Giấy, HN');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

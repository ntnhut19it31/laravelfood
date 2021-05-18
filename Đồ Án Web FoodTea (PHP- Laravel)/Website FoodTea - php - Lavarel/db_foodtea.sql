-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2019 lúc 08:05 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_foodtea`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(14, 14, '2017-03-23', 160000, 'COD', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 13, '2017-03-21', 400000, 'ATM', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 12, '2017-03-21', 520000, 'COD', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 11, '2017-03-21', 420000, 'COD', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(15, 15, '2017-03-24', 220000, 'COD', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(16, 16, '2019-05-20', 30000, 'COD', 'Ship nhanh nhanh cho anh', '2019-05-20 11:31:21', '2019-05-20 11:31:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'số lượng',
  `unit_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(18, 15, 62, 5, 220000, '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(17, 14, 2, 1, 160000, '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(16, 13, 60, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(15, 13, 59, 1, 200000, '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(14, 12, 60, 2, 200000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(13, 12, 61, 1, 120000, '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(12, 11, 61, 1, 120000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(11, 11, 57, 2, 150000, '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(19, 16, 4, 1, 30000, '2019-05-20 11:31:21', '2019-05-20 11:31:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(15, 'ê', 'Nữ', 'huongnguyen@gmail.com', 'e', 'e', 'e', '2017-03-24 07:14:32', '2017-03-24 07:14:32'),
(14, 'hhh', 'nam', 'huongnguyen@gmail.com', 'Lê thị riêng', '99999999999999999', 'k', '2017-03-23 04:46:05', '2017-03-23 04:46:05'),
(13, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '23456789', 'Vui lòng giao hàng trước 5h', '2017-03-21 07:29:31', '2017-03-21 07:29:31'),
(12, 'Khoa phạm', 'Nam', 'khoapham@gmail.com', 'Lê thị riêng', '1234567890', 'Vui lòng chuyển đúng hạn', '2017-03-21 07:20:07', '2017-03-21 07:20:07'),
(11, 'Hương Hương', 'Nữ', 'huongnguyenak96@gmail.com', 'Lê Thị Riêng, Quận 1', '234567890-', 'không chú', '2017-03-21 07:16:09', '2017-03-21 07:16:09'),
(16, 'Hồ Bút Kỹ', 'nam', 'butky2705@gmail.com', 'Trường Cao Đẳng CNTT - ĐN', '0931693057', 'Ship nhanh nhanh cho anh', '2019-05-20 11:31:21', '2019-05-20 11:31:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `create_at`, `update_at`) VALUES
(1, 'Mùa trung thu năm nay, Hỷ Lâm Môn muốn gửi đến quý khách hàng sản phẩm mới xuất hiện lần đầu tiên tại Việt nam \"Bánh trung thu Bơ Sữa HongKong\".', 'Những ý tưởng dưới đây sẽ giúp bạn sắp xếp tủ quần áo trong phòng ngủ chật hẹp của mình một cách dễ dàng và hiệu quả nhất. ', 'sample1.jpg', '2017-03-11 06:20:23', '0000-00-00 00:00:00'),
(2, 'Tư vấn cải tạo phòng ngủ nhỏ sao cho thoải mái và thoáng mát', 'Chúng tôi sẽ tư vấn cải tạo và bố trí nội thất để giúp phòng ngủ của chàng trai độc thân thật thoải mái, thoáng mát và sáng sủa nhất. ', 'sample2.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(3, 'Đồ gỗ nội thất và nhu cầu, xu hướng sử dụng của người dùng', 'Đồ gỗ nội thất ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Xu thế của các gia đình hiện nay là muốn đem thiên nhiên vào nhà ', 'sample3.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(4, 'Hướng dẫn sử dụng bảo quản đồ gỗ, nội thất.', 'Ngày nay, xu hướng chọn vật dụng làm bằng gỗ để trang trí, sử dụng trong văn phòng, gia đình được nhiều người ưa chuộng và quan tâm. Trên thị trường có nhiều sản phẩm mẫu ', 'sample4.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00'),
(5, 'Phong cách mới trong sử dụng đồ gỗ nội thất gia đình', 'Đồ gỗ nội thất gia đình ngày càng được sử dụng phổ biến nhờ vào hiệu quả mà nó mang lại cho không gian kiến trúc. Phong cách sử dụng đồ gỗ hiện nay của các gia đình hầu h ', 'sample5.jpg', '2016-10-20 02:07:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(1, 'Bánh Mì Nướng Muối Ớt\r\n', 6, 'Đun bơ tan chảy, hành lá cắt nhỏ, xúc xích thái sợi, trứng cắt đôi\r\n\r\n  \r\nLàm nước sốt: cho đường, muối tôm, sa tế tôm vào bát trộn đều, nếu thấy đặc quá cho thêm chút nước\r\n\r\n  \r\nCán dẹp bánh mì\r\n\r\n  \r\nQuét 1 lớp bơ vào 2 mặt của bánh, úp mặt trên của bánh xuống, quét 1 lớp sốt vào mặt dưới. Cho vào lò nướng 200°C trong 10\'\r\n\r\n  \r\nBơ còn thừa thì bật bếp cho hành vào đảo qua rồi tắt bếp\r\n\r\n  \r\nLấy bánh ra,lật ngược lại, quét nước sốt lên, thêm hành cho lại vào lò nướng thêm 10\' nữa\r\n\r\n  \r\nCắt bánh thành từng miếng vừa ăn,thêm xúc xích, chà bông, trứng cút, tương ớt, mayonnaise rồi chén thôi ạ  (phiên bản thiếu chà bông :(()', 25000, 10000, 'banhminuongmuoiot.jpg\r\n', 'hộp', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(2, 'Cánh Gà Rang Muối\r\n', 5, 'Điểm nhấn chính của món lẩu này đó chính là gà. Kh...', 30000, 22000, 'LO2s_canhgarangmuoi.jpg\r\n', 'hộp', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(3, 'Cánh Gà Muối Chiên\r\n', 5, 'Cánh gà chiên sốt trứng muối với cánh gà nhiều thị...', 30000, 20000, 'canhgamuoichien.jpg\r\n', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(4, 'Cánh Gà Sốt Cay\r\n', 5, '', 30000, 0, 'canhgasotcay.jpg\r\n', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(5, 'Chân gà rang muối\r\n', 5, '', 60000, 30000, 'changarangmuoi.jpg\r\n', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(6, 'Chân gà muối chiên\r\n', 5, '', 60000, 44000, 'changamuoichien.jpg\r\n', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(7, 'Chân gà sả ớt\r\n', 5, '', 60000, 0, 'changaxaot.jpg\r\n', 'hộp', 1, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(8, 'Chân gà sốt cay Hàn Quốc\r\n', 5, '', 60000, 35000, 'changaxotcay.jpg\r\n', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(9, 'Chân gà hầm mật ong\r\n\r\n', 5, '', 65000, 0, 'changaham.jpg\r\n', 'hộp', 0, '2016-10-26 03:00:16', '2016-10-24 22:11:00'),
(11, 'Mỳ cay Hàn Quốc\r\n', 5, '', 30000, 12000, 'mycay.jpg\r\n', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(12, 'Mỳ Ý\r\n', 5, '', 40000, 12000, 'myy.jpg\r\n', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(13, 'Sụn rang muối\r\n', 5, '', 50000, 12000, 'sunrangmuoi.jpg\r\n', 'cái', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(14, 'Sường rang cay\r\n', 5, '', 55000, 0, 'sunsotcay.jpg\r\n', 'cái', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(15, 'Nem ráng\r\n', 5, '', 30000, 12000, 'nemran.jpg\r\n', 'cái', 1, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(16, 'TOKBOKI\r\n', 5, '', 35000, 32000, 'tokboki.jpg\r\n', 'hộp', 0, '2016-10-12 02:00:00', '2016-10-27 02:24:00'),
(18, 'TOKBOKI phô mai\r\n', 5, '', 35000, 0, 'tokbokiphomai.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(19, 'Gà phô mai\r\n', 5, '', 40000, 20000, 'gaphomai.jpg\r\n', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(20, 'Trà sữa trân châu\r\n', 1, 'Hạt trân châu Đầu tiên, bạn cho trân châu vào trong một hộp kín có nắp đậy. Nếu không có nắp đậy, bạn có thể dùng màng nilon mỏng bọc kín miệng, tiếp sau đó bạn cho vào ngăn mát của tủ lạnh. Cách này có thể bảo quản trân châu được trong 3 đến 4 ngày mà không sợ hư hỏng.  Trà sữa Đầu tiên, bạn cho trà sữa vào một hộp kín có nắp đậy. Nếu không có nắp đậy, bạn có thể dùng màng nilon mỏng bọc kín miệng rồi cất vào ngăn mát tủ lạnh. Nếu trà sữa của bạn đã cho thêm trân châu hay thạch từ trước thì hãy vớt hết ra rồi mới cho vào tủ lạnh. Cách này thì trà sữa của bạn có thể bảo quản được 2 ngày mà không lo ảnh hưởng đến sức khỏe.', 40000, 0, 'tstranchau.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(21, 'Trà sữa trân châu đường đen\r\n', 1, 'Trà sữa trân châu đường đen', 10000, 0, 'tstranchauduongden.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(22, 'Trà sữa trân châu trắng\r\n', 1, '', 12000, 0, 'tstranchautrang.jpg\r\n', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(23, 'Trà sữa trân châu dừa\r\n', 1, '', 11000, 0, 'tsdua.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(24, 'Trà sữa thái\r\n', 1, '', 15000, 0, 'tsthai1.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(25, 'Trà sữa đào\r\n', 1, '', 15000, 0, 'tsdao.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(26, 'Trà sữa dâu\r\n', 1, '', 15000, 0, 'tsdau.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(27, 'Trà sữa socola\r\n', 1, '', 15000, 0, 'tssocola.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(28, 'Trà sữa bạc hà\r\n', 1, '', 15000, 10000, 'tsbacha.jpg\r\n', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(29, 'Trà đào\r\n', 1, '', 15000, 0, 'tradao.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(30, 'Trà nho\r\n', 1, '', 10000, 0, 'tranho.jpg\r\n', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(31, 'Trà chanh\r\n', 1, '', 12000, 0, 'trachanh.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(32, 'Trà tắc\r\n', 1, '', 11000, 0, 'tratac.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(33, 'Trà Sữa Pudding Trứng\r\n', 1, '', 20000, 0, 'tspuding.jpg\r\n', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(34, 'Trà Sữa Caramen\r\n', 1, '', 20000, 0, 'tscaramen.jpg\r\n', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(35, 'Trà Sữa hạt dẽ\r\n', 1, '', 15000, 0, 'tra-sua-hat-de.png\r\n', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(36, 'Trà Sữa Kem\r\n', 1, '', 14000, 0, 'tskem.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(37, 'Trà Sữa Matcha\r\n', 1, '', 24000, 10000, 'tsmatcha.jpg\r\n', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(38, 'Kem Dâu\r\n', 2, '', 12000, 0, 'kemdau.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(39, 'Kem Socola\r\n', 2, '', 20000, 18000, 'kemsocala.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(40, 'Kem Vani\r\n', 2, '', 12000, 0, 'kemvani.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(41, 'Kem Dừa\r\n', 2, '', 20000, 0, 'kemdua.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(42, 'Kem sầu riêng\r\n', 2, 'Thịt bò xay, ngô, sốt BBQ, phô mai mozzarella', 20000, 130000, 'kemxaurieng.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(43, 'Kem Khoai Môn\r\n', 2, 'Sốt cà chua, ham , dứa, pho mai mozzarella', 20000, 0, 'kem-khoai-mon.jpg\r\n', 'cái', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(44, 'Kem Trà Xanh\r\n', 2, 'Gà hun khói,nấm, sốt cà chua, pho mai mozzarella.', 14000, 0, 'kemtraxanh.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(45, 'Kem Nho\r\n', 2, 'Xúc xích klobasa, Nấm, Ngô, sốtcà chua, pho mai Mozzarella.', 14000, 0, 'kemnho.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(46, 'Kem Chuối\r\n', 2, 'Tôm , mực, xào cay,ớt xanh, hành tây, cà chua, phomai mozzarella.', 14000, 0, 'kemchuoi.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(47, 'Americano\r\n', 3, 'Ham, bacon, chorizo, pho mai mozzarella.', 10000, 0, 'americano.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(48, 'Cà phê đen\r\n', 3, 'Cá Ngừ, sốt Mayonnaise,sốt càchua, hành tây, pho mai Mozzarella', 10000, 0, 'cfden.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(49, 'Cà phê sữa\r\n', 3, '', 10000, 0, 'fssua.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(50, 'Capuchino\r\n', 3, '', 20000, 15000, 'capuchino.jpg\r\n', 'cái', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(51, 'Mocha (cà phê, socola)\r\n', 3, '', 20000, 0, 'mocha.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(52, 'Sinh tố dừa\r\n', 4, '', 20000, 0, 'stdua.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(53, 'Sinh tố bơ\r\n', 4, '', 20000, 0, 'stbo.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(54, 'Sinh tố soài\r\n', 4, '', 20000, 0, 'stxoai.png\r\n', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(55, 'Sinh tố mãng cầu\r\n', 4, '', 20000, 0, 'stmangcau.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(56, 'Sinh tố dưa hấu\r\n', 4, '', 20000, 0, 'stduahau.jpg\r\n', 'hộp', 0, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(57, 'Sinh tố chuối\r\n', 4, '', 20000, 0, 'sinh-to-chuoi-sua-tuoi.jpg\r\n', 'hộp', 1, '2016-10-13 02:20:00', '2016-10-19 03:20:00'),
(58, 'Sinh tố sầu riêng\r\n', 4, 'Thưởng thức macaron, người ta có thể tìm thấy từ những hương vị truyền thống như mâm xôi, chocolate, cho đến những hương vị mới như nấm và trà xanh. Macaron với vị giòn tan của vỏ bánh, béo ngậy ngọt ngào của phần nhân, với vẻ ngoài đáng yêu và nhiều màu sắc đẹp mắt, đây là món bạn không nên bỏ qua khi khám phá nền ẩm thực Pháp.', 20000, 0, 'SauRieng1.jpg\r\n', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(59, 'Sinh tố Sapoche\r\n', 4, 'Chỉ cần cắn một miếng, bạn sẽ cảm nhận được tất cả các hương vị đó hòa quyện cùng một chính vì thế người ta còn ví món bánh này là Thiên đường trong miệng của bạn', 20000, 0, '68aaad2031658619cae7b828af8dcf1b.jpg\r\n', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(60, 'Sinh tố Thơm\r\n', 4, 'Bánh táo Mỹ với phần vỏ bánh mỏng, giòn mềm, ẩn chứa phần nhân táo thơm ngọt, điểm chút vị chua dịu của trái cây quả sẽ là một lựa chọn hoàn hảo cho những tín đồ bánh ngọt trên toàn thế giới.', 20000, 0, 'stthom.jpg\r\n', '', 0, '2016-10-26 17:00:00', '2016-10-11 17:00:00'),
(61, 'Sinh tố Kiwi\r\n', 4, 'Những chiếc cupcake có cấu tạo gồm phần vỏ bánh xốp mịn và phần kem trang trí bên trên rất bắt mắt với nhiều hình dạng và màu sắc khác nhau. Cupcake còn được cho là chiếc bánh mang lại niềm vui và tiếng cười như chính hình dáng đáng yêu của chúng.', 20000, 0, '9105ee431505fc5ba514.jpg\r\n', 'cái', 1, NULL, NULL),
(62, 'Tôm Sú Nướng\r\n', 6, 'Sachertorte là một loại bánh xốp được tạo ra bởi loại&nbsp;chocholate&nbsp;tuyệt hảo nhất của nước Áo. Sachertorte có vị ngọt nhẹ, gồm nhiều lớp bánh được làm từ ruột bánh mì và bánh sữa chocholate, xen lẫn giữa các lớp bánh là mứt mơ. Món bánh chocholate này nổi tiếng tới mức thành phố Vienna của Áo đã ấn định&nbsp;tổ chức một ngày Sachertorte quốc gia, vào 5/12 hằng năm', 25000, 18000, 'tom-su-nuong.jpg\r\n', 'cái', 0, NULL, NULL),
(63, 'Tôm Nướng Muối Ớt\r\n', 6, 'Tôm Nướng Muối Ớt\r\n', 21000, 18000, 'tom-nuong-muoi-ot.jpg\r\n', 'cái', 1, NULL, NULL),
(64, 'Bò Nướng Lá Lốt', 6, 'Bò Nướng Lá Lốt', 10000, NULL, 'bonuonglalot.jpg', 'hộp', 1, '2019-05-20 10:35:11', '2019-05-20 10:35:11'),
(65, 'Bò Nướng Lạc Cảnh', 6, 'Bò Nướng Lạc Cảnh', 10000, NULL, 'bonuonglaccanh.jpg', 'hộp', 1, '2019-05-20 10:36:01', '2019-05-20 10:36:01'),
(66, 'Xiêng bò rau củ nướng', 6, 'Xiêng bò rau củ nướng', 10000, NULL, 'heosiengnuong.jpg', 'hộp', 1, '2019-05-20 10:36:26', '2019-05-20 10:36:26'),
(67, 'Lợn rừng xiên nướng', 6, 'Lợn rừng xiên nướng', 10000, NULL, 'lonrungxiennuong.jpg', 'hộp', 1, '2019-05-20 10:36:50', '2019-05-20 10:36:50'),
(68, 'Lạp Xưởng Nướng', 6, 'Lạp Xưởng Nướng', 10000, NULL, 'lapxuongnuong.jpg', 'hộp', 1, '2019-05-20 10:37:15', '2019-05-20 10:37:15'),
(69, 'Chân gà nướng sa tế', 6, 'Chân gà nướng sa tế', 11000, NULL, 'chan-ga-nuong-sa-te.jpg', 'hộp', 1, '2019-05-20 10:37:40', '2019-05-20 10:37:40'),
(70, 'Bắp nướng', 6, 'Bắp nướng', 8000, NULL, 'bapnuong.jpg', 'hộp', 1, '2019-05-20 10:38:02', '2019-05-20 10:38:02'),
(71, 'Khoai lang nướng', 6, 'Khoai lang nướng', 8000, NULL, 'nuong-khoai-lang.jpg', 'hộp', 1, '2019-05-20 10:38:24', '2019-05-20 10:38:24'),
(72, 'Ếch nướng', 6, 'Ếch nướng', 22000, NULL, 'echnuong.jpg', 'hộp', 1, '2019-05-20 10:38:46', '2019-05-20 10:38:46'),
(73, 'Bánh Pizza', 7, 'Bánh Pizza', 22000, NULL, 'piza.jpg', 'hộp', 1, '2019-05-20 10:39:08', '2019-05-20 10:39:08'),
(74, 'Bánh Pizza Hải Sản', 7, 'Bánh Pizza Hải Sản', 27000, NULL, 'pizzahaisan.jpg', 'hộp', 1, '2019-05-20 10:39:28', '2019-05-20 10:39:28'),
(75, 'Bánh Bông Lan Trứng Muối', 7, 'Bánh Bông Lan Trứng Muối', 12000, NULL, 'banhbonglantrungmuoi.jpg', 'hộp', 1, '2019-05-20 10:39:49', '2019-05-20 10:39:49'),
(76, 'Bánh Bông Lan Trứng', 7, 'Bánh Bông Lan Trứng', 12000, NULL, 'banhbonglantrung.jpg', 'hộp', 1, '2019-05-20 10:40:10', '2019-05-20 10:40:10'),
(77, 'Bánh Panke Sầu Riêng', 7, 'Bánh Panke Sầu Riêng', 10000, NULL, '1430967449-pancake-sau-rieng-6.jpg', 'hộp', 1, '2019-05-20 10:40:31', '2019-05-20 10:40:31'),
(78, 'Bánh Crepe - Chocola', 7, 'Bánh Crepe - Chocola', 10000, NULL, 'crepe-chocolate.jpg', 'hộp', 1, '2019-05-20 10:41:25', '2019-05-20 10:41:25'),
(79, 'Bánh Crepe - Chuối', 7, 'Bánh Crepe - Chuối', 10000, NULL, 'crepe-chuoi.jpg', 'hộp', 1, '2019-05-20 10:41:41', '2019-05-20 10:41:41'),
(80, 'Bánh Crepe - Đào', 7, 'Bánh Crepe - Đào', 10000, NULL, 'crepe-dao.jpg', 'hộp', 1, '2019-05-20 10:41:58', '2019-05-20 10:41:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, '', 'banner1.jpg', '2019-05-20 10:03:07', '0000-00-00 00:00:00'),
(2, '', 'banner2.jpg', '2019-05-20 10:03:07', '0000-00-00 00:00:00'),
(3, '', 'banner3.jpg', '2019-05-20 10:03:07', '0000-00-00 00:00:00'),
(4, '', 'banner4.jpg', '2019-05-20 10:03:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Trà Sữa', 'Trà Sữa Nhà Làm Ngon như Nhà Làm\r\n', 'tsthai.jpg\r\n', NULL, NULL),
(2, 'Kem', 'kem ngon nè\r\n', 'kemchuoi.jpg\r\n', '2016-10-12 02:16:15', '2016-10-13 01:38:35'),
(3, 'Coffee', 'Cà phê ngon\r\n', '7DXX_traden.jpg\r\n', '2016-10-18 00:33:33', '2016-10-15 07:25:27'),
(4, 'Sinh Tố\r\n', 'Sinh Tố Hoa Quả\r\n', '7DXX_traden.jpg\r\n', '2016-10-26 03:29:19', '2016-10-26 02:22:22'),
(5, 'Đồ Ăn Vặt\r\n', 'Đồ Ăn Vặt\r\n', 'crepe.jpg', '2016-10-28 04:00:00', '2016-10-27 04:00:23'),
(6, 'Món Nướng\r\n', 'Đồ Ăn Nhanh\r\n', '40819_food_pizza.jpg\r\n', '2016-10-25 17:19:00', NULL),
(7, 'Các Loại Bánh\r\n', 'Các Loại Bánh\r\n', '111.jpg\r\n', '2016-10-25 17:19:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `quyen`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'huong', 'huonghuong08.php@gmail.com', '$2y$10$rGY4KT6ZSMmLnxIbmTXrsu2xdgRxm8x0UTwCyYCAzrJ320kYheSRq', 0, '23456789', 'Hoàng Diệu 2', NULL, '2017-03-23 07:17:33', '2017-03-23 07:17:33'),
(7, 'butky', 'admi1n@gmail.com', 'Bigbang123', 1, '0931693057', 'Hue', NULL, NULL, NULL),
(8, 'hobutky', 'butky2705@gmail.com', '$2y$10$KuN2cj9nUqbJ1ja4UT0JTuTgvOWk8bRlAqBWOHB1Tua/.B5CnutcG', 1, '09316930547', 'Huế', NULL, '2019-05-20 10:09:49', '2019-05-20 10:09:49'),
(9, 'admin', 'admin@gmail.com', '$2y$10$JjYY5JZZzUMg5/jFGy.YzOpGrHF3c/kUKBer6JepluZlag81aqYN.', 1, '01262616266', 'Hue', NULL, '2019-05-25 06:37:12', '2019-05-25 06:37:12');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_type_foreign` (`id_type`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

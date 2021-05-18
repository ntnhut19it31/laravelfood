-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2019 lúc 03:38 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(11) DEFAULT NULL COMMENT 'ID Khach Hang',
  `date_order` date DEFAULT NULL COMMENT 'Ngay Oder',
  `total` float DEFAULT NULL COMMENT 'Tổng Tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Hình Thức Thanh Toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ghi Chú',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(16, 21, '2019-05-12', 58000, 'COD', 'hue', '2019-05-12 13:25:17', '2019-05-12 13:25:17'),
(1, 15, '2019-05-12', 22000, 'COD', 'ship nhanh', '2019-05-12 13:07:19', '2019-05-12 13:07:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) NOT NULL COMMENT 'ID Hóa Đơn',
  `id_product` int(10) NOT NULL COMMENT 'ID San Pham',
  `quantity` int(11) NOT NULL COMMENT 'Số Lượng',
  `unit_price` double NOT NULL COMMENT 'Đơn Vị Giá',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(20, 16, 107, 2, 18000, '2019-05-12 13:25:17', '2019-05-12 13:25:17'),
(19, 16, 71, 1, 22000, '2019-05-12 13:25:17', '2019-05-12 13:25:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên',
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Giới Tính',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Địa Chỉ',
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Ghi Chú',
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
(16, 'Hồ Bút Kỹ', 'nam', 'butky2705@gmail.com', 'ktx trường CĐ CNTT', '0931693057', 'Ship nhanh cho em với nhaaaaa <3', '2019-05-12 13:05:21', '2019-05-12 13:05:21'),
(17, 'ho but ky', 'nam', 'butky2705@gmail.com', 'ktx trường CĐ CNTT', '0931693057', 'Ship nhanh cho em với nhaaaaa <3', '2019-05-12 13:05:45', '2019-05-12 13:05:45'),
(18, 'ho but ky', 'nam', 'butky2705@gmail.com', 'ktx trường CĐ CNTT', '0931693057', 'Ship nhanh cho em với nhaaaaa <3', '2019-05-12 13:10:16', '2019-05-12 13:10:16'),
(19, 'hobutky', 'nam', 'butky2705@gmail.com', 'Hue', '0931693057', 'Ship nhanh cho em với nhaaaaa <3', '2019-05-12 13:12:05', '2019-05-12 13:12:05'),
(20, 'Hồ Bút Kỹ', 'nam', 'butky2705@gmail.com', 'Hue', '01262616266', 'hue', '2019-05-12 13:16:31', '2019-05-12 13:16:31'),
(21, 'Hồ Bút Kỹ', 'nam', 'butky2705@gmail.com', 'Hue', '01262616266', 'hue', '2019-05-12 13:25:17', '2019-05-12 13:25:17'),
(22, 'Văn Lĩnh', 'nam', 'vanlinh@gmail.com', 'Quảng Nam', '01262616266', 'Nhanh nha ahihi', '2019-05-12 13:25:55', '2019-05-12 13:25:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tiêu Đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nội Dung',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'HÌnh Ảnh',
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
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên Sản Phẩm',
  `id_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID Loại Sản Phẩm',
  `description` text COLLATE utf8_unicode_ci COMMENT 'Miêu Tả',
  `unit_price` float DEFAULT NULL COMMENT 'Giá',
  `promotion_price` float DEFAULT NULL COMMENT 'Giá Khuyến Mãi',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Hình Ảnh',
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `new`, `created_at`, `updated_at`) VALUES
(70, 'Bánh Mì Nướng Muối Ớt', 17, 'Bánh mì nướng muối ớt là món ăn rất hấp dẫn, lạ miệng, lại rất hợp cho những ai thích vị cay cay, mặn mặn. Món ăn này có cách làm khá đơn giản, thích hợp để bạn trổ tài mời người thân, bạn bè mà lại không sợ thất bại như những loại bánh cầu kì khác.', 25000, 10000, 'banhminuongmuoiot.jpg', 'hộp', 1, '2019-05-09 07:57:43', '2019-05-09 07:57:43'),
(71, 'Cánh Gà Rang Muối', 16, 'Điểm nhấn chính của món lẩu này đó chính là gà. Khác với các loại gà khác, gà đồi có đặc điểm là nhỏ con nhưng thịt rất thơm ngon và chắc. Ưu điểm vượt trội hơn hẳn các loại thịt gà thường hay bị bở thịt và nhão thịt. Được thả đồi nên loại gà này khi nhúng lẩu, thịt chín tới, đậm đà cùng nước dùng sẽ tạo nên hương vị hấp dẫn cho người dùng.', 30000, 22000, 'LO2s_canhgarangmuoi.jpg', 'cái', 1, '2019-05-09 08:00:34', '2019-05-12 13:30:34'),
(72, 'Cánh Gà Muối Chiên', 16, 'Cánh gà chiên sốt trứng muối với cánh gà nhiều thịt, ít xương, béo mà không ngay được tẩm ướp gia vị, lăn bột, chiên chín rồi sốt cùng trứng muối béo thơm hấp dẫn.', 30000, 20000, 'canhgamuoichien.jpg', 'cái', 1, '2019-05-09 08:03:50', '2019-05-12 13:32:14'),
(73, 'Cánh Gà Sốt Cay', 16, 'hay vì món gà nướng với các gia vị thông thường đôi khi khiến bạn cảm thấy tẻ nhạt và nhàm chán, bạn có thể thực hiện món cánh gà xốt cay tuyệt ngon này. Món cánh gà xốt cay thơm lừng hương cam kèm vị chua chua ngọt ngọt chắc chắn không ai có thể chối từ, đồng thời nó cũng làm mất đi nỗi lo ngaị về việc các món nướng thường bị khô.', 30000, NULL, 'canhgasotcay.jpg', 'hộp', 1, '2019-05-09 08:06:57', '2019-05-09 08:06:57'),
(74, 'Chân gà rang muối', 16, 'Không mất quá nhiều công sức, không mất nhiều tiền bạc mà chúng ta vẫn có thể hưởng trọn vẹn vị ngon của món ăn vặt này. Ngày cuối tuần, hãy làm món gà rang muối ớt này nhâm nhi cùng gia đình hoặc mời bạn bè tới dùng bữa để hàn huyên cho vui nhé.', 60000, 30000, 'changarangmuoi.jpg', 'hộp', 1, '2019-05-09 08:11:31', '2019-05-12 13:32:30'),
(75, 'Chân gà muối chiên', 16, 'Chân gà là món khoái khẩu của nhiều người. Nếu bạn khá ngán với món chân gà nướng quen thuộc thì có thể thử với món chân gà muối chiên giòn. Hương vị đặc biệt từ món này chắc chắn khiến bạn thích thú không thôi đấy.', 60000, 44000, 'changamuoichien.jpg', 'hộp', 1, '2019-05-09 08:14:31', '2019-05-12 13:32:45'),
(76, 'Chân gà sả ớt', 16, 'Chân gà ngâm sả tắc dường như rất quen thuộc với mọi người. Nhưng chân gà ngâm kiểu Thái thì rất lạ đúng không nào. Đó là món ăn chơi dễ làm cũng là món nhậu rất ưa thích của các cánh mày râu cũng như chị em phụ nữ. Vị chua nhẹ của quất, thơm dịu của sả, cay nồng của ớt tươi, vị hăng nhẹ của củ riềng và giòn sần sật từ chân gà ngâm kiểu Thái sẽ khiến bạn không thể dừng ăn.', 60000, NULL, 'changaxaot.jpg', 'hộp', 1, '2019-05-09 08:33:46', '2019-05-09 08:33:46'),
(77, 'Chân gà sốt cay Hàn Quốc', 16, 'Giữa tiết trời se lạnh như thế này, được thưởng thức món chân gà sốt cay Hàn Quốc hấp dẫn thì đúng là tuyệt vời các bạn nhỉ? Còn chần chừ gì nữa mà không tụ hội đám bạn thân và cùng nhau nhâm nhi món chân gà cay xé lưỡi đúng chuẩn Hàn Quốc thôi nào!', 60000, 35000, 'changaxotcay.jpg', 'hộp', 1, '2019-05-09 08:35:47', '2019-05-12 13:33:05'),
(78, 'Chan gà hầm mật ong', 12, 'Nguyên liệu:\r\n\r\n- 10-15 cái chân gà\r\n- 3 lạng sườn sụn\r\n- 5 cái mề gà\r\n- Gia vị: mật ong,hành củ,gừng,ớt bột,dầu mè,dầu hào,bột canh,hạt tiêu,nước hàng.\r\n- 1 quả dừa tươi và nước cốt dừa.\r\nCách làm:\r\n\r\n-Chân gà rửa sạch,bỏ móng,chặt làm đôi.\r\n-Sườn sụn thái miếng vừa ăn\r\n-Mề gà thái nhỏ\r\n-Mình đem tất cả: chân gà,mề gà,sườn sụn đem trần qua nước sôi để sạch và bớt mùi hôi.\r\n-Gừng,hành củ băm nhỏ.\r\n-Cho chân gà,sườn sụn,mề gà vào nồi,trộn 3 thìa canh mật ong,2 thìa canh dầu hào,1 thìa nước hàng để tạo màu,2 thìa cà phê nước cốt dừa,1 thìa bột canh,cho vào một nửa chỗ hành củ và gừng băm,2 thìa ớt bột,1 thìa hạt tiêu(các bạn không ăn được cay hoặc muốn ăn nhiều cay cho thêm nhé),ướp nguyên liệu trong 30p.\r\n-Đổ nước của quả dừa vào nồi (nếu ít nước có thể cho thêm nước trắng)bật lửa thật to cho sôi,sau đó hạ lửa nhỏ xuống ninh cho mềm,lúc này ta có thể nêm nếm gia vị để điều chỉnh(mặn thêm nước,nhạt thêm gia vị...)đến khi phần nước sền sệt,sườn sụn và chân gà mềm là được.\r\n-Chân gà hầm mật ong các bạn ăn cùng bánh mỳ rất ngon nhé.\r\n-Chân gà hầm mật ong có vị ngầy ngậy của nước cốt dừa,vị thơm và ngọt của mật ong,nước dừa tươi.\r\n-Màu thành phẩm của m sẽ đậm hơn của các bạn do mình cho nhiều ớt nhé,mình ăn thấy cay xè lưỡi mà anh chồng bảo chưa cay', 65000, NULL, 'changaham.jpg', 'cái', 1, '2019-05-09 08:38:56', '2019-05-12 13:26:58'),
(79, 'Mỳ cay Hàn Quốc', 16, 'Nguyên liệu cần để nấu món mì cay như sau:\r\n\r\n-2 bộ xương gà: 2 bộ khung.\r\n-Củ cải trắng: 200 gr.\r\n-2 nhánh tỏi bằm nhuyễn.\r\n-Cải thảo đã làm thành kim chi: 200 gr\r\n-Tôm: 2gr (8-10) con.\r\n-Mực ống: 200 gr.\r\n-10g trai/ nghêu.\r\n-50g thịt mông heo.\r\n-Bí ngòi vàng.\r\n-Nấm kim châm: 200 gr\r\n-Hành baro: 100 gr\r\n-Vắt mì Hàn Quốc: 4 vắt có thể thay thế bằng mì trứng hoặc mì gói Hàn Quốc.\r\n-Ớt bột Hàn Quốc: 100 gr (khoảng 2 muỗng canh)\r\n-Gia vị tiêu, hạt nêm, đường, muối.\r\n-Thêm ớt chỉ thiên nếu thích.', 30000, 26000, 'mycay.jpg', 'hộp', 1, '2019-05-09 08:42:03', '2019-05-09 08:42:25'),
(80, 'Mỳ Ý', 16, 'Nguyên liệu làm mì Ý:\r\nMì ống dài: 200g\r\nThịt bò: 200g\r\nCà chua: 200g\r\nHành tây : 1/2 củ\r\nLá nguyệt quế : 1 lá\r\nLá origano: 1 thìa cà phê\r\nDầu ăn\r\nMuối\r\nĐường.\r\n\r\nCách làm mì Ý:\r\nBắc nồi nước lên bếp, cho vào chút muối và 1 muỗng canh dầu ăn, đun sôi nước, thả mì vào luộc vừa lửa, luộc theo thời gian ghi trên bao bì nhé, khoảng 8-10 phút, đến khi bẻ đôi sợi mì thấy còn lõi nhỏ như sợi tóc là mì vừa chín tới. Đổ mì ra rá để ráo nước.\r\nCà chua rửa sạch, trần qua nước sôi, bóc bỏ vỏ, bỏ hạt, thái miếng vừa cho vào cối xay sinh tố xay nhuyễn.\r\nHành tây bóc bỏ vỏ, băm nhỏ.\r\nThịt bò mua về rủa sach, băm hoặc xay nhỏ, rồi ướp với chút hạt nêm.\r\nĐặt nồi chống dính lên bếp, cho vào 1 chút dầu ăn, phi thơm hành tây rồi cho vào 1 lá nguyệt quế, tiếp đó đổ cà chua xay vào đun nhỏ lửa cho cà chua cạn bớt nước và sánh lại, thêm 1/2 thìa cà phê muối, 1 thìa cà phê đường, nêm nếm vừa miệng rồi cho thịt bò vào đảo đều, đun khoảng 2-3 phút cho thịt bò chín. Cho vào nồi thịt bò 1/2 thìa cafe lá origano, đảo đều, ta được phần sốt.\r\nTrút 1/2 sốt thịt bò ra bát, cho mì đã luộc vào phần sốt còn lại trong nồi trộn đều, đun khoảng 1, 2 phút cho sợi mì săn lại và ngấm gia vị.\r\nTrút mì ra đĩa, bày phần sốt thịt bò trong bát lên trên, và dùng khi còn nóng nhé. Chúc các bạn ngon miệng!', 40000, NULL, 'myy.jpg', 'cái', 1, '2019-05-09 08:44:45', '2019-05-09 08:44:45'),
(81, 'Sụn rang muối', 16, 'Chuẩn bị nguyên liệu cho món sườn sụn rang muối:\r\n- 500gr sườn sụn heo\r\n- 1 thìa cafe nước mắm\r\n- 1/2 thìa cafe đường\r\n- 1/2 thìa cafe muối\r\n\r\n- 1/3 thìa cafe tiêu\r\n- 70gr bột chiên giòn\r\n- Phần muối gạo rang: 50gr gạo;2 lá chanh; 1 thìa canh sả thái lát; 1/2 thìa cafe ớt khô; 1 thìa cafe muối; 1/2 thìa cafe tiêu.\r\nCách làm món sườn sụn rang muối:\r\nBước 1:\r\n\r\n-	Sụn heo chặt miếng vừa ăn, rửa sạch, thấm khô. Ướp với đường, tiêu, muối, nước mắm với định lượng như trên, trộn đều để 20 phút cho thịt thấm.\r\n-	Sau khi sườn sụn đã thấm gia vị bạn cho bột chiên giòn vào đảo đều cho bột chiên áo đều miếng sườn.\r\nBước 2:\r\n-	Cho gạo, lá chanh và sả vào nồi hoặc chảo, rang ở mức lửa hơi thấp. Khi thấy gạo vàng thơm thì tắt bếp, để nguội.\r\nBước 3:\r\n-	Đặt chảo dầu lên bếp, chờ dầu nóng cho sụn vào chiên với lửa vừa. Khi thấy sụn heo có vỏ vàng giòn thì vớt ra đĩa có lót giấy thấm dầu.\r\nBước 4:\r\n-	Bắc chảo khác lên bếp, cho vào 1 muỗng canh dầu, chờ dầu hơi nóng, cho nguyên liệu gạo rang vào chảo cùng muối, tiêu xào sơ. Sau đó cho sụn vào xóc đều là hoàn tất. Tắt bếp.\r\nCho sườn sụn heo rang muối ra đĩa và mời cả nhà cùng thưởng thức thôi nào.', 50000, NULL, 'sunrangmuoi.jpg', 'cái', 1, '2019-05-09 08:48:38', '2019-05-09 08:48:38'),
(82, 'Sường rang cay', 16, '1. Nguyên liệu chuẩn bị để làm sườn rang cay\r\n– 4 lạng sườn non\r\n– 2 quả ớt\r\n– 1 nhánh gừng, tỏi khô\r\n– Các gia vị: nước mắm, muối, hạt nêm, hạt tiêu.\r\n2. Các bước chế biến món sườn rang cay\r\nBước 1: Sườn non khi mua về các bạn hãy rửa sạch rồi chặt thành những miếng vừa ăn sau đó bạn hãy đun 1 nồi nước sôi cho ít muối vào rồi trần qua sườn để làm sạch sườn và khử đi mùi hôi. Sau đó bạn hãy vớt sườn ra để ráo nước rồi cho các gia vị: mắm, muối, hạt nêm, hạt tiêu vào sườn trộn thật đều và để ướp khoảng 10 – 15 phút.\r\n\r\nBước 2: Tỏi bóc vỏ đập dập. Gừng cạo vỏ giã nhỏ, Ớt thái thành những lát mỏng.\r\n\r\nBước 3: Khi sườn đã ướp xong thì bạn hãy chuẩn bị một cái chảo sạch đổ dầu vào đun nóng già thì lúc đó bạn hãy cho sườn vào chảo chiên cho sườn chuyển sang màu vàng đậm và vớt ra đĩa có lót giấy thấm dầu ở dưới. một điều khi chiên sườn các bạn hãy cho nhiều dầu và chiên với lửa vừa để sườn sẽ chín và vàng đều.\r\nBước 4: Tiếp đó bạn hãy cho bớt dầu ra chén con rồi đun nóng chảo và cho tỏi băm vào trong chảo phi thơm rồi cho tiếp phần sườn đã chiên vào trong chảo đảo thật đều tay. Đảo thật đều cho sườn gần chín thì bạn cho thêm gừng giã nhỏ, ớt thái lát vào trong chảo đảo đều sau đó bạn hãy nêm lại các gia vị sao cho vừa khẩu vị. Bạn đảo khoảng 3 phút thì bạn hãy tắt bếp rồi cho sườn ra đĩa rắc thêm ít tiêu lên trên và trang trí món ăn cho đẹp mắt để giúp món ăn hấp dẫn hơn. Khi thưởng thức các bạn sẽ cảm nhận được vị đậm đà và vị cay độc đáo trong từng miếng sườn thơm ngon ngọt thịt, đảm bảo với hương vị này khi thưởng thức không ai có thể khước từ.', 55000, NULL, 'sunsotcay.jpg', 'hộp', 1, '2019-05-09 08:50:38', '2019-05-09 08:50:38'),
(83, 'Nem ráng', 16, 'Nguyên liệu làm nem rán:\r\n\r\n– 500gr thịt sấn vai xay\r\n\r\n– 1 củ hành tây\r\n\r\n– 1 củ đậu, 1 củ cà rốt\r\n\r\n– Hành tươi, rau mùi\r\n\r\n– 10 tai mộc nhĩ, 10 cái nấm hương, 1 quả trứng gà\r\n\r\n– 30gr miến khô\r\n\r\n– Gia vị, hạt tiêu\r\n\r\n– Bánh đa nem\r\n\r\nCách làm nem rán ngon đúng chuẩn miền Bắc:\r\n\r\nBước 1: Chuẩn bị nguyên liệu làm nhân nem rán\r\n\r\nĐể học cách làm nem rán ngon, bạn nên chọn phần thịt lợn sấn sẽ nhiều nạc mềm hơn.\r\nThịt lợn sấn mua về băm nhỏ, hành tây thái nhỏ, cà rốt thái sợi hoặc thái hạt lựu thật bé.\r\nMộc nhĩ, nấm hương ngâm nước nóng, bỏ chân, rửa sạch lại rồi thái sợi bé.\r\nMiến ngâm nước ấm cho mềm ra rồi dùng kéo cắt nhỏ.\r\nTất cả những nguyên liệu này được dùng để trộn với nhau làm nhân nem.\r\nHành lá rửa sạch, thái nhỏ phần lá hành. Phần củ còn lại bạn đập dập, bằm nhỏ. Cho hành lá vào trộn cùng nguyên liệu làm nem sẽ giúp món nem ngon hơn.\r\nBước 2: Trộn nhân nem\r\n\r\nTrộn đều các loại nguyên liệu đã băm với gia vị, hạt tiêu vừa khẩu vị, ta đã có nhân nem rán ngon.\r\nĐể món nem rán ngon, bạn ướp nhân nem trong vòng 5-7 phút cho ngấm đều.\r\nĐập trứng vào, trộn đều. Nhớ cho một quả trứng trước, sau khi đảo đều nhân nem, nếu thấy nhân khô có thể cho thêm quả nữa, tuy nhiên không nên cho trứng quá nhiều khiến nhân bị ướt, khó quấn thành nem.\r\nBước 3: Gói nem\r\n\r\nPha 1 thìa giấm, 1 thìa đường với chút nước lọc dùng để nhúng bánh đa nem trước khi gói. Công đoạn này sẽ giúp bánh đa mềm ra, khi rán nem giúp nem giòn và vàng hơn.\r\nBạn nên làm bánh tráng thật mềm sẽ giúp bạn cuốn nem rán dễ hơn.\r\nTrải bánh đa nem ra mặt phẳng, múc 1 thìa nhân nem vào khoảng 1/3 diện tích tấm bánh đa nem.\r\nCho nhân vào trong bánh đa nem nhé!\r\nGấp 2 mép bánh lại và cuộn kín. Quá trình này bạn không cần cuộn quá chặt tay vì nhân có độ nở, nếu cuộn chặt tay khi rán nem dễ bị bục.\r\nCuốn nem lỏng vừa, không nên cuốn chặt nem sẽ dễ bị vỡ trong quá trình rán.\r\nBước 4: Rán nem cho giòn\r\n\r\nLàm nóng dầu trong chảo, cho nem vào rán ngập dầu hoặc rán bằng chiều cao nửa miếng nem rồi tiến hành lật. Rán đến khi nem vàng, giòn là được\r\nBước 5: Pha nước chấm nem rán thật ngon, hài hòa, đúng vị', 30000, NULL, 'nemran.jpg', 'cái', 1, '2019-05-09 08:52:40', '2019-05-09 08:52:40'),
(84, 'Fomai que', 16, 'Chuẩn bị nguyên liệu:\r\n\r\n- 1 gói phô mai mozzarella\r\n- 2 quả trứng gà\r\n- 1 gói bột xù\r\n- Dầu ăn\r\nHướng dẫn cách làm:\r\n- Bước 1: Phô mai đem cắt thành từng thanh dài, to đều nhau.\r\n- Bước 2: Bạn cho bột xù vào máy xay cho nhỏ 1 chút rồi đổ ra bát hoặc hộp nhựa, lưu ý: nếu ko xay sơ qua bột xù sẽ hơi to khó bám vào phô mai hơn.\r\n- Bước 3: Đập trứng gà ra tô và đánh tan sau đó gắp từng thanh phô mai nhúng qua trứng gà, lấy ra cho vào tô bột xù lăn đều cho bột xù bám đều xung quanh miếng phô mai, tiếp theo bạn gắp miếng phô mai nhúng qua trứng gà thêm 1 lần nữa và lại lăn qua bột xù. Như vậy chúng ta sẽ nhúng qua trứng 2 lần và lăn qua bột xù 2 lần.\r\n- Bước 4: Phô mai sau khi đã tẩm bột xong thì xếp ra đĩa và tiếp tục làm cho hết nguyên liệu. Cho đĩa phô mai vào ngăn đá tủ lạnh để 1 tiếng cho phô mai cứng lại.\r\n- Bước 5: Sau 1 tiếng bạn cho nhiều dầu ăn vào nồi đun cho dầu nóng, lấy phô mai ra và nhanh tay cho từng thanh vào nồi dầu chiên khoảng 20-30 giây là vớt ra ngay, để phô mai que chiên xù lên giấy thấm dầu và thưởng thức ngay khi còn nóng.', 20000, NULL, 'fomaique.jpg', 'cái', 1, '2019-05-09 08:55:28', '2019-05-09 08:55:28'),
(85, 'TOKBOKI', 16, 'Bánh gạo cay tokbokki là một trong những món ăn đường phố Hàn Quốc được rất nhiều bạn trẻ yêu thích', 35000, 32000, 'tokboki.jpg', 'cái', 1, '2019-05-09 08:59:42', '2019-05-09 08:59:42'),
(86, 'TOKBOKI phô mai', 16, 'Nguyên liệu liên quan\r\nBánh gạo cắt sẵn: ( 1kg làm được ~ 10 đĩa nhỏ)\r\nSốt tokbokki pha sẵn: ( túi 1kg nấu ~3kg bánh gạo)\r\nPhomai mozzarella khối: \r\nPhomai mozzarella bào:\r\nHướng dẫn\r\nBánh gạo cắt sẵn BQ tủ mát.\r\n\r\nKhi khách gọi: cho bánh gạo, cá viên, trứng cút vào nồi, thêm ~100ml nước, cho sốt bánh gạo, đun sôi rồi hạ nhỏ lửa đến khi bánh gạo chín mềm, nước sốt sánh, sệt. Nếu cần thì thêm nước trong lúc nấu.\r\nCho ra đĩa, rắc phomai bào lên, quay vi sóng 1 phút cho phomai chảy ra, rắc thêm ít vừng.\r\n\r\nĐịnh lượng tham khảo: 100g bánh gạo (15 miếng), 3 viên cá viên cắt đôi, 3 quả trứng cút, 15ml sốt cay vừa, 15ml sốt ít cay, 50g phômai à giá cost 17k\r\n\r\nNếu bán nhiều: có thể nấu sẵn thì sẽ cho nhiều nước và đun bánh gạo~ 30 phút để nước sốt ngấm vào bánh sẽ ngon hơn.', 40000, NULL, 'tokbokiphomai.jpg', 'cái', 1, '2019-05-09 09:03:07', '2019-05-09 09:03:07'),
(87, 'Gà phô mai', 16, 'Món gà cay phô mai được chế biến với các loại nguyên liệu khá đơn giản và phổ biến như: thịt gà, phô mai, gừng, tỏi, siro gạo… Không chỉ vậy mà chúng còn cung cấp rất nhiều dưỡng chất tốt cho sức khỏe.Không chỉ riêng thịt gà mà phô mai cũng là một nguồn dinh dưỡng giàu protein và chất béo, chúng cũng cấp cho cơ thể chúng ta các loại vitamin bổ ích. Bên trong phô mai còn có cả canxi, sodium, kẽm…', 40000, 20000, 'gaphomai.jpg', 'cái', 1, '2019-05-09 09:07:41', '2019-05-09 09:07:41'),
(88, 'Trà sữa trân châu', 12, 'Trà sữa trân châu đường đen', 10000, NULL, 'tstranchau.jpg', 'cái', 1, '2019-05-09 09:17:29', '2019-05-09 09:17:29'),
(89, 'Trà sữa trân châu đường đen', 12, 'Trà sữa trân châu đường đen', 12000, NULL, 'tstranchauduongden.jpg', 'cái', 1, '2019-05-09 09:19:07', '2019-05-09 09:19:07'),
(90, 'Trà sữa trân châu trắng', 12, 'Trà sữa trân châu trắng', 12000, NULL, 'tstranchautrang.jpg', 'cái', 1, '2019-05-09 09:20:13', '2019-05-09 09:20:13'),
(91, 'Trà sữa trân châu dừa', 12, 'Trà sữa trân châu dừa', 11000, NULL, 'tsdua.jpg', 'cái', 1, '2019-05-09 09:25:28', '2019-05-09 09:25:28'),
(92, 'Trà sữa thái', 12, 'Trà sữa thái', 15000, NULL, 'tsthai1.jpg', 'cái', 1, '2019-05-09 09:28:01', '2019-05-09 09:28:01'),
(93, 'Trà sữa đào', 12, 'Trà sữa đào', 15000, NULL, 'tsdao.jpg', 'cái', 1, '2019-05-09 09:32:24', '2019-05-09 09:32:53'),
(94, 'Trà sữa dâu', 12, 'Trà sữa dâu', 15000, NULL, 'tsdau.jpg', 'cái', 1, '2019-05-09 09:34:07', '2019-05-09 09:34:07'),
(95, 'Trà sữa socola', 12, 'Trà sữa socola', 15000, NULL, 'tssocola.jpg', 'cái', 1, '2019-05-09 09:39:06', '2019-05-09 09:39:06'),
(96, 'Trà sữa bạc hà', 12, 'Trà sữa bạc hà', 15000, 10000, 'tsbacha.jpg', 'cái', 1, '2019-05-09 09:47:21', '2019-05-09 09:47:21'),
(97, 'Trà đào', 12, 'Trà đào', 15000, NULL, 'tradao.jpg', 'cái', 1, '2019-05-09 09:49:39', '2019-05-09 09:49:39'),
(98, 'Trà nho', 12, 'Trà nho', 10000, NULL, 'tranho.jpg', 'cái', 1, '2019-05-09 09:53:12', '2019-05-09 09:53:12'),
(99, 'Trà chanh', 12, 'Trà chanh', 12000, NULL, 'trachanh.jpg', 'cái', 1, '2019-05-09 09:55:05', '2019-05-09 09:55:05'),
(100, 'Trà tắc', 12, 'Trà tắc', 11000, NULL, 'tratac.jpg', 'cái', 1, '2019-05-09 09:57:03', '2019-05-09 09:57:03'),
(101, 'Trà Sữa Pudding Trứng', 12, 'Trà Sữa Pudding Trứng', 20000, NULL, 'tspuding.jpg', 'cái', 1, '2019-05-09 10:00:15', '2019-05-09 10:00:15'),
(102, 'Trà Sữa Caramen', 12, 'Trà Sữa Caramen', 20000, NULL, 'tscaramen.jpg', 'cái', 1, '2019-05-09 10:03:56', '2019-05-09 10:03:56'),
(103, 'Trà Sữa hạt dẽ', 12, 'Trà Sữa hạt dẽ', 15000, NULL, 'tra-sua-hat-de.png', 'cái', 1, '2019-05-09 10:05:15', '2019-05-09 10:05:15'),
(104, 'Trà Sữa Kem', 12, 'Trà Sữa Kem', 14000, NULL, 'tskem.jpg', 'cái', 1, '2019-05-09 10:07:24', '2019-05-09 10:07:24'),
(105, 'Trà Sữa Matcha', 12, 'Trà Sữa Matcha', 24000, NULL, 'tsmatcha.jpg', 'cái', 1, '2019-05-09 10:10:08', '2019-05-09 10:10:08'),
(106, 'Kem Dâu', 13, 'Kem Dâu', 12000, NULL, 'kemdau.jpg', 'cái', 1, '2019-05-09 10:13:05', '2019-05-09 10:13:05'),
(107, 'Kem Socola', 13, 'Kem Socola', 20000, 18000, 'kemsocala.jpg', 'cái', 1, '2019-05-09 10:14:11', '2019-05-09 10:14:11'),
(108, 'Kem Vani', 13, 'Kem Vani', 20000, 18000, 'kemvani.jpg', 'cái', 1, '2019-05-09 10:14:56', '2019-05-09 10:14:56'),
(109, 'Kem Dừa', 13, 'Kem Dừa', 20000, 18000, 'kemdua.jpg', 'cái', 1, '2019-05-09 10:16:05', '2019-05-09 10:16:05'),
(110, 'Kem sầu riêng', 13, 'Kem sầu riêng', 20000, 18000, 'kemxaurieng.jpg', 'cái', 1, '2019-05-09 10:17:28', '2019-05-09 10:17:28'),
(111, 'Kem Khoai Môn', 13, 'Kem Khoai Môn', 20000, 12000, 'kem-khoai-mon.jpg', 'cái', 1, '2019-05-09 10:18:24', '2019-05-09 10:18:24'),
(112, 'Kem Trà Xanh', 13, 'Kem Trà Xanh', 14000, NULL, 'kemtraxanh.jpg', 'hộp', 1, '2019-05-09 10:20:11', '2019-05-09 10:20:11'),
(113, 'Kem Nho', 13, 'Kem Nho', 14000, NULL, 'kemnho.jpg', 'hộp', 1, '2019-05-09 10:21:49', '2019-05-09 10:21:49'),
(114, 'Kem Chuối', 13, 'Kem Chuối', 14000, NULL, 'kemchuoi.jpg', 'cái', 1, '2019-05-09 10:25:17', '2019-05-09 10:25:17'),
(115, 'Americano', 14, 'Americano', 10000, NULL, 'americano.jpg', 'cái', 1, '2019-05-09 10:27:37', '2019-05-09 10:27:37'),
(116, 'Cà phê đen', 14, 'Cà phê đen', 10000, NULL, 'cfden.jpg', 'cái', 1, '2019-05-09 10:29:02', '2019-05-09 10:29:02'),
(117, 'Cà phê sữa', 14, 'Cà phê sữa', 10000, NULL, 'fssua.jpg', 'cái', 1, '2019-05-09 10:30:01', '2019-05-09 10:30:01'),
(118, 'Capuchino', 14, 'Capuchino', 20000, 15000, 'capuchino.jpg', 'cái', 1, '2019-05-09 10:31:14', '2019-05-09 10:31:14'),
(119, 'Mocha (cà phê, socola)', 14, 'cà phê, socola', 20000, 15000, 'mocha.jpg', 'cái', 1, '2019-05-09 10:32:42', '2019-05-09 10:32:42'),
(120, 'Sinh tố dừa', 15, 'Sinh tố dừa', 20000, NULL, 'stdua.jpg', 'cái', 1, '2019-05-09 10:35:46', '2019-05-09 10:35:46'),
(121, 'Sinh tố bơ', 15, 'Sinh tố bơ', 20000, NULL, 'stbo.jpg', 'cái', 1, '2019-05-09 10:36:52', '2019-05-09 10:36:52'),
(122, 'Sinh tố soài', 15, 'Sinh tố soài', 20000, NULL, 'stxoai.png', 'cái', 1, '2019-05-09 10:37:46', '2019-05-09 10:37:46'),
(123, 'Sinh tố mãng cầu', 15, 'Sinh tố mãng cầu', 20000, NULL, 'stmangcau.jpg', 'cái', 1, '2019-05-09 10:39:08', '2019-05-09 10:39:08'),
(124, 'Sinh tố dưa hấu', 15, 'Sinh tố dưa hấu', 20000, NULL, 'stduahau.jpg', 'cái', 1, '2019-05-09 10:40:10', '2019-05-09 10:40:10'),
(125, 'Sinh tố chuối', 15, 'Sinh tố chuối', 20000, NULL, 'sinh-to-chuoi-sua-tuoi.jpg', 'cái', 1, '2019-05-09 10:41:50', '2019-05-09 10:41:50'),
(126, 'Sinh tố sầu riêng', 15, 'Sinh tố sầu riêng', 20000, NULL, 'SauRieng1.jpg', 'cái', 1, '2019-05-09 10:43:02', '2019-05-09 10:43:02'),
(127, 'Sinh tố Sapoche', 15, 'Sinh tố Sapoche', 20000, NULL, '68aaad2031658619cae7b828af8dcf1b.jpg', 'cái', 1, '2019-05-09 10:43:44', '2019-05-09 10:43:44'),
(128, 'Sinh tố Thơm', 15, 'Sinh tố Thơm', 20000, NULL, 'stthom.jpg', 'cái', 1, '2019-05-09 10:45:17', '2019-05-09 10:45:17'),
(129, 'Sinh tố Kiwi', 15, 'Sinh tố Kiwi', 20000, NULL, '9105ee431505fc5ba514.jpg', 'cái', 1, '2019-05-09 10:46:12', '2019-05-09 10:46:12'),
(130, 'Tôm Sú Nướng', 17, 'Tôm Sú Nướng', 10000, NULL, 'tom-su-nuong.jpg', 'cái', 1, '2019-05-09 10:48:23', '2019-05-09 10:48:23'),
(131, 'Tôm Nướng Muối Ớt', 17, 'Tôm Nướng Muối Ớt', 12000, NULL, 'tom-nuong-muoi-ot.jpg', 'cái', 1, '2019-05-09 10:49:12', '2019-05-09 10:49:12'),
(132, 'Bò Nướng Lá Lốt', 17, 'Bò Nướng Lá Lốt', 10000, NULL, 'bonuonglalot.jpg', 'cái', 1, '2019-05-09 10:50:11', '2019-05-09 10:50:11'),
(133, 'Bò Nướng Lạc Cảnh', 17, 'Bò Nướng Lạc Cảnh', 10000, NULL, 'bonuonglaccanh.jpg', 'cái', 1, '2019-05-09 10:51:12', '2019-05-09 10:51:12'),
(134, 'Xiêng bò rau củ nướng', 17, 'Xiêng bò rau củ nướng', 10000, NULL, 'heosiengnuong.jpg', 'cái', 1, '2019-05-09 10:53:26', '2019-05-09 10:53:26'),
(135, 'Lợn rừng xiên nướng', 17, 'Lợn rừng xiên nướng', 10000, NULL, 'lonrungxiennuong.jpg', 'cái', 1, '2019-05-09 10:54:47', '2019-05-09 10:54:47'),
(136, 'Lạp Xưởng Nướng', 17, 'Lạp Xưởng Nướng', 10000, NULL, 'lapxuongnuong.jpg', 'cái', 1, '2019-05-09 10:55:48', '2019-05-09 10:55:48'),
(137, 'Chân gà nướng sa tế', 17, 'Chân gà nướng sa tế', 11000, NULL, 'chan-ga-nuong-sa-te.jpg', 'cái', 1, '2019-05-09 10:57:21', '2019-05-09 10:57:21'),
(138, 'Bắp nướng', 17, 'Bắp nướng', 8000, NULL, 'bapnuong.jpg', 'hộp', 1, '2019-05-09 10:58:26', '2019-05-09 10:58:26'),
(139, 'Khoai lang nướng', 17, 'Khoai lang nướng', 8000, NULL, 'nuong-khoai-lang.jpg', 'cái', 1, '2019-05-09 10:59:07', '2019-05-09 10:59:07'),
(140, 'Ếch nướng', 17, 'Ếch nướng', 22000, NULL, 'echnuong.jpg', 'cái', 1, '2019-05-09 11:00:42', '2019-05-09 11:00:42'),
(141, 'Bánh Pizza', 19, 'Bánh Pizza', 22000, NULL, 'piza.jpg', 'cái', 1, '2019-05-09 11:05:50', '2019-05-09 11:05:50'),
(142, 'Bánh Pizza Hải Sản', 19, 'Bánh Pizza Hải Sản', 27000, NULL, 'pizzahaisan.jpg', 'cái', 1, '2019-05-09 11:06:58', '2019-05-09 11:06:58'),
(143, 'Bánh Bông Lan Trứng Muối', 19, 'Bánh Bông Lan Trứng Muối', 12000, NULL, 'banhbonglantrungmuoi.jpg', 'cái', 1, '2019-05-09 11:08:24', '2019-05-09 11:08:24'),
(144, 'Bánh Bông Lan Trứng', 19, 'Bánh Bông Lan Trứng', 12000, NULL, 'banhbonglantrung.jpg', 'cái', 1, '2019-05-09 11:09:11', '2019-05-09 11:09:11'),
(145, 'Bánh Panke Sầu Riêng', 19, 'Bánh Panke Sầu Riêng', 10000, NULL, '1430967449-pancake-sau-rieng-6.jpg', 'cái', 1, '2019-05-09 11:09:41', '2019-05-09 11:09:41'),
(146, 'Bánh Crepe - Chocola', 19, 'Bánh Crepe - Chocola', 10000, NULL, 'crepe-chocolate.jpg', 'cái', 1, '2019-05-09 11:10:30', '2019-05-09 11:10:30'),
(147, 'Bánh Crepe - Chuối', 19, 'Bánh Crepe - Chuối', 10000, NULL, 'crepe-chuoi.jpg', 'cái', 1, '2019-05-09 11:10:51', '2019-05-09 11:10:51'),
(148, 'Bánh Crepe - Đào', 19, 'Bánh Crepe - Đào', 10000, NULL, 'crepe-dao.jpg', 'cái', 1, '2019-05-09 11:11:16', '2019-05-09 11:11:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT 'Hình Ảnh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, '', 'banner1.jpg', NULL, NULL),
(2, '', 'banner2.jpg', NULL, NULL),
(3, '', 'banner3.jpg', NULL, NULL),
(4, '', 'banner4.jpg', NULL, NULL),
(5, 'aaaaaaa', 'vZGU_544bc48782741.png', '2019-05-09 02:03:40', '2019-05-09 02:04:06'),
(7, 'Bánh s', 'MhW6_737474.png', '2019-05-09 02:47:21', '2019-05-09 02:47:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tên Sản Phẩm',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Miêu Tả',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hình Ảnh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(12, 'Trà Sữa', 'Trà Sữa Nhà Làm Ngon như Nhà Làm', 'tsthai.jpg', '2019-05-09 07:42:01', '2019-05-09 07:42:01'),
(13, 'Kem', 'kem ngon nè', 'kemchuoi.jpg', '2019-05-09 07:43:48', '2019-05-09 07:43:48'),
(14, 'Coffee', 'Cà phê ngon', '7DXX_traden.jpg', '2019-05-09 07:48:26', '2019-05-09 07:48:26'),
(15, 'Sinh Tố', 'Sinh Tố Hoa Quả', '7DXX_traden.jpg', '2019-05-09 07:48:55', '2019-05-09 07:49:52'),
(16, 'Đồ Ăn Vặt', 'Đồ Ăn Vặt', '54eaf93713081_-_07-germany-tuna.jpg', '2019-05-09 07:49:17', '2019-05-09 07:49:17'),
(17, 'Món Nướng', 'Đồ Ăn Nhanh', '40819_food_pizza.jpg', '2019-05-09 07:50:40', '2019-05-09 07:56:34'),
(19, 'Các Loại Bánh', 'Các Loại Bánh', '111.jpg', '2019-05-09 07:53:04', '2019-05-09 07:53:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Họ Tên',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Địa Chỉ',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `quyen`, `password`, `phone`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hobutky', 'hoky@gmail.com', 1, '$2y$10$U7iQZltNUWF3EPZR0VLFEO9Odf5aV/xOFe7480l24mQa4C30u8bzS', '01262616266', 'hue', NULL, '2019-05-09 07:38:50', '2019-05-09 07:38:50'),
(8, 'admin', 'admin@gmail.com', 1, '$2y$10$D.5KsNlfivazZeyZBOXEseD/z7iiEguXdDpxoSskJx/G63/oNL2Aq', NULL, NULL, NULL, '2019-05-09 14:03:36', '2019-05-09 14:03:36'),
(9, 'Nguyễn Ngọc Trường Vũ', 'truongvu@gmail.com', 1, '$2y$10$Xpy4wITQkLsJEDLahyAwvu7Fsm/TkdzyQQnMqWYzTjDmV/wcbJEdO', '0121666471', 'Quảng Trị', NULL, '2019-05-09 14:07:50', '2019-05-09 14:16:29');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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

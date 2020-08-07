-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2020 lúc 11:35 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `storedb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `Position` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Position`) VALUES
(1, 'Giày', 1),
(2, 'Dép', 0),
(3, 'Sandal', 3),
(5, 'Guốc', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `GroupID` int(11) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`GroupID`, `GroupName`) VALUES
(1, 'Admin'),
(3, 'Khách hàng'),
(4, 'Test'),
(6, 'test'),
(10, 'YN'),
(12, 'YN12'),
(13, 'YN1'),
(14, 'TESTT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufacturers`
--

CREATE TABLE `manufacturers` (
  `ManufacturerID` int(11) NOT NULL,
  `ManufacturerName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `manufacturers`
--

INSERT INTO `manufacturers` (`ManufacturerID`, `ManufacturerName`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'X-men'),
(7, 'Yame'),
(8, 'Vans'),
(9, 'Gucci');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`OrderID`, `ProductID`, `Quantity`) VALUES
(20, 21, 1),
(20, 23, 1),
(20, 24, 2),
(20, 25, 1),
(20, 27, 1),
(20, 30, 2),
(20, 32, 1),
(21, 37, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(22, 34, 1),
(22, 35, 1),
(22, 37, 1),
(22, 38, 1),
(23, 33, 1),
(23, 34, 1),
(23, 37, 1),
(23, 38, 1),
(24, 30, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(25, 34, 1),
(25, 35, 1),
(25, 38, 1),
(26, 27, 6),
(26, 28, 2),
(26, 29, 2),
(27, 33, 1),
(27, 34, 1),
(27, 36, 1),
(27, 37, 1),
(27, 38, 1),
(28, 24, 1),
(28, 25, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(29, 30, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(30, 28, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Sum` int(11) DEFAULT NULL,
  `Status` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `AddedDate`, `Address`, `Phone`, `Sum`, `Status`) VALUES
(20, 1, '2020-07-03 16:39:10', '51/10/2 Hòa Bình', '123456666', 77170000, b'0'),
(21, 1, '2020-07-02 16:40:33', '189 Hòa Bình', '9849384938', 55200000, b'0'),
(22, 23, '2020-07-01 16:54:55', 'Tây Sơn,Bình Định', '1298493', 66300000, b'0'),
(23, 23, '2020-06-30 11:24:28', 'Nhà tui', '0986731908', 59300000, b'0'),
(24, 23, '2020-06-29 11:25:38', 'Trường tui', '0965920378', 75100000, b'0'),
(25, 23, '2020-06-28 11:26:11', 'Nhà tui', '98191829189', 55000000, b'0'),
(26, 23, '2020-06-27 11:26:53', 'Nhà tui', '1298493', 72900000, b'0'),
(27, 23, '2020-07-03 11:27:34', 'Nhà nội', '109201920', 60600000, b'0'),
(28, 23, '2020-07-03 11:28:14', 'Ngoại tui mua cho tui', '92839283', 49690000, b'0'),
(29, 23, '2020-07-03 11:29:01', 'Trường tui', '9283928', 96800000, b'0'),
(30, 23, '2020-07-03 11:30:14', 'Nhà chú 5', '9283928', 63800000, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ManufacturerID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(1000) NOT NULL,
  `Body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ProductID`, `ManufacturerID`, `CategoryID`, `ProductName`, `ImageUrl`, `Price`, `Quantity`, `Description`, `Body`) VALUES
(21, 1, 1, 'Nike Air Zoom Pegasus', '244221961giay-nike-pegasus-35-nam-xam-01-800x800_0.jpg', 3190000, 10, 'oke', ''),
(22, 1, 1, 'Giày Nike Air Zoom Pegasus', '227630125giay-nike-pegasus-35-nam-xam-hong-01copy-800x800_0.jpg', 3190000, 10, 'Giày', 'Giày Nike Air Zoom Pegasus 35 Nam - Xám Đỏ\r\nGiày Nike Air Zoom Pegasus 35 siêu phẩm giày thể thao được chờ đợi nhất năm 2018 đã chính thức ra mắt. Nike Air Zoom Pegasus 35 với thiết kế cực kỳ độc đáo và áp dụng những công nghệ tiến bộ nhất thế giới, chắc chắn đây sẽ là mẫu giày không thể bỏ qua của bất cứ ai.'),
(23, 1, 1, 'Giày Nike Free RN ', '1947220317giay-nike-free-rn-2018-den-trang-01-800x800_0.jpg', 2590000, 10, 'Giày', 'Giày Nike Free RN 2018 Nam - Đen trắng\r\nGiày Free RN 2018 - 1 bước cải tiến hơn, đẹp hơn so với dòng 2017 trước đó.\r\nVới một đôi giày chạy bộ, phần đế giày chính là yếu tố cực kỳ quan trọng giúp bạn chạy nhanh hơn, bền bỉ hơn, bớt tốn sức hơn và đặc biệt an toàn hơn. Giày Nike Free RN 2018 hiểu điều đó, chính ở thiết kế năm 2018 này vẫn là đế Nike Free xẻ rãnh cực linh hoạt nhưng được cải tiến hơn khi phần đế nâng cao hơn sau gót. Thiết kế thông minh cố định bàn chân bạn với độ an toàn là tuyệt đối, tránh lật gót, cùng những chấn thương không đáng có khi chạy. \r\nMặc dù vậy thì đôi giày vẫn mang đến cảm giác thoải mái, nhẹ nhàng như trên mây. Giày Free RN 2018 với thiết kế đẹp mắt, cùng nhiều phối màu hài hòa cho bạn linh hoạt hơn khi kết hợp trang phục hàng ngày.'),
(24, 1, 1, 'Adidas Stan Smith', '263327853giay-adidas-Stan-Smith-01-800x800_0.jpg', 3900000, 10, 'Giày', ''),
(25, 2, 1, 'Adidas Alphabounce Instinct', '2011907844Giay-adidas-Alphabounce-Instinct-Nam-Do-Den-01-800x800_0.jpg', 2690000, 10, 'Giày', 'Giày adidas Alphabounce Instinct Nam - Đỏ Đen\r\nGiày adidas Alphabounce Instinct - năng động hơn, trẻ trung hơn, linh hoạt hơn.\r\nGiày adidas Alphabounce Instinct chính là một phiên bản nâng cấp của giày adias AlphaBounce trước đó. Được trang bị đầy đủ cho một đôi giày running: đế cao cố định, chống lật cổ chân, thuôn dần về mũi tạo nên tính thẩm mĩ cao cùng với dế Bounce đàn hồi cực tốt. Không chỉ có vậy, chất liệu Engineered Mesh tạo độ thoáng khí tối đa.\r\nGiày adidas Alphabounce Instinct mang đến hiệu năng cao, đa dụng lại có giá cực mềm. Đây chính là lựa chọn khá tuyệt vời nếu bạn chưa có khả năng tài chính để thử sức với UltraBoost thần thánh của adidas.'),
(26, 1, 2, 'Adidas Bánh Mì', '135941958134584070_2121207331441787_1351947153777360896_o-800x533.jpg', 12950000, 10, '', ''),
(27, 1, 1, 'Nike Air Force 1 Para Noise', '1528087793bg_page_in.jpg', 3200000, 10, '', ''),
(28, 1, 1, 'Balenciaga Triple S Clear Sole WMS', '694577580G-DRAGON_hd_1600.png', 19900000, 10, '', ''),
(29, 1, 1, 'Stripe Rubber Slide', '2137754905olivia-kim-air-max-98.jpg', 6950000, 10, '', ''),
(30, 1, 5, 'Ankle-Boot', '508439590Ankle-Boot.jpg', 19900000, 10, 'Được chế tác từ một loại vải co giãn màu đen vừa khít quanh bàn chân và mắt cá chân, đôi giày cao gót giữa được tăng cường bởi G Horsebit Interlocking. Hợp nhất hai mã đặc biệt nhất của nó thành một biểu tượng, phần cứng được sao chép từ một mảnh hiếm từ kho lưu trữ Gucci, được chọn vì sự hấp dẫn đương đại của nó. Dòng Gucci Zumi lấy tên từ nữ diễn viên và nhạc sĩ thử nghiệm Zumi Rosow, người đã đi trên đường băng Xuân Hè 2019 mang theo chiếc túi ban đầu.', '\r\n•	Vải co giãn màu đen\r\n•	Ốp da màu đen\r\n•	Lồng ghép G Horsebit, lấy cảm hứng từ một tác phẩm lưu trữ, phần cứng kết hợp hai họa tiết lịch sử nhất của Nhà trong hỗn hợp kim loại\r\n•	3 \"chiều cao gót\r\n•	Chiều cao trục 6,7 \"\r\n•	Các phép đo dựa trên kích thước 37 (IT)\r\n•	Sản xuất tại Ý\r\n\r\n'),
(32, 9, 5, 'Gucci-Zumi', '1058983159Gucci-Zumi.jpg', 17900000, 10, 'Một đôi giày cao gót mũi nhọn ở giữa bằng da màu trắng được tăng cường bởi G Horsebit. Hợp nhất hai mã đặc biệt nhất của nó thành một biểu tượng, phần cứng được sao chép từ một mảnh hiếm từ kho lưu trữ Gucci, được chọn vì sự hấp dẫn đương đại của nó. Dòng Gucci Zumi lấy tên từ nữ diễn viên và nhạc sĩ thử nghiệm Zumi Rosow, người đã đi trên đường băng Xuân Hè 2019 mang theo chiếc túi ban đầu.', '•	Da trắng\r\n•	Gucci in lót\r\n•	Lồng ghép G Horsebit, lấy cảm hứng từ một tác phẩm lưu trữ, phần cứng kết hợp hai họa tiết lịch sử nhất của Nhà trong hỗn hợp kim loại\r\n•	3 \"chiều cao gót\r\n•	Sản xuất tại Ý\r\n'),
(33, 9, 5, 'Double-G', '1377683144Double-G.jpg', 15900000, 10, 'Loa loa bằng da màu hồng nhạt có hình dáng thon với ngón chân vuông tròn, được hoàn thiện với phần cứng Double G dọc theo dây đeo. Kể từ khi giới thiệu hình dạng cổ điển của nó vào những năm 1950, giày lấy cảm hứng từ preppy đã tiếp tục ảnh hưởng của nó, được thiết kế lại với các chi tiết khác nhau, trong các hình thức và vật liệu mới.', '•	Da hồng\r\n•	Gucci in lót\r\n•	Đôi G\r\n•	1 \"chiều cao gót\r\n•	Sản xuất tại Ý\r\n'),
(34, 9, 5, 'Horsebit', '424840820Horsebit.jpg', 18900000, 10, 'Một trong những biểu tượng tiêu biểu nhất của Nhà tỏ lòng tôn kính đối với gốc rễ cưỡi ngựa của nó, Horsebit đặc trưng cho chiếc bơm da màu trắng này. Chơi với độ tương phản màu sắc, phong cách được làm phong phú thêm bởi một chi tiết dây chuyền màu bạc cho cảm giác hiện đại.', '•	Da trắng\r\n•	Phụ nữ\r\n•	Gucci lót da\r\n•	Sản phẩm này có chứa da được làm thông qua một quá trình thuộc da không có crôm thay thế, làm giảm dấu chân môi trường so với các phương pháp truyền thống.\r\n•	Ngựa\r\n•	Chi tiết chuỗi\r\n•	Hình dạng ngón chân nhọn\r\n•	Gót chân điêu khắc\r\n•	Chiều cao gót 3,7 \"\r\n'),
(35, 9, 5, 'Light-Leather', '1142168142Light-Leather.jpg', 22900000, 10, 'Một máy bơm dây đeo T với một nền tảng xếp chồng lên nhau.', '•	Da đen\r\n•	Dây đeo\r\n•	Dây đeo mắt cá chân có thể điều chỉnh\r\n•	Giày cao gót\r\n•	Gót chân 3,75 \"với nền tảng 2,25\"; 6 \"tổng chiều cao gót\r\n•	Sản xuất tại Ý\r\n'),
(36, 9, 3, 'GG-Lame-Sandal', '1793548859GG-Lame-Sandal.jpg', 1300000, 10, 'Một chiếc giày Gucci đặc trưng được mô phỏng lại với ý nghĩa biểu tượng mạnh mẽ cho mùa xuân hè 2020. Được xác định bởi phần cứng Double G lưu trữ từ những năm 70, sandal trượt được trình bày trong vải chéo GG gốc chéo, một cặp đôi vượt thời gian để tỏ lòng tôn kính với di sản của Nhà.', '•	Màu be / gỗ mun chéo chéo vải gốc GG\r\n•	Ốp da màu đen\r\n•	Phần cứng tông vàng sáng bóng\r\n•	Da lót có in hình Gucci\r\n•	Đôi G\r\n•	.6 \"chiều cao gót\r\n•	Sản xuất tại Ý\r\n'),
(37, 9, 3, 'Light-Womens-GG', '997460792Light-Womens-GG.jpg', 11300000, 10, 'Một loại vải quan trọng xuất hiện trong suốt bộ sưu tập Xuân Hè 2020, đôi dép trượt này có tính năng Di sản GG lamé, một chất liệu từ kho lưu trữ đã được cung cấp cho mùa này và kết hợp với hình dạng và phong cách hiện đại. Chiếc giày được hoàn thành bởi một đế giày lấy cảm hứng từ retro.', '•	Di sản màu nâu và màu be GG lamé\r\n•	Đế đế với đáy cao su\r\n•	Chiều cao 2,2 \"\r\n•	Sản xuất tại Ý\r\n'),
(38, 9, 3, 'Matelass-Canvas-sandal', '1145259869Matelass-Canvas-sandal.jpg', 13200000, 10, 'Một chiếc giày Gucci đặc trưng được mô phỏng lại với ý nghĩa biểu tượng mạnh mẽ cho mùa xuân hè 2020. Được xác định bởi phần cứng Double G lưu trữ từ những năm 70, sandal trượt được trình bày trong vải chéo GG gốc chéo, một cặp đôi vượt thời gian để tỏ lòng tôn kính với di sản của Nhà.', '•	Màu be / gỗ mun chéo chéo vải gốc GG\r\n•	Ốp da màu đen\r\n•	Phần cứng tông vàng sáng bóng\r\n•	Da lót có in hình Gucci\r\n•	Đôi G\r\n•	.6 \"chiều cao gót\r\n•	Sản xuất tại Ý\r\n'),
(39, 9, 3, 'Sandal-Double-G', '361287314Sandal-Double-G.jpg', 14300000, 10, 'Các tông màu pastel thêm những mảng màu tinh tế cho các phong cách thiết yếu trong suốt bộ sưu tập Pre-Fall 2020. Bây giờ là một vật liệu biểu tượng, da chevron matelassé định nghĩa sandal trượt này trong một màu hồng mềm mại. Chiếc giày được hoàn thành bởi phần cứng monogram của House, một thiết kế lưu trữ từ \'70s\' bằng kim loại màu bạc.', '•	Da chelron màu hồng pastel\r\n•	Phụ nữ\r\n•	Phần cứng tonala\r\n•	Đôi G\r\n•	.6 \"chiều cao gót\r\n•	Sản xuất tại Ý\r\n'),
(40, 9, 3, 'Womens-Double-G', '1505875603Womens-Double-G.jpg', 16400000, 10, 'Được trình bày bằng da matelassé màu trắng với họa tiết chéo, sandal trượt gợi nhớ đến dòng túi xách GG Marmont. Phong cách đáng thèm muốn được xác định bởi phiên bản đèn pin kết cấu của Double G, một sản phẩm đương đại trên khóa thắt lưng lưu trữ Gucci từ những năm 70.', '•	Da chéo màu trắng\r\n•	Phụ nữ\r\n•	Da màu xanh đậm\r\n•	Kết cấu Torchon Double G\r\n•	.6 \"chiều cao gót\r\n•	Sản xuất tại Ý\r\n\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `PassWord` varchar(32) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `GroupID`, `FullName`, `UserName`, `PassWord`, `Email`) VALUES
(1, 1, 'admin', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'ynhup1999@gmail.com'),
(21, 3, 'Võ Kim Hoa', 'hoa', '123', '1@gmail.com'),
(22, 3, 'tandat', 'dat09', 'c20ad4d76fe97759aa27a0c99bff6710', 'dat@gmail.com'),
(23, 3, 'Như', 'Như', 'c4ca4238a0b923820dcc509a6f75849b', 'meocon@gmail.com'),
(24, 3, 'Thảo', 'Thảo', 'c4ca4238a0b923820dcc509a6f75849b', 'thopi@gmail.com'),
(25, 3, 'NCQ', 'quyetnc', '4297f44b13955235245b2497399d7a93', 'meoconlonto2n@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`GroupID`);

--
-- Chỉ mục cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`ManufacturerID`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `ManufacturerID` (`ManufacturerID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UserName` (`UserName`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `GroupID` (`GroupID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `GroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `ManufacturerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ManufacturerID`) REFERENCES `manufacturers` (`ManufacturerID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`GroupID`) REFERENCES `groups` (`GroupID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

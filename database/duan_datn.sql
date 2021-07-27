-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 27, 2021 lúc 06:49 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan_datn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` bigint(20) UNSIGNED NOT NULL,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `a_position_1`, `a_position_2`, `created_at`, `updated_at`) VALUES
(1, 'THÁNG 7 RỰC RỠ - SALE HẾT CỠ', 'thang-7-ruc-ro-sale-het-co', 0, 1, 1, 0, 'Đón chào Mùa hè sôi động cùng Đăng Quang với chương trình giảm giá hết cỡ và mua 1 tặng 1 HOT nhất trong năm.', '2021-07-17__912810965-z2585257868922-5f58acf2d0ceb3adde68979557e3a7c9.jpg', '<p>Sau thời gian thực hiện gi&atilde;n c&aacute;ch x&atilde; hội c&aacute;c cơ sở của Đăng Quang đ&atilde; quay trở lại hoạt động b&igrave;nh thường. Nh&acirc;n dịp n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng khi tham quan mua sắm trực tiếp tại showroom sẽ được nhận ngay ưu đ&atilde;i giảm gi&aacute; lớn cũng như chương tr&igrave;nh mua 1 tặng 1 v&ocirc; c&ugrave;ng hấp dẫn tại Đăng Quang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/z2585257892267_840a5b029a083a14b14dba600be069ab.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/z2585257892267_840a5b029a083a14b14dba600be069ab.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>H&agrave;ng ng&agrave;n mẫu đồng hồ nam, nữ cực Hot đ&atilde; sẵn s&agrave;ng l&ecirc;n kệ chờ đ&oacute;n chủ nh&acirc;n. H&atilde;y c&ugrave;ng Đăng Quang Watch tham khảo c&aacute;c mẫu đồng hồ hot nhất c&oacute; sẵn tại showroom nh&eacute;. Ngo&agrave;i phục vụ qu&yacute; kh&aacute;ch đến trực tiếp, Đăng Quang Watch c&ograve;n hỗ trợ ship h&agrave;ng tận nh&agrave; miễn ph&iacute; vận chuyển to&agrave;n quốc,</p>\r\n\r\n<p>Cụ thể từ ng&agrave;y 01/07/2021, Đăng Quang d&agrave;nh tặng ưu đ&atilde;i cực hấp dẫn:</p>\r\n\r\n<p><strong>1. Giảm gi&aacute; 10% tất cả c&aacute;c sản phẩm tr&ecirc;n to&agrave;n hệ thống bao gồm Đồng hồ, K&iacute;nh mắt, B&uacute;t k&yacute;, D&acirc;y da v&agrave; Hộp xoay</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/1565640287_donghonhapkhau15.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/1565640287_donghonhapkhau15.jpg\" /></a></p>\r\n\r\n<p><em><a href=\"https://www.dangquangwatch.vn/sp/18207/dong-ho-jacques-lemans-jl-11-16542zd.html\">Đồng hồ Jacques Lemans JL-11-1654.2ZD</a></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt giảm th&ecirc;m 5 - 10% cho kh&aacute;ch h&agrave;ng sở hữu thẻ Member hoặc thẻ Vip của Đăng Quang</p>\r\n\r\n<p><strong>2, Mua 1 - Tặng 1: Tặng ngay b&igrave;nh nước thời trang&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/793316697a718f2fd660.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/793316697a718f2fd660.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt từ ng&agrave;y 01/07/2021 khi mua đồng hồ, k&iacute;nh mắt v&agrave; hộp xoay ngo&agrave;i ch&iacute;nh s&aacute;ch giảm gi&aacute; 10%, kh&aacute;ch h&agrave;ng sẽ được tặng ngay 1 b&igrave;nh nước thời trang c&oacute; logo cực xinh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3,&nbsp;Flash sale với chi nh&aacute;nh ONLINE&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/1067122266_donghonhapkhauuw7.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/1067122266_donghonhapkhauuw7.jpg\" /></a></p>\r\n\r\n<p><em><a href=\"https://www.dangquangwatch.vn/sp/17759/dong-ho-philippe-auguste-pa5008c.html.html\">Đồng hồ Philippe Auguste PA5008C</a></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i chương tr&igrave;nh giảm gi&aacute; tr&ecirc;n to&agrave;n hệ thống, Đăng Quang d&agrave;nh tặng ưu đ&atilde;i đặc biệt cho qu&yacute; kh&aacute;ch h&agrave;ng với chương tr&igrave;nh giảm gi&aacute; l&ecirc;n tới 50% cho c&aacute;c mẫu HOT nhất tại hệ thống. Số mẫu được thay đổi thường xuy&ecirc;n h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch vui l&ograve;ng truy cập&nbsp;https://www.dangquangwatch.vn/flash-sale.html để lựa chọn cho m&igrave;nh mẫu đồng hồ ưng &yacute; nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Ưu đ&atilde;i l&ecirc;n tới 70% cho c&aacute;c sản phẩm trong chương tr&igrave;nh Livestream&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/983619142_donghonhapkhauuw4.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/983619142_donghonhapkhauuw4.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/sp/17723/dong-ho-philippe-auguste-pa5008g.html.html\">Đồng hồ Philippe Auguste PA5008G</a></p>\r\n\r\n<p>Với kh&aacute;ch h&agrave;ng đ&atilde; theo d&otilde;i page Đăng Quang Watch h&agrave;ng ng&agrave;y c&oacute; thể săn cho m&igrave;nh những mẫu đồng hồ được giảm gi&aacute; l&ecirc;n tới 70% qua c&aacute;c chương tr&igrave;nh Livestream được diễn ra v&agrave;o l&uacute;c 10g c&aacute;c ng&agrave;y trong tuần từ thứ 2 đến thứ 7.</p>', 0, 0, '2021-07-17 06:16:10', '2021-07-17 06:21:36'),
(2, 'Nhanh tay sắm ngay đồng hồ chính hãng giá chỉ từ 1 triệu, bảo hành quốc tế lại được giảm ngay 40% cực hời.', 'nhanh-tay-sam-ngay-dong-ho-chinh-hang-gia-chi-tu-1-trieu-bao-hanh-quoc-te-lai-duoc-giam-ngay-40-cuc-hoi', 0, 1, 1, 0, 'Đồng hồ chính hãng, chất lượng tốt, chế độ hậu mãi chu đáo mà giá chỉ từ 1 triệu đồng chắc chắn chỉ có Đăng Quang Watch mới có thể đáp ứng được yêu cầu này.', '2021-07-17__512248194-dong-ho-qq-citizen-nhat-ban-20211903.jpg', '<p>Hơn thế nữa, qu&yacute; kh&aacute;ch h&agrave;ng đặt nếu nhanh tay&nbsp;<a href=\"https://www.dangquangwatch.vn/flash-sale.html\">đặt mua online</a>&nbsp;ngay h&ocirc;m nay c&ograve;n c&oacute; thể may mắn nhận th&ecirc;m ưu đ&atilde;i giảm ngay 40% v&ocirc; c&ugrave;ng hấp dẫn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_1.jpg\"><img alt=\"Đồng hồ Q&amp;Q chính hãng\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_1.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng cần phải bỏ ra số tiền lớn, đồng hồ ch&iacute;nh h&atilde;ng gi&aacute; chỉ từ 1 triệu đồng lu&ocirc;n được đ&ocirc;ng đảo kh&aacute;ch h&agrave;ng quan t&acirc;m t&igrave;m kiếm, đ&acirc;y cũng l&agrave; ph&acirc;n kh&uacute;c h&agrave;ng hot nhất tại Đăng Quang Watch với số lượng h&agrave;ng trăm chiếc được đặt mua mỗi ng&agrave;y. Một trong những thương hiệu nổi tiếng ở ph&acirc;n kh&uacute;c gi&aacute; rẻ ch&iacute;nh l&agrave; đồng hồ Q&amp;Q ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_2.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_2.jpg\" /></a></p>\r\n\r\n<p>Q&amp;Q L&agrave; thương hiệu thuộc tập đo&agrave;n Citizen lừng lẫy Nhật Bản, sử dụng bộ m&aacute;y Nhật theo ti&ecirc;u chuẩn khắt khe tại đ&acirc;y (Japan Movt). Q&amp;Q gi&aacute; rẻ nhưng lại c&oacute; những ưu điểm vuợt trội về độ bền, hoạt động ổn định v&agrave; &iacute;t sai số, kh&ocirc;ng cần bảo dưỡng nhiều.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_3.jpg\"><img alt=\"Đồng hồ chính hãng Q&amp;Q\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_3.jpg\" /></a></p>\r\n\r\n<p>Triết l&yacute; của thương hiệu bắt nguồn từ chữ &quot;Q&quot; l&agrave; chữ c&aacute;i viết tắt của &ldquo;<strong>Quest and Quality</strong>&nbsp;- Chất lượng v&agrave; Số lượng&quot;. C&oacute; nghĩa l&agrave; Q&amp;Q tạo ra những chiếc đồng hồ chất lượng, đ&aacute;ng tin cậy với số lượng lớn cho nhu cầu sử dụng của mọi người tr&ecirc;n to&agrave;n thế giới.</p>\r\n\r\n<p>Mẫu m&atilde; của Q&amp;Q cũng rất phong ph&uacute; v&agrave; đa dạng, mang đến nhiều sự lựa chọn d&agrave;nh cho cả nam v&agrave; nữ nhưng gi&aacute; th&agrave;nh lu&ocirc;n cạnh tranh</p>\r\n\r\n<p>Đồng hồ Q&amp;Q c&ograve;n c&oacute; khả năng chống nước tốt, tuổi thọ pin cao v&agrave; d&ugrave; c&oacute; va đập hay bị l&agrave;m rơi vẫn rất bền.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_4.jpg\"><img alt=\"Đồng hồ Q&amp;q nữ chính hãng\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_4.jpg\" /></a></p>\r\n\r\n<p>M&aacute;y Myota được sử dụng trong c&aacute;c mẫu đồng hồ Q&amp;Q, Đ&acirc;y l&agrave; bộ m&aacute;y do Citizen s&aacute;ng chế với ti&ecirc;u ch&iacute; giảm thiểu chi tiết kh&ocirc;ng cần thiết, tối ưu chi ph&iacute; sản xuất, đa dạng h&oacute;a loại m&aacute;y v&agrave; tập trung v&agrave;o chất lượng bền bỉ, để cuối c&ugrave;ng đạt đến mức gi&aacute; th&agrave;nh rẻ hơn nhiều so với đồng hồ Thụy Sĩ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_5.jpg\"><img alt=\"Đồng hồ Q&amp;Q chính hãng\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_5.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_6.jpg\"><img alt=\"Đồng hồ chính hãng\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_6.jpg\" /></a></p>\r\n\r\n<p>Bộ m&aacute;y Miyota đạt được sự t&iacute;n nhiệm rộng r&atilde;i tr&ecirc;n to&agrave;n thế giới bởi sự ch&iacute;nh x&aacute;c của n&oacute;, v&agrave; cũng nhờ thế m&agrave; Citizen v&agrave; Q&amp;Q đ&atilde; th&acirc;u t&oacute;m được thị trường đồng hồ trung cấp suốt hơn 40 năm qua.</p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_8.jpg\"><img alt=\"Đồng hồ chính hãng\" src=\"https://www.dangquangwatch.vn/lib/ckfinder/images/dong_ho_qq_citizen_nhat_ban_20211903_8.jpg\" /></a></p>\r\n\r\n<p>Về số lượng, Q&amp;Q hiện c&oacute; mặt ở 120 quốc gia tr&ecirc;n khắp thế giới, với số lượng sản phẩm m&agrave; gần như kh&ocirc;ng c&oacute; thương hiệu tầm trung n&agrave;o kh&aacute;c s&aacute;nh kịp. Mẫu m&atilde; của h&atilde;ng đa dạng từ d&acirc;y kim loại, d&acirc;y da cho đến d&acirc;y nhựa, c&oacute; nhiều thiết kế cho cả nam lẫn nữ hay thậm ch&iacute; l&agrave; trẻ em.</p>\r\n\r\n<p>Nếu bạn đang mong muốn t&igrave;m những mẫu đồng hồ đẹp v&agrave; thời trang với mức gi&aacute; dưới 1 triệu đồng, Q&amp;Q l&agrave; lựa chọn kh&ocirc;ng thể ph&ugrave; hợp hơn.<br />\r\n<br />\r\nKh&ocirc;ng chỉ c&oacute; vậy khi qu&yacute; kh&aacute;ch h&agrave;ng&nbsp;<a href=\"https://www.dangquangwatch.vn/flash-sale.html\">đặt mua online</a>&nbsp;ngay h&ocirc;m nay c&ograve;n c&oacute; thể sở hữu ngay những mẫu đồng hồ Q&amp;Q với mức gi&aacute; sale 40% rẻ kh&ocirc;ng tưởng, tuy nhi&ecirc;n h&atilde;y thật nhanh tay v&igrave; số lượng sản phẩm khuyến mại chỉ c&oacute; hạn</p>', 0, 0, '2021-07-17 06:19:39', NULL),
(3, 'Hỏi đáp về đồng hồ: Mặt kính đồng hồ đeo tay có bao nhiêu loại?', 'hoi-dap-ve-dong-ho-mat-kinh-dong-ho-deo-tay-co-bao-nhieu-loai', 1, 1, 2, 0, 'Những loại mặt kính của đồng hồ đeo tay, ưu điểm của từng loại kính?', '2021-07-17__2083705999-mat-kinh-dong-ho.jpg', '<p>Đồng hồ đeo tay hiện tại c&oacute; một số loại mặt k&iacute;nh ch&iacute;nh như sau:</p>\r\n\r\n<p>&ndash; K&iacute;nh sapphire: L&agrave; loại k&iacute;nh đắt nhất v&agrave; chống xước tốt nhất của đồng hồ</p>\r\n\r\n<p>&ndash; K&iacute;nh kho&aacute;ng chất: L&agrave; loại k&iacute;nh c&oacute; gi&aacute; th&agrave;nh rẻ nhưng kh&ocirc;ng chống được xước khi cọ s&aacute;t hay va chạm.</p>\r\n\r\n<p>&ndash; K&iacute;nh mica&nbsp;<strong><em>( Acrylic glass )</em></strong></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//upload/article/2083705999_mat-kinh-dong-ho.jpg\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//upload/article/2083705999_mat-kinh-dong-ho.jpg\" /></a></p>\r\n\r\n<p><strong>1.<em>Mặt k&iacute;nh Mica ( Acrylic glass )</em></strong></p>\r\n\r\n<p>- Thực chất đ&acirc;y kh&ocirc;ng phải l&agrave; k&iacute;nh m&agrave; l&agrave; 1 loại nhựa tổng hợp trong suốt, loại n&agrave;y thường d&ugrave;ng trong mẫu hompage hoặc những chiếc đồng hồ cổ hồi xưa như Poljot, Omega hompage...v&igrave; loại mặt n&agrave;y c&oacute; độ trong suốt tự nhi&ecirc;n, nh&igrave;n kh&aacute; đẹp. Ngo&agrave;i ra,mặt lồi &ndash; đặc trưng của k&iacute;nh Mica &ndash; gi&uacute;p t&ocirc;n mặt của chiếc đồng hồ l&ecirc;n, cảm gi&aacute;c mặt đồng hồ kh&aacute; cận cảnh v&agrave; cổ điển, điểm m&agrave; rất nhiều tay chơi đồng hồ ưa th&iacute;ch.</p>\r\n\r\n<p><strong><em>2.Mặt k&iacute;nh Sapphire&nbsp; ( Sapphire glass )</em></strong></p>\r\n\r\n<p>L&agrave; loại k&iacute;nh trong suốt c&oacute; độ cứng chỉ k&eacute;m hơn kim cương trong thang đo độ cứng ( khoảng hơn 2000 VK, của kim cương l&agrave; 10000 VK). V&igrave; vậy, n&oacute; c&oacute; khả năng chống xước v&agrave; chống va đập rất tốt.Rất tốt nhưng kh&ocirc;ng c&oacute; nghĩa l&agrave; ho&agrave;n hảo, ch&uacute;ng vẫn c&oacute; khả năng bị trầy khi bạn lấy kim cương ch&agrave; x&aacute;t l&ecirc;n hoặc sapphire cọ x&aacute;t với sapphire hoặc cạnh của l&aacute; l&uacute;a ch&agrave; x&aacute;t l&ecirc;n mặt k&iacute;nh sapphire th&igrave; bị trầy. Sapphire được chia th&agrave;nh 03 loại nhỏ sau:</p>\r\n\r\n<p><em>Sapphire tr&aacute;ng mỏng:</em></p>\r\n\r\n<p>L&agrave; loại k&iacute;nh thường tr&aacute;ng một lớp mỏng sapphire. Đối với loại k&iacute;nh n&agrave;y c&oacute; đặc điểm l&agrave; gi&ograve;n, dễ vở khi va chạm d&ugrave; rất nhẹ, Bởi bản chất của n&oacute; l&agrave; k&iacute;nh thường c&oacute; độ cứng k&eacute;m nhất trong c&aacute;c loại. Loại n&agrave;y thường được sử dụng cho c&aacute;c loại đồng hồ nh&aacute;i rẻ tiền. Khi sử dụng một thời gian th&igrave; bị trầy bởi v&igrave; sau v&agrave;i th&aacute;ng sử dụng lớp sapphire bị phai đi chỉ c&ograve;n lại k&iacute;nh thường. V&agrave; l&uacute;c đ&oacute; chỉ cần 1 vết quệt nhẹ l&agrave; bị xước ngay.</p>\r\n\r\n<p><em>Sapphire tr&aacute;ng dầy:</em></p>\r\n\r\n<p>Loại n&agrave;y tương tự như loại tr&ecirc;n nhưng được tr&aacute;ng dầy hơn n&ecirc;n c&oacute; thời gian sử dụng l&acirc;u hơn trước khi bị trầy xước.</p>\r\n\r\n<p><em>Sapphire khối:</em></p>\r\n\r\n<p>- Đ&acirc;y l&agrave; loại tốt nhất trong c&aacute;c loại k&iacute;nh sapphire, c&oacute; độ cứng chỉ thua mỗi kim cương. K&iacute;nh n&agrave;y c&oacute; độ chống xước cực tốt, c&oacute; thể m&agrave;i được b&ecirc; t&ocirc;ng m&agrave; kh&ocirc;ng hề xước. Th&ocirc;ng thường những đồng hồ ch&iacute;nh h&atilde;ng mới lắp k&iacute;nh n&agrave;y. V&igrave; loại k&iacute;nh n&agrave;y kh&aacute; đắt.</p>\r\n\r\n<p>- Độ cứng c&agrave;ng cao th&igrave; khả năng chống xước v&agrave; chống va đập c&agrave;ng tốt. C&oacute; một số người cho rằng, k&iacute;nh sapphire gi&ograve;n, dễ vỡ nhưng kh&ocirc;ng phải vậy, k&iacute;nh sapphire c&oacute; khả năng chống va đập tốt nhất trong c&aacute;c loại k&iacute;nh nếu c&ugrave;ng k&iacute;ch cỡ.</p>\r\n\r\n<p><strong><em>3.K&iacute;nh kho&aacute;ng chất ( Mineral glass )</em></strong></p>\r\n\r\n<p><a href=\"https://www.dangquangwatch.vn//lib/ckfinder/images/Mineral%20glass.JPG\"><img alt=\"\" src=\"https://www.dangquangwatch.vn//lib/ckfinder/images/Mineral%20glass.JPG\" /></a></p>\r\n\r\n<p>- Mineral Glass thực ra ch&iacute;nh l&agrave; mặt k&iacute;nh thường, c&oacute; độ cứng k&eacute;m hơn so với mặt k&iacute;nh Sapphire (400 VK), n&ecirc;n dễ bị trầy xước hơn v&agrave; dễ vỡ hơn nhưng lại c&oacute; điểm lợi thế l&agrave; dễ d&agrave;ng đ&aacute;nh b&oacute;ng lại như mới.</p>\r\n\r\n<p>- K&iacute;nh Mineral gi&aacute; th&agrave;nh rẻ n&ecirc;n được sử dụng kh&aacute; phổ biến cho c&aacute;c d&ograve;ng đồng hồ tầm trung như&nbsp;<a href=\"http://www.dangquangwatch.vn/sp/Dong-ho-Casio/549-0-0-0-0-0-0.html\">Casio</a>,&nbsp;<a href=\"http://www.dangquangwatch.vn/sp/Dong-ho-Orient/73-0-0-0-0-0-0.html\">Orient</a>&nbsp;hay&nbsp;<a href=\"http://www.dangquangwatch.vn/sp/Dong-ho-Citizen/62-0-0-0-0-0-0.html\">Citizen</a>. V&igrave; l&agrave; rẻ n&ecirc;n người ta hay l&agrave;m k&iacute;nh d&agrave;y, điều n&agrave;y gi&uacute;p cho khả năng chịu va đập của n&oacute; tốt hơn so với con sapphire mặt mỏng.</p>\r\n\r\n<p><strong><em>* Lưu &yacute; sử dụng:</em></strong></p>\r\n\r\n<p>- Một chiếc đồng hồ c&oacute; mặt k&iacute;nh sapphire chống xước l&agrave; rất tốt nhưng kh&ocirc;ng c&oacute; k&iacute;nh sapphire n&agrave;o l&agrave; chống xước ho&agrave;n hảo cả, v&igrave; vậy bạn kh&ocirc;ng n&ecirc;n n&eacute;m, quăng chiếc đồng hồ v&agrave;o ngăn tủ mỗi sau mỗi lần kh&ocirc;ng d&ugrave;ng m&agrave; tốt hơn hết l&agrave; cất cẩn thận hoặc bọc lại bằng vải mềm cho chiếc đồng hồ. Bạn c&agrave;ng cẩn thận bao nhi&ecirc;u th&igrave; chiếc đồng hồ c&agrave;ng bền đẹp v&agrave; đỡ bị xước bấy nhi&ecirc;u.</p>\r\n\r\n<p>- Đồng hồ ch&iacute;nh h&atilde;ng d&ugrave; c&oacute; d&ugrave;ng k&iacute;nh sapphire tr&aacute;ng th&igrave; cũng l&agrave; loại tr&aacute;ng dầy v&agrave; c&oacute; chất lượng cao n&ecirc;n c&oacute; thời gian sử dụng d&agrave;i trước khi bị trầy xước.</p>\r\n\r\n<p>&nbsp;- Đối với mặt đồng hồ bị xước v&agrave; nứt qu&aacute; nhiều th&igrave; bạn n&ecirc;n thay ngay khi c&oacute; điều kiện bởi v&igrave; từ c&aacute;c vết nứt, vỡ đ&oacute; c&oacute; thể khiến bụi bẩn d&iacute;nh s&acirc;u v&agrave;o ph&iacute;a trong động cơ hoặc kim đồng hồ, l&agrave;m giảm độ ch&iacute;nh x&aacute;c của n&oacute; v&igrave; bị lực cản trở.</p>\r\n\r\n<p>- Nếu bạn để chiếc đồng hồ c&ugrave;ng c&aacute;c đồ trang sức kh&aacute;c, bạn n&ecirc;n cất ri&ecirc;ng nơi c&oacute; bề mặt mềm v&agrave; được thiết kế ri&ecirc;ng d&agrave;nh ri&ecirc;ng cho đồng hồ, v&igrave; nếu để lộn xộn v&agrave;o nhau, c&oacute; thể khiến chiếc đồng hồ bị xước hoặc c&aacute;c đồ trang sức kh&aacute;c cũng bị tương tự. Đặc biệt l&agrave; mặt k&iacute;nh thủy tinh, cạnh đ&aacute; của c&aacute;c loại trang sức kh&aacute;c, ch&uacute;ng l&agrave; những chất liệu kị với k&iacute;nh sapphire.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn sử dụng v&agrave; bảo quản thật tốt chiếc đồng hồ y&ecirc;u qu&yacute; của m&igrave;nh.</p>', 0, 0, '2021-07-17 06:21:19', '2021-07-17 06:21:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` bigint(20) UNSIGNED NOT NULL,
  `atb_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ cơ', 'dong-ho-co', 1, 1, '2021-07-06 15:34:11', '2021-07-06 15:34:11'),
(2, 'Đồng hồ điện tử', 'dong-ho-dien-tu', 1, 1, '2021-07-06 15:34:21', '2021-07-06 15:34:21'),
(3, 'Dây da', 'day-da', 2, 1, '2021-07-06 15:34:39', '2021-07-06 15:34:39'),
(4, 'Thép không gỉ', 'thep-khong-gi', 2, 1, '2021-07-06 15:34:51', '2021-07-06 15:34:51'),
(5, 'Mạ vàng', 'ma-vang', 2, 1, '2021-07-06 15:35:02', '2021-07-06 15:35:02'),
(6, 'Mạ đồng', 'ma-dong', 2, 1, '2021-07-06 15:35:14', '2021-07-06 15:35:14'),
(7, 'Cao su', 'cao-su', 2, 1, '2021-07-06 15:35:25', '2021-07-06 15:35:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ap_product_id` bigint(20) UNSIGNED NOT NULL,
  `ap_attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_product`
--

INSERT INTO `attribute_product` (`id`, `ap_product_id`, `ap_attribute_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 1),
(4, 2, 3),
(5, 3, 1),
(6, 3, 3),
(7, 4, 2),
(8, 4, 5),
(9, 5, 1),
(10, 5, 4),
(11, 5, 5),
(12, 6, 2),
(13, 6, 7),
(15, 10, 4),
(16, 10, 5),
(17, 10, 1),
(18, 11, 1),
(19, 11, 5),
(20, 16, 1),
(21, 16, 4),
(22, 17, 2),
(23, 17, 4),
(24, 18, 1),
(25, 18, 4),
(26, 19, 1),
(27, 19, 3),
(28, 20, 1),
(29, 20, 3),
(30, 21, 1),
(31, 21, 3),
(32, 22, 1),
(33, 22, 5),
(34, 23, 1),
(35, 23, 4),
(36, 23, 5),
(37, 24, 1),
(38, 24, 4),
(39, 25, 1),
(40, 25, 3),
(41, 26, 1),
(42, 26, 3),
(43, 33, 1),
(44, 33, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Đồng Hồ Chính Hãng', 0, 'dong-ho-chinh-hang', NULL, NULL, 0, 1, NULL, '2021-07-11 11:19:35'),
(3, 'Phụ Kiện Đồng Hồ', 0, 'phu-kien-dong-ho', NULL, NULL, 0, 1, NULL, NULL),
(4, 'Đồng hồ Philippe Auguste', 1, 'dong-ho-philippe-auguste', '2021-07-06__pa.jpg', NULL, 0, 1, '2021-07-06 15:23:02', '2021-07-06 15:23:02'),
(5, 'Đồng hồ Epos Swiss', 1, 'dong-ho-epos-swiss', '2021-07-06__epos.jpg', NULL, 0, 1, '2021-07-06 15:23:44', '2021-07-06 15:23:44'),
(6, 'Đồng hồ Atlantic Swiss', 1, 'dong-ho-atlantic-swiss', '2021-07-06__atlatic.jpg', NULL, 0, 1, '2021-07-06 15:24:25', '2021-07-06 15:24:25'),
(7, 'Đồng hồ Aries Gold', 1, 'dong-ho-aries-gold', '2021-07-06__ariesgold.jpg', NULL, 0, 1, '2021-07-06 15:25:10', '2021-07-06 15:25:10'),
(12, 'Dây đồng hồ Diamond D', 3, 'day-dong-ho-diamond-d', '2021-07-06__diamondd.jpg', NULL, 0, 1, '2021-07-06 15:28:32', '2021-07-06 15:28:32'),
(13, 'Dây đồng hồ Atlantic', 3, 'day-dong-ho-atlantic', '2021-07-06__atlatic.jpg', NULL, 0, 1, '2021-07-06 15:29:13', '2021-07-11 11:20:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '20d4b206-d596-46ec-a7a2-a6d902743c26', 'database', 'default', '{\"uuid\":\"20d4b206-d596-46ec-a7a2-a6d902743c26\",\"displayName\":\"App\\\\Mail\\\\TransactionSuccess\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:27:\\\"App\\\\Mail\\\\TransactionSuccess\\\":30:{s:41:\\\"\\u0000App\\\\Mail\\\\TransactionSuccess\\u0000transactions\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":1:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{s:32:\\\"d0c3ac741eed6cbf37110699caa60ccf\\\";O:32:\\\"Gloudemans\\\\Shoppingcart\\\\CartItem\\\":10:{s:5:\\\"rowId\\\";s:32:\\\"d0c3ac741eed6cbf37110699caa60ccf\\\";s:2:\\\"id\\\";i:2;s:3:\\\"qty\\\";i:1;s:4:\\\"name\\\";s:38:\\\"\\u0110\\u1ed2NG H\\u1ed2 PHILIPPE AUGUSTE PA-555.1\\\";s:5:\\\"price\\\";d:16065000;s:6:\\\"weight\\\";d:1;s:7:\\\"options\\\";O:39:\\\"Gloudemans\\\\Shoppingcart\\\\CartItemOptions\\\":1:{s:8:\\\"\\u0000*\\u0000items\\\";a:3:{s:4:\\\"sale\\\";i:15;s:9:\\\"price_old\\\";i:18900000;s:5:\\\"image\\\";s:50:\\\"2021-07-06__72429618-1034985426-donghokimnguu2.jpg\\\";}}s:7:\\\"taxRate\\\";i:21;s:49:\\\"\\u0000Gloudemans\\\\Shoppingcart\\\\CartItem\\u0000associatedModel\\\";N;s:46:\\\"\\u0000Gloudemans\\\\Shoppingcart\\\\CartItem\\u0000discountRate\\\";i:0;}}}s:33:\\\"\\u0000App\\\\Mail\\\\TransactionSuccess\\u0000name\\\";s:12:\\\"Admin Supper\\\";s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:15:\\\"admin@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"laravel1998bn@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials bg8sm216165pjb.4 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials bg8sm216165pjb.4 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials bg8sm216165pjb.4 - gsmtp\r\n\". in C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.email_su...\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(614): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(414): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(364): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(614): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\datn\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2021-07-26 17:11:51'),
(2, 'dc7ecdcd-cc9b-479a-8369-376d55eb9cb5', 'database', 'default', '{\"uuid\":\"dc7ecdcd-cc9b-479a-8369-376d55eb9cb5\",\"displayName\":\"App\\\\Mail\\\\SendPasswordLoginGoogle\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:32:\\\"App\\\\Mail\\\\SendPasswordLoginGoogle\\\":30:{s:4:\\\"name\\\";s:9:\\\"b\\u00e9o b\\u00e9o\\\";s:8:\\\"password\\\";i:459252;s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"beobeo1998bn@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_TransportException: Failed to authenticate on SMTP server with username \"laravel1998bn@gmail.com\" using 3 possible authenticators. Authenticator LOGIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials n134sm622409pfd.89 - gsmtp\r\n\". Authenticator PLAIN returned Expected response code 235 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials n134sm622409pfd.89 - gsmtp\r\n\". Authenticator XOAUTH2 returned Expected response code 250 but got code \"535\", with message \"535-5.7.8 Username and Password not accepted. Learn more at\r\n535 5.7.8  https://support.google.com/mail/?p=BadCredentials n134sm622409pfd.89 - gsmtp\r\n\". in C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\Esmtp\\AuthHandler.php:191\nStack trace:\n#0 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\EsmtpTransport.php(371): Swift_Transport_Esmtp_AuthHandler->afterEhlo(Object(Swift_SmtpTransport))\n#1 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Transport\\AbstractSmtpTransport.php(148): Swift_Transport_EsmtpTransport->doHeloCommand()\n#2 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mailer.php(65): Swift_Transport_AbstractSmtpTransport->start()\n#3 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(521): Swift_Mailer->send(Object(Swift_Message), Array)\n#4 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(288): Illuminate\\Mail\\Mailer->sendSwiftMessage(Object(Swift_Message))\n#5 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.email_se...\', Array, Object(Closure))\n#6 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#9 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#10 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#11 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#12 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(614): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#14 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#15 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#16 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#17 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#19 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#23 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#24 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(414): Illuminate\\Queue\\Jobs\\Job->fire()\n#25 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(364): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#26 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#29 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#30 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(614): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#35 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#36 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\datn\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 {main}', '2021-07-26 17:11:54'),
(3, 'dcccff78-e840-441a-bc8d-64c7f7e87ed8', 'database', 'default', '{\"uuid\":\"dcccff78-e840-441a-bc8d-64c7f7e87ed8\",\"displayName\":\"App\\\\Mail\\\\SendPasswordLoginGoogle\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":\"\",\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":13:{s:8:\\\"mailable\\\";O:32:\\\"App\\\\Mail\\\\SendPasswordLoginGoogle\\\":30:{s:4:\\\"name\\\";s:9:\\\"b\\u00e9o b\\u00e9o\\\";s:8:\\\"password\\\";i:318158;s:6:\\\"locale\\\";N;s:4:\\\"from\\\";a:0:{}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:22:\\\"beobeo1998bn@gmail.com\\\";}}s:2:\\\"cc\\\";a:0:{}s:3:\\\"bcc\\\";a:0:{}s:7:\\\"replyTo\\\";a:0:{}s:7:\\\"subject\\\";N;s:11:\\\"\\u0000*\\u0000markdown\\\";N;s:7:\\\"\\u0000*\\u0000html\\\";N;s:4:\\\"view\\\";N;s:8:\\\"textView\\\";N;s:8:\\\"viewData\\\";a:0:{}s:11:\\\"attachments\\\";a:0:{}s:14:\\\"rawAttachments\\\";a:0:{}s:15:\\\"diskAttachments\\\";a:0:{}s:9:\\\"callbacks\\\";a:0:{}s:5:\\\"theme\\\";N;s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";s:29:\\\"\\u0000*\\u0000assertionableRenderStrings\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'\')\n#1 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\datn\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(Array, \'H\\xE1\\xBA\\xA3i Anh Watch\')\n#6 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(355): Illuminate\\Mail\\Message->from(NULL, \'H\\xE1\\xBA\\xA3i Anh Watch\')\n#7 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(181): Illuminate\\Mail\\Mailable->buildFrom(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}(Object(Illuminate\\Mail\\Message))\n#9 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(186): Illuminate\\Mail\\Mailer->send(\'emails.email_se...\', Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(187): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\SendQueuedMailable.php(65): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\MailManager))\n#13 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle(Object(Illuminate\\Mail\\MailManager))\n#14 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(614): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#20 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#21 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Mail\\SendQueuedMailable), false)\n#23 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#24 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Mail\\SendQueuedMailable))\n#25 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Mail\\SendQueuedMailable))\n#27 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(414): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(364): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#35 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#36 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#37 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(614): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#38 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#39 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\datn\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\datn\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\datn\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 {main}', '2021-07-26 17:16:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `img_name`, `img_slug`, `img_product_id`, `created_at`, `updated_at`) VALUES
(1, '22088366_donghonhapkhau23.jpg', '2021-07-06__22088366-donghonhapkhau23jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(2, '1442392390_donghonhapkhau25.jpg', '2021-07-06__1442392390-donghonhapkhau25jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(3, '1475352035_donghonhapkhau21.jpg', '2021-07-06__1475352035-donghonhapkhau21jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(4, '1775973215_donghonhapkhau24.jpg', '2021-07-06__1775973215-donghonhapkhau24jpg.jpg', 1, '2021-07-06 15:40:21', NULL),
(5, '1265227352_donghokimnguu.jpg', '2021-07-06__1265227352-donghokimnguujpg.jpg', 2, '2021-07-06 15:44:43', NULL),
(6, '1504551093_donghokimnguu3.jpg', '2021-07-06__1504551093-donghokimnguu3jpg.jpg', 2, '2021-07-06 15:44:43', NULL),
(7, '1992069784_donghokimngua.jpg', '2021-07-06__1992069784-donghokimnguajpg.jpg', 2, '2021-07-06 15:44:43', NULL),
(8, '921716008_DONG-HO-CHINH-HANG-23.jpg', '2021-07-06__921716008-dong-ho-chinh-hang-23jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(9, '1300425021_DONG-HO-CHINH-HANG-7.jpg', '2021-07-06__1300425021-dong-ho-chinh-hang-7jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(10, '1929195414_DONG-HO-CHINH-HANG-9.jpg', '2021-07-06__1929195414-dong-ho-chinh-hang-9jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(11, '2077059687_DONG-HO-CHINH-HANG-24.jpg', '2021-07-06__2077059687-dong-ho-chinh-hang-24jpg.jpg', 3, '2021-07-06 15:47:21', NULL),
(12, 'cart.PNG', '2021-07-13__cartpng.PNG', 11, '2021-07-13 16:24:02', NULL),
(13, 'success.PNG', '2021-07-13__successpng.PNG', 11, '2021-07-13 16:24:02', NULL),
(14, '589285374_DONG-HO-CHINH-HANG-3.jpg', '2021-07-27__589285374-dong-ho-chinh-hang-3jpg.jpg', 16, '2021-07-27 16:15:55', NULL),
(15, '1225105940_DONG-HO-CHINH-HANG-1.jpg', '2021-07-27__1225105940-dong-ho-chinh-hang-1jpg.jpg', 16, '2021-07-27 16:15:55', NULL),
(16, '1373475642_DONG-HO-CHINH-HANG-2.jpg', '2021-07-27__1373475642-dong-ho-chinh-hang-2jpg.jpg', 16, '2021-07-27 16:15:55', NULL),
(17, '2138850911_DONG-HO-CHINH-HANG-23 (1).jpg', '2021-07-27__2138850911-dong-ho-chinh-hang-23-1jpg.jpg', 16, '2021-07-27 16:15:55', NULL),
(18, '2138850911_DONG-HO-CHINH-HANG-23.jpg', '2021-07-27__2138850911-dong-ho-chinh-hang-23jpg.jpg', 16, '2021-07-27 16:15:55', NULL),
(19, '140868922_DONG-HO-CHINH-HANG-1.jpg', '2021-07-27__140868922-dong-ho-chinh-hang-1jpg.jpg', 17, '2021-07-27 16:17:49', NULL),
(20, '1301293638_1088218410_DONG-HO-CHINH-HANG-4.jpg', '2021-07-27__1301293638-1088218410-dong-ho-chinh-hang-4jpg.jpg', 17, '2021-07-27 16:17:49', NULL),
(21, '1335607165_DONG-HO-CHINH-HANG-1.jpg', '2021-07-27__1335607165-dong-ho-chinh-hang-1jpg.jpg', 17, '2021-07-27 16:17:49', NULL),
(22, '1669434761_DONG-HO-CHINH-HANG-17.jpg', '2021-07-27__1669434761-dong-ho-chinh-hang-17jpg.jpg', 17, '2021-07-27 16:17:49', NULL),
(23, '1010511751_DONG-HO-CHINH-HANG-21.jpg', '2021-07-27__1010511751-dong-ho-chinh-hang-21jpg.jpg', 18, '2021-07-27 16:20:35', NULL),
(24, '1146670143_donghonhapkhauuw5.jpg', '2021-07-27__1146670143-donghonhapkhauuw5jpg.jpg', 18, '2021-07-27 16:20:35', NULL),
(25, '1567278969_dong-ho-chinh-hang-6.jpg', '2021-07-27__1567278969-dong-ho-chinh-hang-6jpg.jpg', 18, '2021-07-27 16:20:35', NULL),
(26, '1620049061_dong-ho-chinh-hang-7.jpg', '2021-07-27__1620049061-dong-ho-chinh-hang-7jpg.jpg', 18, '2021-07-27 16:20:35', NULL),
(27, '1778064256_dong-ho-chinh-hang-8.jpg', '2021-07-27__1778064256-dong-ho-chinh-hang-8jpg.jpg', 18, '2021-07-27 16:20:35', NULL),
(28, '212811131_dong-ho-chihh-hang-6.jpg', '2021-07-27__212811131-dong-ho-chihh-hang-6jpg.jpg', 19, '2021-07-27 16:23:28', NULL),
(29, '933470616_dong-ho-chihh-hang-7.jpg', '2021-07-27__933470616-dong-ho-chihh-hang-7jpg.jpg', 19, '2021-07-27 16:23:28', NULL),
(30, '1299509065_dong-ho-chihh-hang-8.jpg', '2021-07-27__1299509065-dong-ho-chihh-hang-8jpg.jpg', 19, '2021-07-27 16:23:28', NULL),
(31, '1318928623_dong-ho-chihh-hang-5.jpg', '2021-07-27__1318928623-dong-ho-chihh-hang-5jpg.jpg', 19, '2021-07-27 16:23:28', NULL),
(32, '242601831_enu1 (1).jpg', '2021-07-27__242601831-enu1-1jpg.jpg', 20, '2021-07-27 16:25:16', NULL),
(33, '242601831_enu1.jpg', '2021-07-27__242601831-enu1jpg.jpg', 20, '2021-07-27 16:25:16', NULL),
(34, '1569861983_enu.jpg', '2021-07-27__1569861983-enujpg.jpg', 20, '2021-07-27 16:25:16', NULL),
(35, '1704500805_enu2.jpg', '2021-07-27__1704500805-enu2jpg.jpg', 20, '2021-07-27 16:25:16', NULL),
(36, '1767773567_enu3.jpg', '2021-07-27__1767773567-enu3jpg.jpg', 20, '2021-07-27 16:25:16', NULL),
(37, '518414318_donghothuysy6.jpg', '2021-07-27__518414318-donghothuysy6jpg.jpg', 21, '2021-07-27 16:26:48', NULL),
(38, '651644381_donghothuysy16.jpg', '2021-07-27__651644381-donghothuysy16jpg.jpg', 22, '2021-07-27 16:29:27', NULL),
(39, '970653085_DỒNG-HỒ-CHÍNH-HÃNG-1.jpg', '2021-07-27__970653085-dong-ho-chinh-hang-1jpg.jpg', 23, '2021-07-27 16:31:09', NULL),
(40, '1279675054_DỒNG-HỒ-CHÍNH-HÃNG-6.jpg', '2021-07-27__1279675054-dong-ho-chinh-hang-6jpg.jpg', 23, '2021-07-27 16:31:09', NULL),
(41, '1807019590_dong-ho-chihh-hang-14.jpg', '2021-07-27__1807019590-dong-ho-chihh-hang-14jpg.jpg', 23, '2021-07-27 16:31:09', NULL),
(42, '182921828_đồng-hồ-chính-hãng6.jpg', '2021-07-27__182921828-dong-ho-chinh-hang6jpg.jpg', 24, '2021-07-27 16:32:54', NULL),
(43, '831635562_đồng-hồ-chính-hãng7.jpg', '2021-07-27__831635562-dong-ho-chinh-hang7jpg.jpg', 24, '2021-07-27 16:32:54', NULL),
(44, '1113255634_DỒNG-HỒ-CHÍNH-HÃNG-5.jpg', '2021-07-27__1113255634-dong-ho-chinh-hang-5jpg.jpg', 24, '2021-07-27 16:32:54', NULL),
(45, '2098784947_đồng-hồ-chính-hãng9.jpg', '2021-07-27__2098784947-dong-ho-chinh-hang9jpg.jpg', 24, '2021-07-27 16:32:54', NULL),
(46, '511026831_1499250664_donghocochinhhang67 (1).jpg', '2021-07-27__511026831-1499250664-donghocochinhhang67-1jpg.jpg', 25, '2021-07-27 16:34:51', NULL),
(47, '1637158092_241571475_1083070878_donghocochinhang65.jpg', '2021-07-27__1637158092-241571475-1083070878-donghocochinhang65jpg.jpg', 25, '2021-07-27 16:34:51', NULL),
(48, '204580078_dong-ho-chinh-hang-2.jpg', '2021-07-27__204580078-dong-ho-chinh-hang-2jpg.jpg', 26, '2021-07-27 16:36:32', NULL),
(49, '282238914_dong-ho-chinh-hang-1.jpg', '2021-07-27__282238914-dong-ho-chinh-hang-1jpg.jpg', 26, '2021-07-27 16:36:32', NULL),
(50, '1811831416_dong-ho-chinh-hang-4.jpg', '2021-07-27__1811831416-dong-ho-chinh-hang-4jpg.jpg', 26, '2021-07-27 16:36:32', NULL),
(51, '2005303215_dong-ho-chinh-hang-7.jpg', '2021-07-27__2005303215-dong-ho-chinh-hang-7jpg.jpg', 26, '2021-07-27 16:36:32', NULL),
(52, '407719919_donghothethao.jpg', '2021-07-27__407719919-donghothethaojpg.jpg', 33, '2021-07-27 16:45:58', NULL),
(53, '412725079_dong-ho-chinh-hang-5.jpg', '2021-07-27__412725079-dong-ho-chinh-hang-5jpg.jpg', 33, '2021-07-27 16:45:58', NULL),
(54, '1815593063_dong-ho-chinh-hang-8.jpg', '2021-07-27__1815593063-dong-ho-chinh-hang-8jpg.jpg', 33, '2021-07-27 16:45:58', NULL),
(55, '2002759164_dong-ho-chinh-hang-6.jpg', '2021-07-27__2002759164-dong-ho-chinh-hang-6jpg.jpg', 33, '2021-07-27 16:45:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', NULL, NULL, NULL, 0, 1, NULL, NULL),
(2, 'Hỏi đáp về đồng hồ', 'hoi-dap-ve-dong-ho', NULL, NULL, 'Hỏi đáp về đồng hồ', 0, 1, '2021-07-17 06:20:16', '2021-07-17 06:20:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(75, '2014_10_12_000000_create_users_table', 1),
(76, '2014_10_12_100000_create_password_resets_table', 1),
(77, '2019_08_19_000000_create_failed_jobs_table', 1),
(78, '2021_04_10_090150_create_categories_table', 1),
(79, '2021_04_15_132126_create_type_products_table', 1),
(80, '2021_04_17_134110_create_attributes_table', 1),
(81, '2021_04_21_112939_create_products_table', 1),
(82, '2021_04_21_155435_create_attribute_product_table', 1),
(83, '2021_04_21_164307_create_images_table', 1),
(84, '2021_05_09_160758_create_slides_table', 1),
(85, '2021_05_19_142248_create_transactions_table', 1),
(86, '2021_05_19_142500_create_orders_table', 1),
(87, '2021_05_19_142716_create_menus_table', 1),
(88, '2021_05_19_142758_create_articles_table', 1),
(89, '2021_05_19_143031_create_ratings_table', 1),
(90, '2021_05_19_143424_create_user_favourite_table', 1),
(91, '2021_05_19_152534_add_multiple_column_attribute_in_table_users', 1),
(92, '2021_06_15_202729_create_jobs_table', 1),
(93, '2021_06_16_210249_add_column_role_to_users_table', 1),
(94, '2021_07_02_115319_create_notifications_table', 1),
(97, '2021_07_18_164447_create_payments_table', 2),
(98, '2021_07_18_181331_add_column_p_transaction_code_to_payments_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('11febf87-3f09-47dd-af56-8d5bae06729b', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-17T15:06:00.415439Z\"}', '2021-07-17 15:06:29', '2021-07-17 15:06:00', '2021-07-17 15:06:00'),
('1de84192-f320-4714-8080-de112902a7ca', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-18T11:40:32.072741Z\"}', '2021-07-18 11:51:20', '2021-07-18 11:40:32', '2021-07-18 11:40:32'),
('2347fe67-2d80-4298-a8a7-f54ec39c9ce5', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-18T11:47:14.869319Z\"}', '2021-07-18 11:51:29', '2021-07-18 11:47:14', '2021-07-18 11:47:14'),
('2aeffd1e-1eec-465f-9b5a-4f6de5d12876', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"map hari\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:31:05.534104Z\"}', '2021-07-11 11:01:18', '2021-07-06 16:31:05', '2021-07-06 16:31:05'),
('5ed36f36-35d8-4c87-a77c-58ce14876148', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-18T11:47:55.948020Z\"}', '2021-07-18 11:51:26', '2021-07-18 11:47:55', '2021-07-18 11:47:55'),
('5f7b947b-1c90-42b3-9dfe-577504e47963', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-13T16:10:41.428251Z\"}', '2021-07-16 10:46:20', '2021-07-13 16:10:41', '2021-07-13 16:10:41'),
('617e8e93-52e2-404f-b099-974464a96d9f', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T04:26:29.451255Z\"}', '2021-07-11 11:01:26', '2021-07-07 04:26:30', '2021-07-07 04:26:30'),
('6392500f-e120-4caf-b9ec-b660a7c6e8da', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-18T11:49:30.102877Z\"}', '2021-07-18 11:51:24', '2021-07-18 11:49:30', '2021-07-18 11:49:30'),
('647c2871-7389-4e31-abce-1692069f6c74', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-18T11:41:52.283831Z\"}', '2021-07-18 11:51:37', '2021-07-18 11:41:52', '2021-07-18 11:41:52'),
('67c33ce5-ef94-438e-81cc-ef0b9f5d50e9', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-17T04:31:01.939239Z\"}', '2021-07-17 06:33:02', '2021-07-17 04:31:01', '2021-07-17 04:31:01'),
('6a167176-cca5-4b57-afd4-45213d1d5180', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-23T07:04:22.090442Z\"}', '2021-07-26 16:47:23', '2021-07-23 07:04:22', '2021-07-23 07:04:22'),
('6c567231-473b-4a36-a98b-bfebf461adf3', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-16T11:10:53.016419Z\"}', '2021-07-16 14:21:28', '2021-07-16 11:10:53', '2021-07-16 11:10:53'),
('7806fc3a-c3b5-46a1-8cca-3a5e8ebead86', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-18T03:44:59.991204Z\"}', '2021-07-18 06:35:38', '2021-07-18 03:45:00', '2021-07-18 03:45:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `od_product_id` bigint(20) UNSIGNED NOT NULL,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` int(11) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 0, 1, 25000000, '2021-07-06 16:07:40', '2021-07-06 16:07:40'),
(2, 2, 10, 0, 5, 25000000, '2021-07-06 16:19:48', '2021-07-06 16:19:48'),
(3, 3, 2, 15, 1, 16065000, '2021-07-06 16:31:05', '2021-07-06 16:31:05'),
(4, 4, 6, 0, 2, 58000, '2021-07-13 16:10:41', '2021-07-13 16:10:41'),
(5, 4, 10, 0, 1, 25000000, '2021-07-13 16:10:41', '2021-07-13 16:10:41'),
(6, 5, 9, 0, 78936, 450000, '2021-07-16 10:47:46', '2021-07-16 10:47:46'),
(7, 6, 9, 0, 3, 450000, '2021-07-16 11:10:52', '2021-07-16 11:10:52'),
(8, 7, 9, 0, 1, 450000, '2021-07-17 04:31:01', '2021-07-17 04:31:01'),
(9, 8, 9, 0, 1, 450000, '2021-07-17 04:31:15', '2021-07-17 04:31:15'),
(10, 9, 4, 15, 1, 72250000, '2021-07-18 03:42:36', '2021-07-18 03:42:36'),
(11, 10, 4, 15, 1, 72250000, '2021-07-18 10:17:56', '2021-07-18 10:17:56'),
(12, 11, 2, 15, 1, 16065000, '2021-07-18 11:26:45', '2021-07-18 11:26:45'),
(23, 17, 2, 15, 1, 16065000, '2021-07-18 11:40:32', '2021-07-18 11:40:32'),
(24, 17, 6, 0, 1, 58000, '2021-07-18 11:40:32', '2021-07-18 11:40:32'),
(25, 18, 2, 15, 1, 16065000, '2021-07-18 11:41:52', '2021-07-18 11:41:52'),
(26, 18, 6, 0, 1, 58000, '2021-07-18 11:41:52', '2021-07-18 11:41:52'),
(27, 19, 2, 15, 2, 16065000, '2021-07-18 11:44:06', '2021-07-18 11:44:06'),
(28, 19, 6, 0, 2, 58000, '2021-07-18 11:44:06', '2021-07-18 11:44:06'),
(29, 20, 6, 0, 1, 58000, '2021-07-18 11:46:13', '2021-07-18 11:46:13'),
(30, 21, 6, 0, 1, 58000, '2021-07-18 11:47:14', '2021-07-18 11:47:14'),
(31, 22, 6, 0, 2, 58000, '2021-07-18 11:47:55', '2021-07-18 11:47:55'),
(32, 23, 4, 15, 2, 72250000, '2021-07-18 11:49:30', '2021-07-18 11:49:30'),
(36, 27, 11, 12, 1, 88000, '2021-07-18 11:58:44', '2021-07-18 11:58:44'),
(37, 28, 4, 15, 1, 72250000, '2021-07-20 12:39:29', '2021-07-20 12:39:29'),
(38, 29, 2, 15, 1, 16065000, '2021-07-23 07:04:22', '2021-07-23 07:04:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '8ea3ea02-2ee9-432d-9778-f1f6eb1c4dc6', '2021-07-18 03:39:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_money` int(11) NOT NULL COMMENT 'số tiền thanh toán',
  `p_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ghi chú',
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mã phản hồi',
  `p_code_vnp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mã giao dịch vnp',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mã ngân hàng',
  `p_time` datetime NOT NULL COMMENT 'thòi gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `p_transaction_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_vnp_response_code`, `p_code_vnp`, `p_code_bank`, `p_time`, `created_at`, `updated_at`, `p_transaction_code`) VALUES
(1, 17, 2, 16123000, 'Noi dung thanh toan', '00', '13546982', 'NCB', '2021-07-18 18:38:00', NULL, NULL, 895729430),
(2, 18, 2, 16123000, 'Noi dung thanh toan', '00', '13546982', 'NCB', '2021-07-18 18:38:00', NULL, NULL, 895729430),
(3, 19, 2, 32246000, '123zxczxczxc', '00', '13546983', 'NCB', '2021-07-18 18:44:00', NULL, NULL, 714595433),
(4, 23, 2, 144500000, 'Noi dung thanh toan', '00', '13546984', 'NCB', '2021-07-18 18:49:00', NULL, NULL, 762399609),
(5, 27, 1, 88000, 'Noi dung thanh toan', '00', '13546989', 'NCB', '2021-07-18 18:58:00', '2021-07-18 11:58:44', '2021-07-18 11:58:44', 720968962),
(6, 28, 2, 72250000, 'assdqwezxc', '00', '13548518', 'NCB', '2021-07-20 19:39:00', '2021-07-20 12:39:29', '2021-07-20 12:39:29', 260848425),
(7, 29, 1, 16065000, 'Noi dung thanh toan', '00', '13550673', 'NCB', '2021-07-23 14:04:00', '2021-07-23 07:04:22', '2021-07-23 07:04:22', 659250609);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_category_id` bigint(20) UNSIGNED NOT NULL,
  `pro_type_product_id` bigint(20) UNSIGNED NOT NULL,
  `pro_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pro_price` int(11) NOT NULL DEFAULT 0 COMMENT 'giá',
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'giảm giá',
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0 COMMENT 'số luoựt xem',
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0 COMMENT 'số lượt mua',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số comment',
  `pro_review_star` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số sao',
  `pro_number` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số lượng',
  `pro_country` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'xuất xứ',
  `pro_energy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'năng lượng',
  `pro_resistant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'độ chịu nước',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_category_id`, `pro_type_product_id`, `pro_user_id`, `pro_price`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_number`, `pro_country`, `pro_energy`, `pro_resistant`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 'dong-ho-philippe-augustejl-11-16542zh', 4, 1, 0, 6900000, 10, '2021-07-06__974268866-donghophienbangioihan2.jpg', 6, 0, 1, 0, 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 0, 0, 9999, 1, 'Quartz/Pin', '10 ATM', '2021-07-06 15:40:21', '2021-07-27 16:46:18'),
(2, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 'dong-ho-philippe-auguste-pa-5551', 4, 1, 0, 18900000, 15, '2021-07-06__72429618-1034985426-donghokimnguu2.jpg', 12, 0, 1, 7, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 0, 0, 7898, 3, 'Automatic (Cơ tự động)', '5ATM', '2021-07-06 15:44:42', '2021-07-06 15:44:42'),
(3, 'Đồng hồ Philippe Auguste PA5001B', 'dong-ho-philippe-auguste-pa5001b', 4, 1, 0, 2800000, 0, '2021-07-06__202451360-dong-ho-nhap-khau2.jpg', 2, 0, 1, 0, 'Đồng hồ Philippe Auguste PA5001B', 'Đồng hồ Philippe Auguste PA5001B', 0, 0, 123, 1, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:47:20', '2021-07-06 15:47:20'),
(4, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 'dong-ho-epos-swiss-e-3387152222832', 5, 1, 0, 85000000, 15, '2021-07-06__364723213-untitled-56.jpg', 9, 0, 1, 5, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 1, 1, 53, 3, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:52:36', '2021-07-07 03:39:17'),
(5, 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 'dong-ho-epos-swiss-e-3426132222032e-4426132222032', 5, 3, 0, 35000000, 0, '2021-07-06__96439908-48.jpg', 4, 0, 1, 0, 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 2, 10, 52, 2, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:54:16', '2021-07-17 06:32:49'),
(6, 'Đồng hồ Aries Gold QQ-M137J003Y', 'dong-ho-aries-gold-qq-m137j003y', 7, 4, 0, 58000, 0, '2021-07-06__m137j003y.jpg', 4, 0, 1, 10, 'Đồng hồ Aries Gold QQ-M137J003Y', 'Đồng hồ Aries Gold QQ-M137J003Y', 2, 10, 7777, 3, 'Automatic (Cơ tự động)', '1 ATM', '2021-07-06 15:56:03', '2021-07-18 03:45:10'),
(9, 'Dây da Diamond D D DM W 12', 'day-da-diamond-d-d-dm-w-12', 12, 7, 0, 450000, 0, '2021-07-06__1905887238-d-dm-w-12.jpg', 7, 0, 1, 78936, 'Dây da Diamond D D DM W 12', 'Dây da Diamond D D DM W 12', 0, 0, 78936, 4, NULL, NULL, '2021-07-06 16:00:04', '2021-07-17 13:15:32'),
(10, 'Đồng hồ Atlantic Swiss AT-22346.45.13', 'dong-ho-atlantic-swiss-at-223464513', 6, 1, 0, 25000000, 0, '2021-07-06__1029860979-dng-h-chnh-hng-32.jpg', 13, 0, 1, 7, 'Đồng hồ Atlantic Swiss AT-22346.45.13', 'Đồng hồ Atlantic Swiss AT-22346.45.13', 5, 21, 8547, 1, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 16:01:48', '2021-07-18 03:38:27'),
(11, 'test create product', 'test-create-product', 5, 1, 0, 100000, 12, '2021-07-13__add-cart.png', 6, 0, 0, 1, 'test create product', 'test create product', 2, 9, 123, 3, '123', '123', '2021-07-13 16:24:02', '2021-07-27 15:57:28'),
(16, 'Đồng hồ Philippe Auguste PA5001E', 'dong-ho-philippe-auguste-pa5001e', 4, 1, 0, 11359000, 20, '2021-07-27__2132524758-dong-ho-nhap-khau5.jpg', 0, 0, 1, 0, 'Đồng hồ Philippe Auguste PA5001E', 'Đồng hồ Philippe Auguste PA5001E', 0, 0, 8547, 3, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:15:55', '2021-07-27 16:15:55'),
(17, 'Đồng hồ Philippe Auguste PA5002C', 'dong-ho-philippe-auguste-pa5002c', 4, 1, 0, 1200000, 25, '2021-07-27__1432153761-dong-ho-nhap-khau9.jpg', 0, 0, 1, 0, 'Đồng hồ Philippe Auguste PA5002C', 'Đồng hồ Philippe Auguste PA5002C', 0, 0, 50789, 2, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:17:49', '2021-07-27 16:17:49'),
(18, 'Đồng hồ Philippe Auguste PA5002E', 'dong-ho-philippe-auguste-pa5002e', 4, 1, 0, 40000000, 0, '2021-07-27__282562145-dong-ho-nhap-khau11.jpg', 0, 0, 1, 0, 'Đồng hồ Philippe Auguste PA5002E', 'Đồng hồ Philippe Auguste PA5002E', 0, 0, 8657, 4, 'Automatic (Cơ tự động)', '5ATM', '2021-07-27 16:20:23', '2021-07-27 16:20:35'),
(19, 'Đồng hồ Epos Swiss E-3420.152.22.16.15', 'dong-ho-epos-swiss-e-3420152221615', 5, 1, 0, 38000000, 0, '2021-07-27__2144894182-e-3420152221615.jpg', 0, 0, 1, 0, 'Đồng hồ Epos Swiss E-3420.152.22.16.15', 'Đồng hồ Epos Swiss E-3420.152.22.16.15', 0, 0, 5647, 1, 'Automatic (Cơ tự động)', '5ATM', '2021-07-27 16:23:28', '2021-07-27 16:25:27'),
(20, 'Đồng hồ Epos Swiss E-8000.700.22.65.15', 'dong-ho-epos-swiss-e-8000700226515', 5, 2, 0, 15300000, 15, '2021-07-27__2015096233-dong-ho-chinh-hang-8.jpg', 0, 0, 1, 0, 'Đồng hồ Epos Swiss E-8000.700.22.65.15', 'Đồng hồ Epos Swiss E-8000.700.22.65.15', 0, 0, 15791, 3, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:25:16', '2021-07-27 16:25:16'),
(21, 'Đồng hồ Epos Swiss E-3387.152.22.28.15', 'dong-ho-epos-swiss-e-3387152222815', 5, 2, 0, 33500000, 0, '2021-07-27__677822869-untitled-57.jpg', 1, 0, 1, 0, 'Đồng hồ Epos Swiss E-3387.152.22.28.15', 'Đồng hồ Epos Swiss E-3387.152.22.28.15', 0, 0, 9871, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:26:48', '2021-07-27 16:26:48'),
(22, 'Đồng hồ Atlantic Swiss AT-20335.43.28G', 'dong-ho-atlantic-swiss-at-203354328g', 6, 2, 0, 17000000, 0, '2021-07-27__1953389537-203354328g.jpg', 0, 0, 1, 0, 'Đồng hồ Atlantic Swiss AT-20335.43.28G', 'Đồng hồ Atlantic Swiss AT-20335.43.28G', 0, 0, 9874, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:29:27', '2021-07-27 16:29:27'),
(23, 'Đồng hồ Atlantic Swiss AT-29038.45.27MB', 'dong-ho-atlantic-swiss-at-290384527mb', 6, 2, 0, 22222222, 50, '2021-07-27__1908630676-atlanweb.jpg', 0, 0, 1, 0, 'Đồng hồ Atlantic Swiss AT-29038.45.27MB', 'Đồng hồ Atlantic Swiss AT-29038.45.27MB', 0, 0, 75324, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:31:09', '2021-07-27 16:31:09'),
(24, 'Đồng hồ Atlantic Swiss AT-29035.41.21', 'dong-ho-atlantic-swiss-at-290354121', 6, 2, 0, 4800000, 0, '2021-07-27__1900541705-dong-ho-chinh-hang-2.jpg', 0, 0, 1, 0, 'Đồng hồ Atlantic Swiss AT-29035.41.21', 'Đồng hồ Atlantic Swiss AT-29035.41.21', 0, 0, 4568, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:32:37', '2021-07-27 16:32:54'),
(25, 'Đồng hồ Aries Gold AG-G9005A G-BK', 'dong-ho-aries-gold-ag-g9005a-g-bk', 7, 1, 0, 77777777, 70, '2021-07-27__509733038-1834539574-428578218-dong-ho-chinh-hang-14.jpg', 0, 0, 1, 0, 'Đồng hồ Aries Gold AG-G9005A G-BK', 'Đồng hồ Aries Gold AG-G9005A G-BK', 0, 0, 8521, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:34:51', '2021-07-27 16:34:51'),
(26, 'Đồng hồ Aries Gold AG-G7016 BKRG-BKRG', 'dong-ho-aries-gold-ag-g7016-bkrg-bkrg', 7, 1, 0, 66666666, 60, '2021-07-27__1665899185-dong-ho-chinh-hang-76.jpg', 0, 0, 1, 0, 'Đồng hồ Aries Gold AG-G7016 BKRG-BKRG', 'Đồng hồ Aries Gold AG-G7016 BKRG-BKRG', 0, 0, 7895, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:36:32', '2021-07-27 16:36:32'),
(27, 'Dây da Diamond D D DM R 12', 'day-da-diamond-d-d-dm-r-12', 12, 7, 0, 450000, 0, '2021-07-27__1752070534-d-dm-r-12.jpg', 0, 0, 1, 0, 'Dây da Diamond D D DM R 12', 'Dây da Diamond D D DM R 12', 0, 0, 7598, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:38:31', '2021-07-27 16:38:31'),
(28, 'Dây da Diamond D D DM B 12', 'day-da-diamond-d-d-dm-b-12', 12, 7, 0, 300000, 0, '2021-07-27__1876477849-d-dm-b-12.jpg', 0, 0, 1, 0, 'Dây da Diamond D D DM B 12', 'Dây da Diamond D D DM B 12', 0, 0, 78965, 1, NULL, NULL, '2021-07-27 16:39:15', '2021-07-27 16:39:15'),
(29, 'Dây da Diamond D D DM W 16', 'day-da-diamond-d-d-dm-w-16', 12, 7, 0, 300000, 0, '2021-07-27__816219224-d-dm-w-16.jpg', 0, 0, 1, 0, 'Dây da Diamond D D DM W 16', 'Dây da Diamond D D DM W 16', 0, 0, 75385, 1, NULL, NULL, '2021-07-27 16:40:22', '2021-07-27 16:40:22'),
(30, 'Dây da atlantic D AT-L418.03.12G', 'day-da-atlantic-d-at-l4180312g', 13, 7, 0, 400000, 0, '2021-07-27__1252837020-day-da-atlantic-d-at-l4180312g.jpg', 0, 0, 1, 0, 'Dây da atlantic D AT-L418.03.12G', 'Dây da atlantic D AT-L418.03.12G', 0, 0, 78965, 1, NULL, NULL, '2021-07-27 16:42:55', '2021-07-27 16:42:55'),
(31, 'Dây da atlantic D AT-L168.01.22G', 'day-da-atlantic-d-at-l1680122g', 13, 7, 0, 250000, 0, '2021-07-27__1234991810-day-da-atlantic-d-at-l1680122g.jpg', 0, 0, 1, 0, 'Dây da atlantic D AT-L168.01.22G', 'Dây da atlantic D AT-L168.01.22G', 0, 0, 58797, 1, NULL, NULL, '2021-07-27 16:43:29', '2021-07-27 16:43:29'),
(32, 'Dây da atlantic D AT-L168.03.22S', 'day-da-atlantic-d-at-l1680322s', 13, 7, 0, 250000, 0, '2021-07-27__1306247000-day-da-atlantic-d-at-l1680322s.jpg', 0, 0, 1, 0, 'Dây da atlantic D AT-L168.03.22S', 'Dây da atlantic D AT-L168.03.22S', 0, 0, 7531, 1, NULL, NULL, '2021-07-27 16:44:11', '2021-07-27 16:44:11'),
(33, 'Đồng hồ Aries Gold AG-G7016 S-BU', 'dong-ho-aries-gold-ag-g7016-s-bu', 7, 1, 0, 45000000, 0, '2021-07-27__1534137966-1240551395-dong-ho-chinh-hang-1.jpg', 0, 0, 1, 0, '75365', 'Đồng hồ Aries Gold AG-G7016 S-BU', 0, 0, 75368, 1, 'Automatic (Cơ tự động)', '10ATM', '2021-07-27 16:45:58', '2021-07-27 16:45:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` bigint(20) UNSIGNED NOT NULL,
  `r_product_id` bigint(20) UNSIGNED NOT NULL,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 1,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 5, 1, 'dùng tốt lắm ^^', '2021-07-06 16:04:01', '2021-07-06 16:04:01'),
(2, 2, 10, 5, 1, '12', '2021-07-06 16:22:22', '2021-07-06 16:22:22'),
(3, 4, 4, 1, 1, '123', '2021-07-07 03:39:17', '2021-07-07 03:39:17'),
(4, 1, 10, 5, 1, '123123123', '2021-07-07 04:26:29', '2021-07-07 04:26:29'),
(5, 1, 10, 1, 1, '123', '2021-07-07 04:26:43', '2021-07-07 04:26:43'),
(6, 1, 5, 5, 1, '333333', '2021-07-17 06:32:41', '2021-07-17 06:32:41'),
(7, 1, 5, 5, 1, '123321123', '2021-07-17 06:32:49', '2021-07-17 06:32:49'),
(8, 1, 11, 5, 1, 'đánh giá', '2021-07-17 15:05:50', '2021-07-17 15:05:50'),
(9, 1, 11, 4, 1, '4 sao', '2021-07-17 15:06:00', '2021-07-17 15:06:00'),
(10, 2, 10, 5, 1, 'test sp', '2021-07-18 03:38:27', '2021-07-18 03:38:27'),
(11, 2, 6, 5, 1, '123', '2021-07-18 03:44:59', '2021-07-18 03:44:59'),
(12, 2, 6, 5, 1, '321123123', '2021-07-18 03:45:10', '2021-07-18 03:45:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner slide', '3', '2021-07-17__731384109-banner30off1507.jpg', 1, 1, 12, '2021-07-17 06:13:24', '2021-07-17 06:13:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tst_total_money` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 thanh toan thuong, 2 la online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 25000000, 'Admin Supper', 'admin@gmail.com', '0377708868', NULL, 'a', 1, 1, '2021-07-04 16:07:40', '2021-07-06 16:07:40'),
(2, 2, 125000000, 'user', 'user@gmail.com', '0355578896', NULL, '123', 2, 1, '2021-07-06 16:19:48', '2021-07-04 16:23:29'),
(3, 3, 16065000, 'map hari', 'laravel1998bn@gmail.com', '556533201', NULL, '1', 1, 1, '2021-06-15 16:31:05', '2021-07-06 16:31:05'),
(4, 1, 25116000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', 'giao hàng sớm nhá', 1, 1, '2021-07-13 16:10:41', '2021-07-13 16:10:41'),
(5, 1, 35521200, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', '1234t5r6yu', 1, 1, '2021-07-16 10:47:46', '2021-07-16 10:47:46'),
(6, 1, 1350000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', 'aaa', 1, 1, '2021-07-16 11:10:52', '2021-07-16 11:10:52'),
(7, 2, 450000, 'user', 'user@gmail.com', '0355578896', NULL, '123123', -1, 1, '2021-07-17 04:31:01', '2021-07-17 14:27:51'),
(8, 1, 450000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', '1', 3, 1, '2021-07-17 04:31:15', '2021-07-17 13:42:11'),
(9, 2, 72250000, 'user', 'user@gmail.com', '0355578896', NULL, '123', -1, 1, '2021-07-18 03:42:36', '2021-07-18 03:49:14'),
(10, 1, 72250000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', NULL, 1, 1, '2021-07-18 10:17:56', '2021-07-18 10:17:56'),
(11, 2, 16065000, 'user', 'user@gmail.com', '0367530598', 'bacninh', '123', 1, 1, '2021-07-18 11:26:45', '2021-07-18 11:26:45'),
(17, 2, 16123000, 'user', 'user@gmail.com', '0355578896', 'yên lãng', '123', 1, 2, '2021-07-18 11:52:12', NULL),
(18, 2, 16123000, 'user', 'user@gmail.com', '0355578896', 'yên lãng', '123', -1, 2, '2021-07-11 11:52:16', '2021-07-20 12:59:14'),
(19, 2, 32246000, 'user', 'user@gmail.com', '0355578896', '123123123123', '123123123', 1, 2, '2021-07-18 11:52:20', NULL),
(20, 2, 58000, 'user', 'user@gmail.com', '0355578896', 'yên lãng', '123', 1, 1, '2021-07-18 11:46:13', '2021-07-18 11:46:13'),
(21, 2, 58000, 'user', 'user@gmail.com', '0355578896', '123', '123', 3, 1, '2021-07-18 11:47:14', '2021-07-20 12:59:10'),
(22, 2, 116000, 'user', 'user@gmail.com', '0355578896', '123123123123', '123', 1, 1, '2021-07-18 11:47:55', '2021-07-18 11:47:55'),
(23, 2, 144500000, 'user', 'user@gmail.com', '0355578896', 'yên lãng', '123', 2, 2, '2021-07-18 11:52:24', '2021-07-20 12:59:05'),
(27, 1, 88000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', '123', 1, 2, '2021-07-18 11:58:44', '2021-07-18 11:58:44'),
(28, 2, 72250000, 'user', 'user@gmail.com', '0355578896', 'aaaaaa', NULL, 3, 2, '2021-07-20 12:39:29', '2021-07-20 12:59:21'),
(29, 1, 16065000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', NULL, 1, 2, '2021-07-23 07:04:22', '2021-07-23 07:04:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tp_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tp_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tp_hot` tinyint(4) NOT NULL DEFAULT 0,
  `tp_status` tinyint(4) NOT NULL DEFAULT 1,
  `tp_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `tp_name`, `tp_slug`, `tp_avatar`, `tp_banner`, `tp_description`, `tp_hot`, `tp_status`, `tp_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ nam', 'dong-ho-nam', '2021-07-06__m-dhnam.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:30:06', '2021-07-06 15:30:06'),
(2, 'Đồng hồ nữ', 'dong-ho-nu', '2021-07-06__m-dhnu.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:30:32', '2021-07-06 15:30:32'),
(3, 'Đồng Hồ Đôi', 'dong-ho-doi', '2021-07-06__m-dhdoi.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:30:57', '2021-07-06 15:30:57'),
(4, 'Đồng Hồ Trẻ Em', 'dong-ho-tre-em', '2021-07-06__m-dhtreem.jpg', NULL, NULL, 0, 1, 1, '2021-07-06 15:31:27', '2021-07-06 15:31:27'),
(7, 'Phụ Kiên', 'phu-kien', '2021-07-06__m-phukien.jpg', NULL, NULL, 0, 1, 3, '2021-07-06 15:33:05', '2021-07-06 15:33:05'),
(8, 'Bút Ký Cao Cấp', 'but-ky-cao-cap', '2021-07-06__m-butky.jpg', NULL, NULL, 0, 1, 3, '2021-07-06 15:33:30', '2021-07-06 15:33:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `avatar`, `role`) VALUES
(1, 'Admin Supper', 'admin@gmail.com', '2021-07-06 15:15:31', '$2y$10$HAbLRd3jaXJer.bhKculjeelJfRSg5KMX2Y0H.yn1dkmL/.qoLj5q', NULL, '2021-07-06 16:27:35', '2021-07-11 11:35:12', '0377708868', 'bac ninh', NULL, 1),
(2, 'user', 'user@gmail.com', '2021-07-18 10:27:02', '$2y$10$DL/stEotNM6iaBXm/MlCluhKFwWZ.A8X0rhXkU.ELvjOBsQURfy9e', NULL, '2021-07-06 16:28:16', '2021-07-18 05:28:12', '0355578896', NULL, NULL, 2),
(3, 'map hari', 'laravel1998bn@gmail.com', '2021-07-06 16:26:50', '$2y$10$gXPg/uTQdmmV4E2qtkla4upHZrCHjt37u6zNYOoGlJowvv.RQWs2a', NULL, '2021-07-06 16:26:50', '2021-07-06 16:26:50', '556533201', NULL, NULL, 2),
(4, 'Đại Hải', 'hai1998bn@gmail.com', '2021-07-07 03:38:29', '$2y$10$yMtLxfLZZlopxHZzL/qjUOQ0D5YqkGVV4PGpHUroF0sDfbuO7OpSq', NULL, '2021-07-07 03:38:29', '2021-07-07 03:38:29', '201805490', NULL, NULL, 2),
(5, 'Hai Ngo Van', 'hainv@hblab.vn', '2021-07-18 03:36:27', '$2y$10$jJgKzsS1lbSU7uuUc6nZ4e4UbaGZuNiNjcdhnj4nkkINkeY7ZJS0G', NULL, '2021-07-18 03:36:27', '2021-07-18 03:36:27', '300062304', NULL, NULL, 2),
(7, 'béo béo', 'beobeo1998bn@gmail.com', '2021-07-26 17:15:59', '$2y$10$HZTTKQoWtNymhaHlfQErgOot7pqSbwueJrVU7Na/nFSuEAGiYTTfq', NULL, '2021-07-26 17:15:59', '2021-07-26 17:15:59', '587446634', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` bigint(20) UNSIGNED NOT NULL,
  `uf_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 4, 2, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 2, 1, NULL, NULL),
(7, 11, 1, NULL, NULL),
(8, 5, 1, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD UNIQUE KEY `attributes_atb_slug_unique` (`atb_slug`),
  ADD KEY `attributes_atb_category_id_foreign` (`atb_category_id`);

--
-- Chỉ mục cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_ap_product_id_foreign` (`ap_product_id`),
  ADD KEY `attribute_product_ap_attribute_id_foreign` (`ap_attribute_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_name_unique` (`c_name`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_img_product_id_foreign` (`img_product_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_od_transaction_id_foreign` (`od_transaction_id`),
  ADD KEY `orders_od_product_id_foreign` (`od_product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_name_unique` (`pro_name`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_category_id_foreign` (`pro_category_id`),
  ADD KEY `products_pro_type_product_id_foreign` (`pro_type_product_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_r_user_id_foreign` (`r_user_id`),
  ADD KEY `ratings_r_product_id_foreign` (`r_product_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_products_tp_slug_unique` (`tp_slug`),
  ADD KEY `type_products_tp_category_id_foreign` (`tp_category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`),
  ADD KEY `user_favourite_uf_user_id_foreign` (`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_a_menu_id_foreign` FOREIGN KEY (`a_menu_id`) REFERENCES `menus` (`id`);

--
-- Các ràng buộc cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_atb_category_id_foreign` FOREIGN KEY (`atb_category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_ap_attribute_id_foreign` FOREIGN KEY (`ap_attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `attribute_product_ap_product_id_foreign` FOREIGN KEY (`ap_product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_img_product_id_foreign` FOREIGN KEY (`img_product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_od_product_id_foreign` FOREIGN KEY (`od_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_od_transaction_id_foreign` FOREIGN KEY (`od_transaction_id`) REFERENCES `transactions` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_pro_category_id_foreign` FOREIGN KEY (`pro_category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_pro_type_product_id_foreign` FOREIGN KEY (`pro_type_product_id`) REFERENCES `type_products` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_r_product_id_foreign` FOREIGN KEY (`r_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ratings_r_user_id_foreign` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD CONSTRAINT `type_products_tp_category_id_foreign` FOREIGN KEY (`tp_category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD CONSTRAINT `user_favourite_uf_product_id_foreign` FOREIGN KEY (`uf_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_favourite_uf_user_id_foreign` FOREIGN KEY (`uf_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

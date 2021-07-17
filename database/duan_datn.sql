-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 17, 2021 lúc 04:55 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.4.21

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
(19, 11, 5);

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
(13, 'success.PNG', '2021-07-13__successpng.PNG', 11, '2021-07-13 16:24:02', NULL);

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
(94, '2021_07_02_115319_create_notifications_table', 1);

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
('2aeffd1e-1eec-465f-9b5a-4f6de5d12876', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"map hari\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:31:05.534104Z\"}', '2021-07-11 11:01:18', '2021-07-06 16:31:05', '2021-07-06 16:31:05'),
('5f7b947b-1c90-42b3-9dfe-577504e47963', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-13T16:10:41.428251Z\"}', '2021-07-16 10:46:20', '2021-07-13 16:10:41', '2021-07-13 16:10:41'),
('617e8e93-52e2-404f-b099-974464a96d9f', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T04:26:29.451255Z\"}', '2021-07-11 11:01:26', '2021-07-07 04:26:30', '2021-07-07 04:26:30'),
('67c33ce5-ef94-438e-81cc-ef0b9f5d50e9', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-17T04:31:01.939239Z\"}', '2021-07-17 06:33:02', '2021-07-17 04:31:01', '2021-07-17 04:31:01'),
('6c567231-473b-4a36-a98b-bfebf461adf3', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-16T11:10:53.016419Z\"}', '2021-07-16 14:21:28', '2021-07-16 11:10:53', '2021-07-16 11:10:53'),
('7fb83b95-081b-4942-a160-b187bf00e12a', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-17T06:32:49.669710Z\"}', '2021-07-17 06:33:10', '2021-07-17 06:32:49', '2021-07-17 06:32:49'),
('8436fb4b-98e5-4b3b-a8c2-9303e00847a0', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:22:22.533636Z\"}', '2021-07-06 16:22:43', '2021-07-06 16:22:22', '2021-07-06 16:22:22'),
('9a3a7d77-8079-41f0-920d-4e9af4922eb5', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-17T06:32:41.559335Z\"}', '2021-07-17 06:33:08', '2021-07-17 06:32:41', '2021-07-17 06:32:41'),
('9e29086d-1ccc-4f7f-828f-19e09fa6758a', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-16T10:47:46.650542Z\"}', '2021-07-16 14:21:30', '2021-07-16 10:47:46', '2021-07-16 10:47:46'),
('a5712372-35d3-4874-8484-14c8c9fa6dbb', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:07:41.860006Z\"}', '2021-07-06 16:20:04', '2021-07-06 16:07:42', '2021-07-06 16:07:42'),
('ae532e61-1297-4ebc-9c68-6303a033032d', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T04:26:43.445846Z\"}', '2021-07-11 11:01:23', '2021-07-07 04:26:43', '2021-07-07 04:26:43'),
('c4971cea-5f66-42be-bc81-9bb687877bee', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-17T04:31:15.243386Z\"}', '2021-07-17 06:33:05', '2021-07-17 04:31:15', '2021-07-17 04:31:15'),
('e76df58a-d5a1-4993-9222-35f963dd2f8d', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"\\u0110\\u1ea1i H\\u1ea3i\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-07T03:39:18.023882Z\"}', '2021-07-07 04:24:57', '2021-07-07 03:39:18', '2021-07-07 03:39:18'),
('eece3231-45b5-4815-9a29-35941d9ab8ad', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"user\",\"message\":\"V\\u1eeba mua s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:19:49.111892Z\"}', '2021-07-06 16:22:47', '2021-07-06 16:19:49', '2021-07-06 16:19:49'),
('f76f21f9-74e7-4290-911d-0855c3c8299e', 'App\\Notifications\\NotificationDatabase', 'App\\Models\\User', 1, '{\"name\":\"Admin Supper\",\"message\":\"V\\u1eeba comment s\\u1ea3n ph\\u1ea9m.\",\"created_at\":\"2021-07-06T16:04:02.000088Z\"}', '2021-07-06 16:22:36', '2021-07-06 16:04:04', '2021-07-06 16:04:04');

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
(9, 8, 9, 0, 1, 450000, '2021-07-17 04:31:15', '2021-07-17 04:31:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 'dong-ho-philippe-augustejl-11-16542zh', 4, 1, 0, 6900000, 10, '2021-07-06__974268866-donghophienbangioihan2.jpg', 5, 0, 1, 0, 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 'Đồng hồ Philippe AugusteJL-11-1654.2ZH', 0, 0, 9999, 1, 'Quartz/Pin', '10 ATM', '2021-07-06 15:40:21', '2021-07-06 15:40:21'),
(2, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 'dong-ho-philippe-auguste-pa-5551', 4, 1, 0, 18900000, 15, '2021-07-06__72429618-1034985426-donghokimnguu2.jpg', 9, 0, 1, 1, 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 'ĐỒNG HỒ PHILIPPE AUGUSTE PA-555.1', 0, 0, 7898, 3, 'Automatic (Cơ tự động)', '5ATM', '2021-07-06 15:44:42', '2021-07-06 15:44:42'),
(3, 'Đồng hồ Philippe Auguste PA5001B', 'dong-ho-philippe-auguste-pa5001b', 4, 1, 0, 2800000, 0, '2021-07-06__202451360-dong-ho-nhap-khau2.jpg', 1, 0, 1, 0, 'Đồng hồ Philippe Auguste PA5001B', 'Đồng hồ Philippe Auguste PA5001B', 0, 0, 123, 1, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:47:20', '2021-07-06 15:47:20'),
(4, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 'dong-ho-epos-swiss-e-3387152222832', 5, 1, 0, 85000000, 15, '2021-07-06__364723213-untitled-56.jpg', 4, 0, 1, 0, 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 'Đồng hồ Epos Swiss E-3387.152.22.28.32', 1, 1, 53, 3, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:52:36', '2021-07-07 03:39:17'),
(5, 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 'dong-ho-epos-swiss-e-3426132222032e-4426132222032', 5, 3, 0, 35000000, 0, '2021-07-06__96439908-48.jpg', 4, 0, 1, 0, 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 'Đồng hồ Epos Swiss E-3426.132.22.20.32+E-4426.132.22.20.32', 2, 10, 52, 2, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 15:54:16', '2021-07-17 06:32:49'),
(6, 'Đồng hồ Aries Gold QQ-M137J003Y', 'dong-ho-aries-gold-qq-m137j003y', 7, 4, 0, 58000, 0, '2021-07-06__m137j003y.jpg', 2, 0, 1, 2, 'Đồng hồ Aries Gold QQ-M137J003Y', 'Đồng hồ Aries Gold QQ-M137J003Y', 0, 0, 7777, 3, 'Automatic (Cơ tự động)', '1 ATM', '2021-07-06 15:56:03', '2021-07-06 15:56:03'),
(9, 'Dây da Diamond D D DM W 12', 'day-da-diamond-d-d-dm-w-12', 12, 7, 0, 450000, 0, '2021-07-06__1905887238-d-dm-w-12.jpg', 7, 0, 1, 78936, 'Dây da Diamond D D DM W 12', 'Dây da Diamond D D DM W 12', 0, 0, 78936, 4, NULL, NULL, '2021-07-06 16:00:04', '2021-07-17 13:15:32'),
(10, 'Đồng hồ Atlantic Swiss AT-22346.45.13', 'dong-ho-atlantic-swiss-at-223464513', 6, 1, 0, 25000000, 0, '2021-07-06__1029860979-dng-h-chnh-hng-32.jpg', 10, 0, 1, 7, 'Đồng hồ Atlantic Swiss AT-22346.45.13', 'Đồng hồ Atlantic Swiss AT-22346.45.13', 4, 16, 8547, 1, 'Automatic (Cơ tự động)', '10 ATM', '2021-07-06 16:01:48', '2021-07-17 13:15:38'),
(11, 'test create product', 'test-create-product', 5, 1, 0, 100000, 2, '2021-07-13__add-cart.png', 3, 0, 1, 0, 'test create product', 'test create product', 0, 0, 123, 3, '123', '123', '2021-07-13 16:24:02', '2021-07-13 16:24:02');

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
(7, 1, 5, 5, 1, '123321123', '2021-07-17 06:32:49', '2021-07-17 06:32:49');

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
(8, 1, 450000, 'Admin Supper', 'admin@gmail.com', '0377708868', 'bac ninh', '1', 3, 1, '2021-07-17 04:31:15', '2021-07-17 13:42:11');

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
(2, 'user', 'user@gmail.com', '2021-07-17 04:29:53', '$2y$10$aysdWsjtbGREMO5a83HtGOIilQ6i3kNYMHX.qkKfb6Cc.rMNvjara', NULL, '2021-07-06 16:28:16', '2021-07-17 04:29:53', '0355578896', NULL, NULL, 2),
(3, 'map hari', 'laravel1998bn@gmail.com', '2021-07-06 16:26:50', '$2y$10$gXPg/uTQdmmV4E2qtkla4upHZrCHjt37u6zNYOoGlJowvv.RQWs2a', NULL, '2021-07-06 16:26:50', '2021-07-06 16:26:50', '556533201', NULL, NULL, 2),
(4, 'Đại Hải', 'hai1998bn@gmail.com', '2021-07-07 03:38:29', '$2y$10$yMtLxfLZZlopxHZzL/qjUOQ0D5YqkGVV4PGpHUroF0sDfbuO7OpSq', NULL, '2021-07-07 03:38:29', '2021-07-07 03:38:29', '201805490', NULL, NULL, 2);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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

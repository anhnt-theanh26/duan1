-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2023 lúc 04:18 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ten_banner` varchar(255) NOT NULL,
  `img_banner` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `ten_banner`, `img_banner`, `link`, `trang_thai`) VALUES
(1, 'Truyện', 'banner truyện tranh.webp', '', 0),
(2, 'Khoa học', 'banner khoa học.jpg', '', 0),
(3, 'Lịch sử', 'banner lịch sử.jpg', '', 0),
(4, 'Kinh tế', 'banner kinh tế.avif', '', 0),
(5, 'Chính trị', 'banner chính trị.jfif', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `noi_dung` text NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `ngay_binh_luan` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noi_dung`, `id_sp`, `id_kh`, `ngay_binh_luan`) VALUES
(3, 'noidungnoidungnoidungnoidungnoidungnoidungnoidung', 2, 2, '2023-11-15'),
(4, 'grfvazwsrgaw', 1, 2, '2023-11-15'),
(5, 'noidung', 3, 2, '2023-11-15'),
(6, 'noidung', 4, 1, '2023-11-15'),
(8, 'noidung', 4, 2, '2023-11-15'),
(9, 'noidung', 5, 1, '2023-11-15'),
(10, 'noidung', 5, 2, '2023-11-15'),
(13, 'noidung', 3, 1, '2023-11-15'),
(15, 'noidung', 2, 1, '2023-11-15'),
(16, 'noidung', 2, 2, '2023-11-15'),
(21, 'hihi', 1, 1, '2023-11-18'),
(22, 'hehe', 1, 2, '2023-11-18'),
(23, 'lewlew', 1, 3, '2023-11-18'),
(24, 'this is', 1, 4, '2023-11-18'),
(25, 'LA', 1, 5, '2023-11-18'),
(26, '<3', 2, 1, '2023-11-18'),
(27, 'dau roi', 2, 2, '2023-11-18'),
(28, '<3', 2, 3, '2023-11-18'),
(29, '<3', 2, 1, '2023-11-18'),
(30, 'inder hook', 2, 3, '2023-11-18'),
(31, 'lo', 2, 5, '2023-11-18'),
(32, 'young boy', 3, 1, '2023-11-18'),
(33, 'dau roi', 3, 1, '2023-11-18'),
(34, 'young boy', 3, 3, '2023-11-18'),
(35, 'dau roi', 5, 1, '2023-11-18'),
(36, 'dau roi', 4, 1, '2023-11-18'),
(37, 'lo', 5, 1, '2023-11-18'),
(38, 'lo', 5, 5, '2023-11-18'),
(39, 'inder hook', 6, 3, '2023-11-18'),
(40, '<=3', 7, 1, '2023-11-18'),
(41, '<3', 8, 1, '2023-11-18'),
(42, 'dau roi', 9, 1, '2023-11-18'),
(43, 'young boy', 9, 1, '2023-11-18'),
(44, 'inder hook', 10, 1, '2023-11-18'),
(45, 'lo', 10, 1, '2023-11-18'),
(46, 'lo', 11, 1, '2023-11-18'),
(47, 'young boy', 10, 4, '2023-11-18'),
(48, 'inder hook', 11, 1, '2023-11-18'),
(49, 'lo', 11, 1, '2023-11-18'),
(50, 'young boy', 12, 1, '2023-11-18'),
(51, 'lo', 13, 1, '2023-11-18'),
(52, 'dau roi', 13, 1, '2023-11-18'),
(53, 'inder hook', 13, 1, '2023-11-18'),
(54, 'dau roi', 15, 1, '2023-11-18'),
(55, 'dau roi', 14, 1, '2023-11-18'),
(56, '<=3', 20, 1, '2023-11-18'),
(57, '<3', 19, 1, '2023-11-18'),
(58, '<3', 18, 1, '2023-11-18'),
(59, '<3', 17, 1, '2023-11-18'),
(60, '<3', 17, 3, '2023-11-18'),
(61, '<3', 16, 2, '2023-11-18'),
(62, '<3', 16, 1, '2023-11-18'),
(63, '<3', 15, 3, '2023-11-18'),
(64, '<3', 14, 3, '2023-11-18'),
(65, '<3', 25, 1, '2023-11-18'),
(66, '<3', 24, 1, '2023-11-18'),
(67, '<3', 23, 4, '2023-11-18'),
(68, '<3', 22, 1, '2023-11-18'),
(69, '<3', 16, 1, '2023-11-18'),
(70, '<3', 21, 4, '2023-11-18'),
(71, '', 1, 0, '2023-11-20'),
(73, '', 0, 6, '2023-11-20'),
(80, 'hihi', 11, 6, '2023-11-22'),
(82, 'LA', 1, 6, '2023-11-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `id_sp`, `id_hd`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(1, 1, 1, 1, 80000, 80000),
(2, 2, 1, 2, 25000, 50000),
(3, 9, 2, 1, 250000, 250000),
(4, 17, 2, 1, 200000, 200000),
(5, 25, 3, 1, 250000, 250000),
(6, 2, 4, 1, 25000, 25000),
(7, 3, 4, 1, 20000, 20000),
(8, 4, 4, 1, 25000, 25000),
(9, 6, 5, 1, 90000, 90000),
(10, 7, 5, 1, 200000, 200000),
(11, 17, 6, 1, 200000, 200000),
(12, 18, 6, 1, 320000, 320000),
(15, 24, 8, 1, 320000, 320000),
(16, 25, 8, 1, 250000, 250000),
(17, 7, 16, 1, 140000, 140000),
(18, 3, 16, 1, 14000, 14000),
(19, 8, 16, 1, 84000, 84000),
(20, 1, 9, 1, 80000, 80000),
(21, 1, 10, 1, 80000, 80000),
(22, 1, 17, 1, 56000, 56000),
(23, 11, 17, 1, 62300, 62300),
(24, 7, 17, 1, 140000, 140000),
(25, 2, 17, 3, 17500, 52500);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL,
  `img_danh_muc` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten_danh_muc`, `img_danh_muc`, `trang_thai`) VALUES
(1, 'Chính trị', 'tải xuống.png', 0),
(2, 'Kinh tế', 'tải xuống (1).jfif', 0),
(3, 'Lịch sử', '4b7c037158f13312857b6d201802771e.jpg', 0),
(4, 'khoa học', 'tải xuống.png', 0),
(5, 'Truyện', 'tải xuống.png', 0),
(6, 'Conan', 'tải xuống (2).jfif', 1),
(7, 'Dragonbal suober', 'tải xuống.png', 1),
(8, 'Tom and jerry ', 'tải xuống.png', 1),
(9, 'shin cau be but chi', '4b7c037158f13312857b6d201802771e.jpg', 1),
(10, '7 vien ngoc rong a moi sua', '4b7c037158f13312857b6d201802771e.jpg', 1),
(11, 'cổ trang hán phục mới sửa', 'tải xuống.jfif', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `ngay_dat` date NOT NULL DEFAULT current_timestamp(),
  `tong_tien` int(11) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_kh`, `ngay_dat`, `tong_tien`, `dia_chi`, `email`, `ten_kh`, `sdt`, `trang_thai`) VALUES
(1, 1, '2023-11-19', 130000, 'ngã 4 đội 3 sơn đồng tiên phương chương mỹ hà nội', '', '', '0348022004', 2),
(2, 2, '2023-11-19', 450000, 'ngã 4 đội 3 sd tp cm hn', '', '', '0123456789', 0),
(3, 3, '2023-11-19', 250000, 'ngã 4 đội 3 sd tp cm hn', '', '', '0123456789', 0),
(4, 4, '2023-11-19', 70000, 'ngã 4 đội 3 sd tp cm hn', '', '', '0123456789', 2),
(5, 5, '2023-11-19', 290000, 'ngã 4 đội 3 sd tp cm hn', '', '', '0123456789', 0),
(6, 6, '2023-11-22', 520000, 'hà nội', '', '', '1234', 1),
(8, 1, '2023-11-22', 570000, 'hn', '', '', '123', 1),
(9, 1, '2023-11-25', 80000, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 0),
(10, 1, '2023-11-25', 80000, '1', '12345@gmail.com', 'khach hang 1', '1', 0),
(16, 3, '2023-11-25', 238000, '1', '12345@gmail.com', 'khách hàng3', '1', 0),
(17, 6, '2023-11-25', 310800, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `ten_khach_hang` varchar(255) NOT NULL,
  `ten_dang_nhap` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `img_khach_hang` varchar(255) NOT NULL DEFAULT 'macdinh.png',
  `email_khach_hang` varchar(255) NOT NULL,
  `sdt_khach_hang` varchar(255) NOT NULL,
  `dia_chi_khach_hang` text NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten_khach_hang`, `ten_dang_nhap`, `mat_khau`, `img_khach_hang`, `email_khach_hang`, `sdt_khach_hang`, `dia_chi_khach_hang`, `trang_thai`) VALUES
(1, 'khach hang 1', 'kh1', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '1', '1', 0),
(2, 'khach hang 2123', 'kh2', '202cb962ac59075b964b07152d234b70', '4b7c037158f13312857b6d201802771e.jpg', '12345@gmail.com', '2123', '2123', 0),
(3, 'khách hàng3', 'kh3', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '1', '1', 0),
(4, 'khách hàng 4', 'kh4', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '1@gmail.com', '0123456789', '1', 0),
(5, 'khách hàng5', 'kh5', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '1@gmail.com', '1', '1', 0),
(6, 'Nguyễn Thế Anh', 'anhnt', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '0348022004', 'hà nội', 0),
(7, 'kh7', 'kh7', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '1', '212323r45123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(11) NOT NULL,
  `ma_khuyen_mai` varchar(255) NOT NULL,
  `phan_tram_phuyen_mai` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL DEFAULT current_timestamp(),
  `ngay_ket_thuc` date NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `ma_khuyen_mai`, `phan_tram_phuyen_mai`, `ngay_bat_dau`, `ngay_ket_thuc`, `trang_thai`) VALUES
(1, '10%', 10, '2023-11-15', '2023-10-30', 0),
(2, '20%', 20, '2023-11-15', '2023-11-01', 0),
(3, 'Giảm 30% hóa đơn', 30, '2023-11-01', '2023-12-16', 0),
(4, '40%', 40, '2023-11-30', '2023-11-30', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `gioi_thieu` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `img`, `gioi_thieu`, `dia_chi`, `sdt`, `email`) VALUES
(1, 'images.png', 'Sự lựa chọn sáng suốt và đáng tin cậy', 'Ngã 4 , đội 3, thôn Sơn Đồng, xã Tiên Phương, huyện Chương Mỹ, thành phố Hà Nội', '0348022004', 'anhntph43180@fpt.edu.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `ten_nguoi_dung` varchar(255) NOT NULL,
  `ten_dang_nhap` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `img_nguoi_dung` varchar(255) NOT NULL DEFAULT 'macdinh.png',
  `email_nguoi_dung` varchar(255) NOT NULL,
  `sdt_nguoi_dung` varchar(11) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `vai_tro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `ten_nguoi_dung`, `ten_dang_nhap`, `mat_khau`, `img_nguoi_dung`, `email_nguoi_dung`, `sdt_nguoi_dung`, `trang_thai`, `vai_tro`) VALUES
(1, 'Nguyễn Thế Anh', 'anhnt', '202cb962ac59075b964b07152d234b70', 'macdinh.png', 'theanh26@gmail.com', '0348022004', 0, 1),
(2, 'Nguyễn Thế Anh', 'nta', '202cb962ac59075b964b07152d234b70', 'img.jpg', 'nta@gmail.com', '0348022004', 0, 2),
(4, 'nguyen the anh', 'theanh26', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '1', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `gia_san_pham` int(11) NOT NULL,
  `img_dai_dien` varchar(255) NOT NULL,
  `mo_ta_san_pham` text NOT NULL,
  `so_luong` int(11) NOT NULL,
  `da_ban` int(11) NOT NULL,
  `luot_xem` int(11) NOT NULL,
  `img_san_pham1` varchar(255) NOT NULL,
  `img_san_pham2` varchar(255) NOT NULL,
  `img_san_pham3` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_san_pham`, `gia_san_pham`, `img_dai_dien`, `mo_ta_san_pham`, `so_luong`, `da_ban`, `luot_xem`, `img_san_pham1`, `img_san_pham2`, `img_san_pham3`, `trang_thai`, `iddm`) VALUES
(1, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 80000, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn.jpg', '<p>Cuốn s&aacute;ch Thỏ Bảy M&agrave;u V&agrave; Những Người Nghĩ N&oacute; L&agrave; Bạn t&aacute;i bản năm 2023 l&agrave; t&aacute;c phẩm của t&aacute;c giả kh&ocirc;ng k&eacute;m phần s&aacute;ng tạo v&agrave; độc đ&aacute;o. Cuốn s&aacute;ch nhẹ nh&agrave;ng, đầy h&agrave;i hước v&agrave; ch&acirc;m biếm xoay quanh c&acirc;u chuyện về Thỏ Bảy M&agrave;u v&agrave; những người nghĩ rằng Thỏ l&agrave; bạn của họ. Với h&igrave;nh ảnh v&agrave; điệu bộ dễ thương, Thỏ Bảy M&agrave;u đ&atilde; trở th&agrave;nh một nh&acirc;n vật được nhiều người y&ecirc;u th&iacute;ch tr&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>Những mẩu chuyện trong cuốn s&aacute;ch được vẽ bằng tranh, kể về tho&aacute;ng qua cuộc sống của Thỏ v&agrave; những người xung quanh. T&aacute;c giả đ&atilde; d&ugrave;ng những c&acirc;u chuyện &ldquo;teen&rdquo; để lồng gh&eacute;p v&agrave;o những gi&aacute; trị đ&iacute;ch thực của cuộc sống, khiến độc giả kh&ocirc;ng chỉ cười đ&ugrave;a m&agrave; c&ograve;n suy ngẫm. Cuốn s&aacute;ch n&agrave;y l&agrave; một t&aacute;c phẩm giải tr&iacute; l&yacute; th&uacute; v&agrave; s&acirc;u sắc đối với c&aacute;c độc giả, đặc biệt l&agrave; c&aacute;c bạn trẻ.</p>\r\n', 0, 7, 171, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn1.jpg', 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn2.jpg', 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn3.jpg', 0, 5),
(2, 'Rùa Và Thỏ', 25000, 'Rùa Và Thỏ.jpg', '<p>Truyện&nbsp;<strong>R&ugrave;a v&agrave; Thỏ</strong>&nbsp;l&agrave; một c&acirc;u&nbsp;<strong>truyện ngụ</strong><a href=\"https://cotich.net/truyen-ngu-ngon.html\"><strong> ng&ocirc;n</strong></a>&nbsp;nổi tiếng của&nbsp;<strong>Aesop</strong>. L&agrave; cuốn C&acirc;u truyện thiếu nhi trong tủ s&aacute;ch song ngữ Việt - Anh&nbsp; của nh&agrave; xuất bản H&agrave; Nội. Cuốn s&aacute;ch với k&iacute;ch thước 17*24 cm.Tr&ecirc;n ngay từ b&igrave;a s&aacute;ch đ&atilde; được trang tr&iacute; đẹp mắt với h&igrave;nh ảnh R&ugrave;a v&agrave; Thỏ được t&ocirc; vẽ với m&agrave;u sắc tươi tắn.Cuốn s&aacute;ch c&oacute; phần minh họa sống động, bắt mắt gi&uacute;p c&aacute;c độc giả nh&iacute; cảm thấy hấp dẫn với c&acirc;u chuyện b&ecirc;n trang. Thỏ v&agrave; r&ugrave;a l&agrave; c&acirc;u chuyện xoay quanh cuộc chạy đua giữa&nbsp;<strong>R&ugrave;a v&agrave; Thỏ</strong>. Từ cuộc chạy đua giữa hai con vật đ&atilde; r&uacute;t ra được những b&agrave;i học rất hay v&agrave; s&acirc;u sắc cho người đọc. C&acirc;u chuyện kể về cuộc đua giữa r&ugrave;a v&agrave; thỏ. Ch&uacute; thỏ v&igrave; ỷ lại tốc độ chạy của m&igrave;nh m&agrave; chủ quan n&ecirc;n r&ugrave;a d&ugrave; chậm chạp m&agrave; ki&ecirc;n tr&igrave; đ&atilde; về đến đ&iacute;ch trước. Qua đ&oacute;, r&uacute;t ra được b&agrave;i học v&ocirc; c&ugrave;ng &yacute; nghĩa cho người đọc.&nbsp;&Yacute; nghĩa của c&acirc;u truyện ch&iacute;nh l&agrave; khi l&agrave;m bất cứ một việc g&igrave; th&igrave; l&agrave;m chậm v&agrave; ổn định chắc chắn sẽ chiến thắng. V&agrave; cũng đừng giống Thỏ nghĩ m&igrave;nh chạy nhanh n&ecirc;n đ&atilde; tự cao tự đại coi thường R&ugrave;a, kết cục l&agrave; R&ugrave;a đ&atilde; chiến thắng.</p>\r\n\r\n<p><strong>Truyện R&ugrave;a v&agrave; Thỏ&nbsp;</strong>tuy l&agrave; một c&acirc;u truyện đơn giản nhưng đ&atilde; cho ch&uacute;ng ta một b&agrave;i học rất qu&yacute; gi&aacute; l&agrave; chậm m&agrave; ổn định sẽ chiến thắng nhanh m&agrave; ẩu đoảng. Chỉ cần ch&uacute;ng ta ki&ecirc;n tr&igrave;, chắc chắn sẽ th&agrave;nh c&ocirc;ng&rdquo;.</p>\r\n', 12, 4, 8, 'Rùa Và Thỏ1.jpg', 'Rùa Và Thỏ2.jpg', 'Rùa Và Thỏ3.png', 0, 5),
(3, 'Con quạ thông minh', 20000, 'Con quạ thông minh.jpg', '<p>Để đưa những tinh hoa văn học truyền thống đến với đ&ocirc;ng đảo trẻ em Việt Nam, Ph&uacute;c Minh&nbsp;cho ra mắt bộ s&aacute;ch &ldquo;Ngụ ng&ocirc;n song ngữ&rdquo; với hơn nhiều cuốn s&aacute;ch ngụ ng&ocirc;n kh&aacute;c nhau. Hơn nữa, bộ s&aacute;ch được thể hiện dưới h&igrave;nh thức SONG NGỮ, kh&ocirc;ng chỉ gi&uacute;p c&aacute;c em nhỏ tiếp thu những b&agrave;i học đạo đức th&uacute; vị m&agrave; c&ograve;n c&ugrave;ng l&uacute;c học song song cả Tiếng Việt v&agrave; Tiếng Anh.<br />\r\n<br />\r\n<em><strong>Ch&uacute; quạ th&ocirc;ng minh</strong></em>&nbsp;l&agrave; c&acirc;u chuyện về bạn quạ: trời nóng hạn, Quạ Đen và các bạn đang sắp ch&ecirc;́t khát. May mắn thay, Quạ tìm th&acirc;́y m&ocirc;̣t bình nước. Nhưng nước trong bình ít quá, c&ocirc;̉ bình lại cao, Quạ Đen kh&ocirc;ng th&ecirc;̉ thọc mỏ vào u&ocirc;́ng được. Đ&ocirc;́ bé, Quạ Đen đã dùng cách gì có nước u&ocirc;́ng đ&acirc;y?</p>\r\n', 15, 6, 2, 'Con quạ thông minh1.jpg', 'Con quạ thông minh2.png', 'Con quạ thông minh3.jpg', 0, 5),
(4, 'Chú thỏ tinh khôn', 25000, 'Chú thỏ tinh khôn.jpg', '<p>Việt Nam c&oacute; một kho t&agrave;ng truyện cổ t&iacute;ch v&ocirc; c&ugrave;ng đa dạng v&agrave; phong ph&uacute;. Mỗi truyện cổ t&iacute;ch kh&ocirc;ng đơn thuần mang gi&aacute; trị giải tr&iacute; m&agrave; ẩn chứa trong đ&oacute; l&agrave; những b&agrave;i học bổ &iacute;ch mang t&iacute;nh gi&aacute;o dục cao. Do đ&oacute;, hầu hết c&aacute;c b&eacute; thiếu nhi đều được &ocirc;ng b&agrave;, cha mẹ, thầy c&ocirc; kể cho nghe những c&acirc;u chuyện cổ t&iacute;ch.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; tập truyện tranh in m&agrave;u d&agrave;nh cho thiếu nhi kể về c&acirc;u chuyện cổ t&iacute;ch: C&aacute;o, Thỏ V&agrave; G&agrave; Trống.</p>\r\n\r\n<p>Nội dung truyện cổ t&iacute;ch được t&oacute;m tắt ngắn gọn, k&egrave;m theo đ&oacute; l&agrave; h&igrave;nh ảnh minh hoạ sinh động c&ugrave;ng m&agrave;u sắc tươi s&aacute;ng thu h&uacute;t sự ch&uacute; &yacute; của c&aacute;c độc giả nh&iacute;.</p>\r\n\r\n<p>C&aacute;c qu&yacute; phụ huynh c&oacute; thể đọc cho c&aacute;c b&eacute; nghe hoặc đọc c&ugrave;ng với b&eacute;.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8936067590616</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Độ Tuổi</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?age=1921&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">5+</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/minh-long?fhs_campaign=ATTRIBUTE_PRODUCT\">Minh Long</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Minh Long</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Văn Học</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2013</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>60</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>27 x 19 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>16</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/thieu-nhi/truyen-thieu-nhi/truyen-tranh-thieu-nhi.html?order=num_orders_month\">Top 100 sản phẩm Truyện Tranh Thiếu Nhi b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Việt Nam c&oacute; một kho t&agrave;ng truyện cổ t&iacute;ch v&ocirc; c&ugrave;ng đa dạng v&agrave; phong ph&uacute;. Mỗi truyện cổ t&iacute;ch kh&ocirc;ng đơn thuần mang gi&aacute; trị giải tr&iacute; m&agrave; ẩn chứa trong đ&oacute; l&agrave; những b&agrave;i học bổ &iacute;ch mang t&iacute;nh gi&aacute;o dục cao. Do đ&oacute;, hầu hết c&aacute;c b&eacute; thiếu nhi đều được &ocirc;ng b&agrave;, cha mẹ, thầy c&ocirc; kể cho nghe những c&acirc;u chuyện cổ t&iacute;ch.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; tập truyện tranh in m&agrave;u d&agrave;nh cho thiếu nhi kể về c&acirc;u chuyện cổ t&iacute;ch: C&aacute;o, Thỏ V&agrave; G&agrave; Trống.</p>\r\n\r\n<p>Nội dung truyện cổ t&iacute;ch được t&oacute;m tắt ngắn gọn, k&egrave;m theo đ&oacute; l&agrave; h&igrave;nh ảnh minh hoạ sinh động c&ugrave;ng m&agrave;u sắc tươi s&aacute;ng thu h&uacute;t sự ch&uacute; &yacute; của c&aacute;c độc giả nh&iacute;.</p>\r\n\r\n<p>C&aacute;c qu&yacute; phụ huynh c&oacute; thể đọc cho c&aacute;c b&eacute; nghe hoặc đọc c&ugrave;ng với b&eacute;.</p>\r\n', 123, 4, 0, 'Chú thỏ tinh khôn1.jpg', 'Chú thỏ tinh khôn2.jpg', 'Chú thỏ tinh khôn3.jpg', 0, 5),
(5, 'Chính trị vũ trụ hạt nhân', 135000, 'Chính trị vũ trụ hạt nhân.jfif', '<h1><strong>Ch&iacute;nh Trị Vũ Kh&iacute; Hạt Nh&acirc;n - Andrew Futter</strong></h1>\r\n\r\n<h2>Cuốn s&aacute;ch mang đến c&aacute;i nh&igrave;n chuy&ecirc;n s&acirc;u, cụ thể hơn về vấn đề ch&iacute;nh trị dưới gốc độ hạt nh&acirc;n. Đ&oacute; l&agrave; những ch&iacute;nh s&aacute;ch, chiến lược hạt nh&acirc;n, những động th&aacute;i, h&agrave;nh động v&agrave; kế hoạch hạt nh&acirc;n hiện tại v&agrave; trong tương lai của mỗi nước. Khi tiếp cận c&aacute;c vấn đề ch&iacute;nh trị hạt nh&acirc;n, t&aacute;c giả đ&atilde; cố gắng: x&aacute;c định bối cảnh chung v&agrave; bối cảnh lịch sử cho vai tr&ograve; của vũ kh&iacute; hạt nh&acirc;n đối với an ninh quốc tế; c&aacute;c kh&iacute;a cạnh ch&iacute;nh trị, khoa học &ndash; c&ocirc;ng nghệ, quy chuẩn v&agrave; chiến lược vũ kh&iacute; hạt nh&acirc;n của mỗi nước; l&agrave;m nổi bật những &yacute; kiến tr&aacute;i chiều v&agrave; tranh luận ch&iacute;nh về vũ kh&iacute; hạt nh&acirc;n nhằm gi&uacute;p bạn đọc hiểu s&acirc;u hơn những th&aacute;ch thức sẽ định h&igrave;nh tương lai hạt nh&acirc;n, hay c&ugrave;ng suy ngẫm, xem x&eacute;t gi&aacute; trị tương đối của c&aacute;c lựa chọn sẵn c&oacute; trong việc kiểm so&aacute;t v&agrave; giải quyết mối đe dọa hạt nh&acirc;n.</h2>\r\n', 58, 0, 1, 'Chính trị vũ trụ hạt nhân1.html', 'Chính trị vũ trụ hạt nhân2.jpeg', 'Chính trị vũ trụ hạt nhân3.png', 0, 1),
(6, 'Chính trị học', 90000, 'Chính trị học.jfif', '<p>Gi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt Nam</p>\r\n', 89, 0, 0, 'Chính trị học1.jpg', 'Chính trị học2.jfif', 'Chính trị học3.jpg', 0, 1),
(7, 'Chính trị bình dân', 200000, 'Chính trị bình dân.jfif', '<p><a href=\"https://donghohaitrieu.com/kinh-nghiem/review-sach-hay/20-truyen-ngu-ngon-viet-nam-hay-dac-sac-y-nghia-cho-be.html#con-qua-thong-minh\">Con quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minh</a></p>\r\n', 100, 0, 10, 'Chính trị bình dân1.jfif', 'Chính trị bình dân2.png', 'Chính trị bình dân3.jfif', 0, 1),
(8, 'Mưu Kế Chính Trị', 120000, 'Mưu Kế Chính Trị.png', '<h2>Mưu Kế Ch&iacute;nh Trị &ndash; Vũ T&agrave;i Lục</h2>\r\n\r\n<p>Đời sống x&atilde; hội l&agrave; một chuỗi d&agrave;i những lừa lọc. Thứ nhất l&agrave; đời sống chinh trị. Chẳng hạn như những nh&agrave; ngoại giao của c&aacute;c cường quốc hay đế quốc. Cứ mỗi lần sửa soạn chien tranh th&igrave; họ n&oacute;i rất nhiều về h&ograve;a b&igrave;nh v&agrave; t&igrave;nh giao hảo th&acirc;n thiện giữa c&aacute;c nước. Ngoại trưởng của những cường quốc hay đế quốc bắt đầu b&ecirc;nh vực hoặc k&ecirc;u gọi một hội nghị h&ograve;a b&igrave;nh c&oacute; nghĩa l&agrave; b&ecirc;n trong đ&atilde; sẵn c&oacute; một kế họach chiến tranh t&agrave;n bạo. Với chinh trị lời n&oacute;i tốt l&agrave; để che việc l&agrave;m t&agrave;n bạo.</p>\r\n\r\n<p>Trong sinh họat thường nhật, cũng như trong sinh họat chinh trị, Khổng Tử vẫn n&oacute;i: &ldquo;Sảo nhi hiếu độ tất c&ocirc;ng, dụng nhi hiếu độ tất thắng, tr&iacute; nhi hiếu mưu tất th&agrave;nh&rdquo; (Đ&atilde; kh&eacute;o rồi m&agrave; lại đo ngắm cho cẩn thận th&igrave; việc phải tốt, đ&atilde; d&ugrave;ng m&agrave; biết c&ugrave;ng người cộng t&aacute;c th&igrave; phải thắng, đa tr&iacute; m&agrave; lại nhiều mưu th&igrave; phải th&agrave;nh).</p>\r\n', 142, 0, 1, 'Mưu Kế Chính Trị1.jfif', 'Mưu Kế Chính Trị2.jfif', 'Mưu Kế Chính Trị3.jfif', 0, 1),
(9, 'Phải trái đúng sai', 250000, 'Phải trái đúng sai.jpg', '<p>S&aacute;ch b&agrave;n về vấn đề đạo đức dưới c&aacute;i nh&igrave;n triết học. T&aacute;c giả đưa ra c&aacute;c vụ việc g&acirc;y tranh c&atilde;i về vấn đề đạo đức để mổ xẻ dưới nhiều g&oacute;c độ, theo quan điểm của c&aacute;c học thuyết triết học kh&aacute;c nhau, mỗi chương tr&igrave;nh b&agrave;y s&acirc;u về một học thuyết. Nhờ vậy, tư tưởng của Aristotle, Jeremy Bentham, Immanuel Kant, John Stuart Mill, Robert Nozick, v&agrave; John Rawl được tr&igrave;nh b&agrave;y với sự r&otilde; r&agrave;ng v&agrave; gần gũi, m&agrave; theo New York Times l&agrave;&nbsp;&ldquo;hiếm khi được giải th&iacute;ch dễ hiểu đến như vậy&rdquo;.<br />\r\n<br />\r\n&ldquo;<strong>Michael Sandel</strong>&nbsp;&ndash; c&oacute; lẽ l&agrave; gi&aacute;o sư đại học nổi tiếng nhất ở Mỹ &ndash; đ&atilde; mang lại &ldquo;sự minh bạch về đạo đức cho sự lựa chọn m&agrave; ch&uacute;ng ta phải đối mặt, với tư c&aacute;ch l&agrave; c&ocirc;ng d&acirc;n trong x&atilde; hội d&acirc;n chủ&rdquo;. &Ocirc;ng đ&atilde; chỉ ra rằng sự chia rẽ ch&iacute;nh trị kh&ocirc;ng phải giữa c&aacute;nh tả với c&aacute;nh hữu m&agrave; giữa những người nhận ra kh&ocirc;ng c&oacute; g&igrave; qu&yacute; hơn quyền c&aacute; nh&acirc;n v&agrave; lựa chọn c&aacute; nh&acirc;n với những người tin v&agrave;o một nền ch&iacute;nh trị phục vụ lợi &iacute;ch số đ&ocirc;ng&rdquo;<br />\r\n&ndash; Bưu điện Washington<br />\r\n<br />\r\n&ldquo;Quyết liệt, dễ hiểu, v&agrave; đầy t&iacute;nh nh&acirc;n văn, cuốn s&aacute;ch n&agrave;y thực sự l&agrave; một cuốn s&aacute;ch l&agrave;m thay đổi người đọc&rdquo;&nbsp;<strong>&ndash; Publisher Weekly</strong><br />\r\n<br />\r\nCuốn s&aacute;ch thuộc&nbsp;Tủ s&aacute;ch C&aacute;nh cửa mở rộng&nbsp;&ndash; Tủ s&aacute;ch hợp t&aacute;c giữa nh&agrave; to&aacute;n học Ng&ocirc; Bảo Ch&acirc;u v&agrave; nh&agrave; văn Phan Việt với Nh&agrave; xuất bản Trẻ.</p>\r\n', 123, 0, 2, 'Phải trái đúng sai1.jfif', 'Phải trái đúng sai2.jpg', 'Phải trái đúng sai3.jpg', 0, 1),
(10, 'Kinh tế số', 89000, 'Kinh tế số.jpg', '<p>Quyển s&aacute;ch &ldquo;Kinh tế số&rdquo; ra đời nhằm cung cấp v&agrave; chia sẻ với người đọc c&aacute;i nh&igrave;n tổng quan hơn về triển vọng kinh tế Internet, ch&iacute;nh s&aacute;ch ph&aacute;t triển v&agrave; dữ liệu trong nền kinh tế số ở cung v&agrave; cầu, ph&acirc;n t&iacute;ch cơ hội cũng như th&aacute;ch thức của kinh tế số đối với c&aacute;c doanh nghiệp, đặc biệt l&agrave; doanh nghiệp trong nền kinh tế Việt Nam, từ đ&oacute; c&oacute; những định hướng cũng như ch&iacute;nh s&aacute;ch ph&aacute;t triển, đổi mới cho nền kinh tế nước nh&agrave;. Cuốn s&aacute;ch n&agrave;y sẽ hữu &iacute;ch cho những ai đang quan t&acirc;m theo học ng&agrave;nh Quản trị kinh doanh, C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 84, 0, 2, 'Kinh tế số1.webp', 'Kinh tế số2.jpg', 'Kinh tế số3.png', 0, 2),
(11, 'Kinh tế vĩ mô', 89000, 'Kinh tế vĩ mô.jfif', '<h2>Giới thiệu s&aacute;ch Kinh Tế Học - S&aacute;ch Tham Khảo - Tập 1 (B&igrave;a Cứng)</h2>\r\n\r\n<p>Kinh tế học&nbsp;l&agrave; một khoa học động - lu&ocirc;n thay đổi để phản &aacute;nh những xu hướng biến chuyển của những vấn đề kinh tếm của m&ocirc;i trường v&agrave; nền kinh tế thế giới, cũng như của x&atilde; hội n&oacute;i chung. Khi kinh tế học v&agrave; thế giới rộng lớn hơn xung quanh ta ph&aacute;t triển th&igrave; cuốn s&aacute;ch n&agrave;y cũng vậy. Mỗi một chương của n&oacute; đều b&aacute;m s&aacute;t những thay đổi của những ph&acirc;n t&iacute;ch kinh tế v&agrave; ch&iacute;nh s&aacute;ch kinh tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 123, 0, 32, 'Kinh tế vĩ mô1.jpg', 'Kinh tế vĩ mô2.webp', 'Kinh tế vĩ mô3.jfif', 0, 2),
(12, 'Kinh tế học', 99000, 'Kinh tế học.jpg', '<p>Kinh tế học l&agrave; một khoa học động - lu&ocirc;n thay đổi để phản &aacute;nh những xu hướng biến chuyển của những vấn đề kinh tếm của m&ocirc;i trường v&agrave; nền kinh tế thế giới, cũng như của x&atilde; hội n&oacute;i chung. Khi kinh tế học v&agrave; thế giới rộng lớn hơn xung quanh ta ph&aacute;t triển th&igrave; cuốn s&aacute;ch n&agrave;y cũng vậy. Mỗi một chương của n&oacute; đều b&aacute;m s&aacute;t những thay đổi của những ph&acirc;n t&iacute;ch kinh tế v&agrave; ch&iacute;nh s&aacute;ch kinh tế.<a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a></p>\r\n', 54, 0, 0, 'Kinh tế học3.jpg', 'Kinh tế học2.jpg', 'Kinh tế học1.jpg', 0, 2),
(13, 'Chiến tranh tiền tệ', 98500, 'Chiến tranh tiền tệ.webp', '<p><strong>Chiến Tranh Tiền Tệ (T&aacute;i Bản 2018)</strong></p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;gi&uacute;p ch&uacute;ng ta hiểu nhiều điều, rằng Bill Gates chưa phải l&agrave; người gi&agrave;u nhất h&agrave;nh tinh, rằng tỉ lệ tử vong của c&aacute;c tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh l&iacute;nh Mỹ ngo&agrave;i chiến trường, hay v&igrave; sao phố Wall lại mạo hiểm đổ hết vốn liếng của m&igrave;nh cho việc &ldquo;đầu tư&rdquo; v&agrave;o Hitler.</p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;đề cập đến một cuộc chiến khốc liệt, kh&ocirc;ng khoan nhượng v&agrave; dai dẳng giữa một nh&oacute;m nhỏ c&aacute;c &ocirc;ng tr&ugrave;m t&agrave;i ch&iacute;nh - đứng đầu l&agrave; gia tộc Rothschild - với c&aacute;c thể chế t&agrave;i ch&iacute;nh kinh tế của nhiều quốc gia. Đ&oacute; l&agrave; một cuộc chiến m&agrave; đồng tiền l&agrave; s&uacute;ng đạn v&agrave; mức s&aacute;t thương thật l&agrave; gh&ecirc; gớm. Một cuốn s&aacute;ch thực sự l&agrave;m sửng sốt với những ai muốn t&igrave;m hiểu về bản chất tiền tệ để từ đ&oacute; nhận ra những hiểm hoạ t&agrave;i ch&iacute;nh tiềm ẩn nhằm chuẩn bị t&acirc;m l&yacute; cho một cuộc chiến tiền tệ &ldquo;kh&ocirc;ng đổ m&aacute;u&rdquo;.</p>\r\n\r\n<p>B&ecirc;n cạnh việc phơi b&agrave;y những &acirc;m mưu của c&aacute;c nh&agrave; t&agrave;i phiệt thế giới trong việc tạo ra những cơn &ldquo;hạn h&aacute;n&rdquo; hay &ldquo;b&atilde;o lũ&rdquo; về tiền tệ để thu lợi nhuận, cuốn s&aacute;ch cũng đề cập đến sự ph&aacute;t triển của c&aacute;c định chế t&agrave;i ch&iacute;nh thế giới - những cơ cấu được x&acirc;y dựng nhằm đ&aacute;p ứng nhu cầu ph&aacute;t triển vũ b&atilde;o của nền kinh tế to&agrave;n cầu.</p>\r\n\r\n<p>***</p>\r\n\r\n<p>Một số tr&iacute;ch dẫn:</p>\r\n\r\n<p>&ldquo;Trong mắt họ [gia tộc Rothschild] kh&ocirc;ng c&oacute; chiến tranh v&agrave; h&ograve;a b&igrave;nh, kh&ocirc;ng c&oacute; khẩu hiệu v&agrave; tuy&ecirc;n ng&ocirc;n, cũng kh&ocirc;ng c&oacute; chết ch&oacute;c v&agrave; danh dự, họ xem thường những thứ m&ecirc; hoặc đ&ocirc;i mắt của người đời n&agrave;y. Trong mắt họ chỉ c&oacute; b&agrave;n đạp.&rdquo;</p>\r\n\r\n<p>&ldquo;Tiền kh&ocirc;ng c&oacute; Tổ quốc. C&aacute;c nh&agrave; t&agrave;i ch&iacute;nh kh&ocirc;ng biết thế n&agrave;o l&agrave; l&ograve;ng &aacute;i quốc v&agrave; sự cao thượng. Mục đ&iacute;ch duy nhất của họ ch&iacute;nh l&agrave; thu lợi.&rdquo;</p>\r\n\r\n<p>&ldquo;Của cải vốn dĩ tự động chảy về nơi c&oacute; thể bảo vệ n&oacute; v&agrave; khiến n&oacute; tăng gi&aacute; trị.&rdquo;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786048029753</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/bach-viet?fhs_campaign=ATTRIBUTE_PRODUCT\">B&aacute;ch Việt</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Song Hong Bing</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Người Dịch</th>\r\n			<td>Hồ Ngọc Minh</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Th&ocirc;ng Tin v&agrave; Truyền Th&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2018</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>550</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>16 x 24</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>518</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/kinh-te-chinh-tri-phap-ly/tai-chinh-ngan-hang.html?order=num_orders_month\">Top 100 sản phẩm T&agrave;i Ch&iacute;nh - Ng&acirc;n H&agrave;ng b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Chiến Tranh Tiền Tệ (T&aacute;i Bản 2018)</strong></p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;gi&uacute;p ch&uacute;ng ta hiểu nhiều điều, rằng Bill Gates chưa phải l&agrave; người gi&agrave;u nhất h&agrave;nh tinh, rằng tỉ lệ tử vong của c&aacute;c tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh l&iacute;nh Mỹ ngo&agrave;i chiến trường, hay v&igrave; sao phố Wall lại mạo hiểm đổ hết vốn liếng của m&igrave;nh cho việc &ldquo;đầu tư&rdquo; v&agrave;o Hitler.</p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;đề cập đến một cuộc chiến khốc liệt, kh&ocirc;ng khoan nhượng v&agrave; dai dẳng giữa một nh&oacute;m nhỏ c&aacute;c &ocirc;ng tr&ugrave;m t&agrave;i ch&iacute;nh - đứng đầu l&agrave; gia tộc Rothschild - với c&aacute;c thể chế t&agrave;i ch&iacute;nh kinh tế của nhiều quốc gia. Đ&oacute; l&agrave; một cuộc chiến m&agrave; đồng tiền l&agrave; s&uacute;ng đạn v&agrave; mức s&aacute;t thương thật l&agrave; gh&ecirc; gớm. Một cuốn s&aacute;ch thực sự l&agrave;m sửng sốt với những ai muốn t&igrave;m hiểu về bản chất tiền tệ để từ đ&oacute; nhận ra những hiểm hoạ t&agrave;i ch&iacute;nh tiềm ẩn nhằm chuẩn bị t&acirc;m l&yacute; cho một cuộc chiến tiền tệ &ldquo;kh&ocirc;ng đổ m&aacute;u&rdquo;.</p>\r\n\r\n<p>B&ecirc;n cạnh việc phơi b&agrave;y những &acirc;m mưu của c&aacute;c nh&agrave; t&agrave;i phiệt thế giới trong việc tạo ra những cơn &ldquo;hạn h&aacute;n&rdquo; hay &ldquo;b&atilde;o lũ&rdquo; về tiền tệ để thu lợi nhuận, cuốn s&aacute;ch cũng đề cập đến sự ph&aacute;t triển của c&aacute;c định chế t&agrave;i ch&iacute;nh thế giới - những cơ cấu được x&acirc;y dựng nhằm đ&aacute;p ứng nhu cầu ph&aacute;t triển vũ b&atilde;o của nền kinh tế to&agrave;n cầu.</p>\r\n\r\n<p>***</p>\r\n\r\n<p>Một số tr&iacute;ch dẫn:</p>\r\n\r\n<p>&ldquo;Trong mắt họ [gia tộc Rothschild] kh&ocirc;ng c&oacute; chiến tranh v&agrave; h&ograve;a b&igrave;nh, kh&ocirc;ng c&oacute; khẩu hiệu v&agrave; tuy&ecirc;n ng&ocirc;n, cũng kh&ocirc;ng c&oacute; chết ch&oacute;c v&agrave; danh dự, họ xem thường những thứ m&ecirc; hoặc đ&ocirc;i mắt của người đời n&agrave;y. Trong mắt họ chỉ c&oacute; b&agrave;n đạp.&rdquo;</p>\r\n\r\n<p>&ldquo;Tiền kh&ocirc;ng c&oacute; Tổ quốc. C&aacute;c nh&agrave; t&agrave;i ch&iacute;nh kh&ocirc;ng biết thế n&agrave;o l&agrave; l&ograve;ng &aacute;i quốc v&agrave; sự cao thượng. Mục đ&iacute;ch duy nhất của họ ch&iacute;nh l&agrave; thu lợi.&rdquo;</p>\r\n\r\n<p>&ldquo;Của cải vốn dĩ tự động chảy về nơi c&oacute; thể bảo vệ n&oacute; v&agrave; khiến n&oacute; tăng gi&aacute; trị.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 90, 0, 0, 'Chiến tranh tiền tệ2.png', 'Chiến tranh tiền tệ3.jpg', 'tải xuống (2).jfif', 0, 2),
(14, 'Từ tốt đến vĩ đại', 78000, 'Từ tốt đến vĩ đại.jpg', '<p>Jim Collins c&ugrave;ng nh&oacute;m nghi&ecirc;n cứu đ&atilde; miệt m&agrave;i nghi&ecirc;n cứu những c&ocirc;ng ty c&oacute; bước nhảy vọt v&agrave; bền vững để r&uacute;t ra những kết luận s&aacute;t sườn, những yếu tố cần k&iacute;p để đưa c&ocirc;ng ty từ tốt đến vĩ đại. Đ&oacute; l&agrave; những yếu tố khả năng l&atilde;nh đạo, con người, văn h&oacute;a, kỷ luật, c&ocirc;ng nghệ&hellip; Những yếu tố n&agrave;y được nh&oacute;m nghi&ecirc;n cứu xem x&eacute;t tỉ mỉ v&agrave; kiểm chứng cụ thể qua 11 c&ocirc;ng ty nhảy vọt l&ecirc;n vĩ đại. Mỗi kết luận của nh&oacute;m nghi&ecirc;n cứu đều hữu &iacute;ch, vượt thời gian, &yacute; nghĩa v&ocirc; c&ugrave;ng to lớn đối với mọi l&atilde;nh đạo v&agrave; quản l&yacute; ở mọi loại h&igrave;nh c&ocirc;ng ty (từ c&ocirc;ng ty c&oacute; nền tảng v&agrave; xuất ph&aacute;t tốt đến những c&ocirc;ng ty mới khởi nghiệp), v&agrave; mọi lĩnh vực ng&agrave;nh nghề. Đ&acirc;y l&agrave; cuốn s&aacute;ch n&ecirc;n đọc đối với bất kỳ l&atilde;nh đạo hay quản l&yacute; n&agrave;o!</p>\r\n', 97, 0, 0, 'Từ tốt đến vĩ đại1.jpg', 'Từ tốt đến vĩ đại2.jpg', 'Từ tốt đến vĩ đại3.jpg', 0, 2),
(15, 'Kinh tế học đổi mới', 59000, 'Kinh tế học đổi mới.jpg', '<p>Nội dung cuốn s&aacute;ch đề cập tới những vấn đề quan trọng của cuộc đua gi&agrave;nh lợi thế tr&ecirc;n phạm vi to&agrave;n cầu; trả lời cho c&acirc;u hỏi ai l&agrave; người chiến thắng, ai l&agrave; kẻ chiến bại trong cuộc đua n&agrave;y v&agrave; tại sao; c&aacute;c quốc gia cần phải l&agrave;m g&igrave; để tối đa h&oacute;a đổi mới v&agrave; tăng trưởng&hellip; B&ecirc;n cạnh đ&oacute;, c&aacute;c t&aacute;c giả đặc biệt nhấn mạnh việc x&acirc;y dựng một cộng đồng doanh nghiệp c&oacute; năng lực, sẵn s&agrave;ng đầu tư cho đổi mới m&agrave; kh&ocirc;ng kỳ vọng thu lợi nhuận trong ngắn hạn v&agrave; c&oacute; một ch&iacute;nh phủ sẵn s&agrave;ng thực thi c&aacute;c ch&iacute;nh s&aacute;ch đổi mới hiệu quả l&agrave; những yếu tố quyết định để gi&agrave;nh chiến thắng trong cuộc đua gi&agrave;nh lợi thế đổi mới to&agrave;n cầu.</p>\r\n', 57, 0, 0, 'Kinh tế học đổi mới1.jpg', 'Kinh tế học đổi mới.jpg', 'Kinh tế học đổi mới1.jpg', 0, 2),
(16, 'Đại Việt Sử Ký Toàn Thư', 2500000, 'Đại Việt Sử Ký Toàn Thư.jpg', '<ul>\r\n	<li>\r\n	<p><em><strong>Ấn phẩm &quot;Đại Việt sử k&yacute; to&agrave;n thư&quot;&nbsp;được bi&ecirc;n soạn bởi c&aacute;c sử gia của nh&agrave; L&ecirc; trong &quot;Ng&ocirc; gia văn ph&aacute;i&quot; gồm:&nbsp;Ng&ocirc; Sĩ Li&ecirc;n, Vũ Quỳnh, L&ecirc; Hy, Phạm C&ocirc;ng Trứ. Trong đ&oacute;, Ng&ocirc; Sỹ Li&ecirc;n l&agrave; người đầu ti&ecirc;n chấp b&uacute;t bi&ecirc;n soạn, L&ecirc; Hy, Vũ Quỳnh, Phạm C&ocirc;ng Trứ l&agrave; những người tiếp theo chỉnh sửa, bổ sung để c&oacute; được bộ sử ho&agrave;n chỉnh như ng&agrave;y nay. Đ&acirc;y là bản in&nbsp;phổ biến nhất&nbsp;dựa tr&ecirc;n cơ sở bản in&nbsp;Nội c&aacute;c quan bản&nbsp;- hiện đang lưu giữ tại thư viện&nbsp;Viện Viễn Đ&ocirc;ng B&aacute;c cổ&nbsp;ở Paris, do&nbsp;Nh&agrave; Xuất bản Khoa học X&atilde; hội ấn h&agrave;nh&nbsp;năm 1993.&nbsp;</strong></em></p>\r\n\r\n	<p><em><strong>Cu&ocirc;́n 1 được dịch và chú thích bởi dịch giả Ng&ocirc; Đức Thọ, cu&ocirc;́n 2 bởi dịch giả Hoàng Văn L&acirc;u, cu&ocirc;́n 3 bởi dịch giả Hoàng Văn L&acirc;u và Ng&ocirc; Th&ecirc;́ Long, cu&ocirc;́n 4 là nguy&ecirc;n văn chữ Hán phục vụ cho vi&ecirc;̣c nghi&ecirc;n cứu văn bản g&ocirc;́c.&nbsp;Ấn bản đang lưu giữu tại Qu&aacute;n S&aacute;ch M&ugrave;a Thu c&oacute; t&igrave;nh trạng đẹp, s&aacute;ch đ&acirc;̀y đủ 4 t&acirc;̣p, c&oacute; đầy đủ b&igrave;a gáy,&nbsp;ruột đủ trang, l&otilde;i s&aacute;ch chắc chắn.&nbsp;</strong></em></p>\r\n\r\n	<p><em><strong>Đại Việt sử k&yacute; to&agrave;n thư</strong></em>&nbsp;đ&ocirc;i khi gọi tắt l&agrave;&nbsp;<em><strong>To&agrave;n thư</strong></em>, l&agrave; bộ quốc sử viết bằng&nbsp;H&aacute;n văn&nbsp;của Việt Nam, viết theo&nbsp;thể bi&ecirc;n ni&ecirc;n, ghi ch&eacute;p lịch sử Việt Nam từ thời đại truyền thuyết&nbsp;Kinh Dương Vương&nbsp;năm 2879 TCN đến năm 1675 đời vua&nbsp;L&ecirc; Gia T&ocirc;ng&nbsp;nh&agrave; Hậu L&ecirc;. Bộ sử n&agrave;y được khắc in to&agrave;n bộ v&agrave; ph&aacute;t h&agrave;nh&nbsp;<em>lần đầu ti&ecirc;n</em>&nbsp;v&agrave;o năm Đinh Sửu, ni&ecirc;n hiệu Ch&iacute;nh H&ograve;a năm thứ 18, triều vua&nbsp;L&ecirc; Hy T&ocirc;ng, tức l&agrave; năm 1697. Đ&acirc;y l&agrave; bộ ch&iacute;nh sử Việt Nam xưa nhất c&ograve;n tồn tại nguy&ecirc;n vẹn đến ng&agrave;y nay, do nhiều đời sử quan trong&nbsp;Sử qu&aacute;n triều Hậu L&ecirc;&nbsp;bi&ecirc;n soạn.</p>\r\n\r\n	<p>Bộ sử bắt đầu được&nbsp;Ng&ocirc; Sĩ Li&ecirc;n, một vị sử quan l&agrave;m việc trong&nbsp;<em>Sử qu&aacute;n</em>&nbsp;dưới thời vua&nbsp;L&ecirc; Th&aacute;nh T&ocirc;ng, bi&ecirc;n soạn dựa tr&ecirc;n sự chỉnh l&yacute; v&agrave; bổ sung hai bộ quốc sử Việt Nam trước đ&oacute; c&ugrave;ng mang t&ecirc;n&nbsp;<em>Đại Việt sử k&yacute;</em>&nbsp;của&nbsp;L&ecirc; Văn Hưu&nbsp;v&agrave;&nbsp;Phan Phu Ti&ecirc;n. Ho&agrave;n th&agrave;nh v&agrave;o ni&ecirc;n hiệu Hồng Đức thứ 10 (1479), bộ sử mới của Ng&ocirc; Sĩ Li&ecirc;n gồm 15 quyển, ghi lại&nbsp;lịch sử Việt Nam&nbsp;từ một thời điểm huyền thoại l&agrave; năm 2879 TCN đến năm 1427 (khi nh&agrave;&nbsp;Hậu L&ecirc;&nbsp;được th&agrave;nh lập) v&agrave; mang t&ecirc;n&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>. Sau đ&oacute;, d&ugrave; đ&atilde; ho&agrave;n th&agrave;nh,&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;lại kh&ocirc;ng được khắc in để ban h&agrave;nh rộng r&atilde;i m&agrave; tiếp tục được nhiều đời sử quan trong Quốc sử qu&aacute;n sửa đổi, bổ sung v&agrave; ph&aacute;t triển th&ecirc;m. Khoảng ni&ecirc;n hiệu Cảnh Trị (1663 - 1671) đời vua&nbsp;L&ecirc; Huyền T&ocirc;ng, ch&uacute;a&nbsp;Trịnh Tạc&nbsp;hạ lệnh cho một nh&oacute;m văn quan, đứng đầu l&agrave; Tham tụng&nbsp;Phạm C&ocirc;ng Trứ, sửa chữa bộ quốc sử của Ng&ocirc; Sĩ Li&ecirc;n, đồng thời sai bi&ecirc;n soạn tiếp lịch sử Việt Nam từ năm 1428 đời vua&nbsp;L&ecirc; Th&aacute;i Tổ&nbsp;đến năm 1662 đời vua&nbsp;L&ecirc; Thần T&ocirc;ng&nbsp;nh&agrave; Hậu L&ecirc;. Bộ sử của nh&oacute;m Phạm C&ocirc;ng Trứ, gồm 23 quyển, được đem khắc in để ph&aacute;t h&agrave;nh nhưng c&ocirc;ng việc chưa xong, phải bỏ dở. Khoảng ni&ecirc;n hiệu&nbsp;Ch&iacute;nh H&ograve;a&nbsp;(1680 - 1705) đời vua&nbsp;L&ecirc; Hy T&ocirc;ng, ch&uacute;a&nbsp;Trịnh Căn&nbsp;lại hạ lệnh cho một nh&oacute;m văn quan, đứng đầu l&agrave; Tham tụng&nbsp;L&ecirc; Hy, tiếp tục khảo đ&iacute;nh bộ sử của nh&oacute;m Phạm C&ocirc;ng Trứ, đồng thời bi&ecirc;n soạn tiếp lịch sử Việt Nam từ năm 1663 đời vua&nbsp;L&ecirc; Huyền T&ocirc;ng&nbsp;đến năm 1675 đời vua&nbsp;L&ecirc; Gia T&ocirc;ng&nbsp;nh&agrave; Hậu L&ecirc;. Bộ quốc sử n&agrave;y lấy t&ecirc;n l&agrave;&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>, theo đ&uacute;ng t&ecirc;n m&agrave; sử gia Ng&ocirc; Sĩ Li&ecirc;n c&aacute;ch đ&oacute; gần hai&nbsp;thế kỷ&nbsp;đ&atilde; đặt cho bộ sử của &ocirc;ng, gồm 25 quyển, được khắc in to&agrave;n bộ v&agrave; ph&aacute;t h&agrave;nh th&agrave;nh c&ocirc;ng v&agrave;o năm Đinh Sửu, ni&ecirc;n hiệu Ch&iacute;nh H&ograve;a năm thứ 18 đời vua L&ecirc; Hy T&ocirc;ng, tức l&agrave; năm 1697.</p>\r\n\r\n	<p>Sau khi xuất bản,&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;tiếp tục được t&aacute;i bản bởi c&aacute;c hiệu in của ch&iacute;nh quyền v&agrave; tư nh&acirc;n, kh&ocirc;ng chỉ ở Việt Nam m&agrave; c&ograve;n tr&ecirc;n khắp thế giới, trong nhiều thế kỷ sau. Nửa cuối thế kỷ 20, ở Việt Nam xuất hiện c&aacute;c bản dịch&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;ra&nbsp;chữ quốc ngữ, phổ biến nhất l&agrave; bản dịch dựa tr&ecirc;n cơ sở bản in&nbsp;<em>Nội c&aacute;c quan bản</em>&nbsp;- hiện đang lưu giữ tại thư viện&nbsp;Viện Viễn Đ&ocirc;ng B&aacute;c cổ&nbsp;ở Paris, do&nbsp;<em>Nh&agrave; Xuất bản Khoa học X&atilde; hội</em>&nbsp;ph&aacute;t h&agrave;nh lần đầu năm 1993.</p>\r\n\r\n	<p><em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;l&agrave; bộ ch&iacute;nh sử Việt Nam xưa nhất c&ograve;n tồn tại nguy&ecirc;n vẹn đến ng&agrave;y nay, l&agrave; di sản v&ocirc; gi&aacute; của văn h&oacute;a d&acirc;n tộc Việt Nam, l&agrave; kho tư liệu phong ph&uacute; kh&ocirc;ng những cần thiết cho ng&agrave;nh sử học m&agrave; c&ograve;n gi&uacute;p &iacute;ch cho nhiều ng&agrave;nh khoa học x&atilde; hội kh&aacute;c&nbsp;v&agrave; cũng l&agrave; một bộ sử c&oacute; gi&aacute; trị văn học. C&aacute;c bộ quốc sử sau n&agrave;y của Việt Nam như&nbsp;<em>Đại Việt sử k&yacute; tiền bi&ecirc;n</em>,&nbsp;<em>Kh&acirc;m định Việt sử Th&ocirc;ng gi&aacute;m Cương mục</em>&nbsp;đều được bi&ecirc;n soạn dựa tr&ecirc;n cơ sở của&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 132, 0, 0, 'Đại Việt Sử Ký Toàn Thư1.jpg', 'Đại Việt Sử Ký Toàn Thư2.jfif', 'Đại Việt Sử Ký Toàn Thư3.webp', 0, 3),
(17, 'Sapiens: Lược Sử Về Loài Người.', 200000, 'Lược Sử Về Loài Ngườ.png', '<ul>\r\n	<li>\r\n	<p>Bộ truyện tranh n&agrave;y được chuyển thể từ cuốn s&aacute;ch best-seller &ldquo;Sapiens: Lược sử lo&agrave;i người&rdquo; của t&aacute;c giả nổi tiếng Yuval Harari.</p>\r\n\r\n	<p>Harari đ&atilde; hợp t&aacute;c với c&aacute;c nghệ sĩ truyện tranh nổi tiếng David Vandermeulen (đồng s&aacute;ng t&aacute;c) v&agrave; Daniel Casanave (họa sĩ minh họa), để tạo ra một loạt tập truyện đồ họa nhằm thu h&uacute;t những độc giả kh&ocirc;ng thường xuy&ecirc;n của mảng khoa học v&agrave; lịch sử.</p>\r\n\r\n	<p>Tập s&aacute;ch bao gồm nhiều h&igrave;nh ảnh minh họa đầy đủ m&agrave;u sắc v&agrave; văn bản dễ hiểu sẽ l&agrave;m nội dung của t&aacute;c phẩm trở n&ecirc;n hấp dẫn hơn d&agrave;nh cho độc giả mọi lứa tuổi. Dự kiến sẽ c&oacute; 4 tập dựa tr&ecirc;n 4 phần ch&iacute;nh của t&aacute;c phẩm gốc, v&agrave; tập đầu ti&ecirc;n đ&atilde; được ph&aacute;t h&agrave;nh tr&ecirc;n thế giới v&agrave;o cuối th&aacute;ng 10/2020, tập 2 dự kiến xuất bản v&agrave;o năm 2021</p>\r\n\r\n	<p>Đ&acirc;y l&agrave; tập 1 của bộ truyện tập trung v&agrave;o sự h&igrave;nh th&agrave;nh n&ecirc;n lo&agrave;i người đang thống trị Tr&aacute;i đất hiện nay. Cấu tr&uacute;c tập 1 gồm 4 phần:</p>\r\n\r\n	<p>_Những kẻ nổi loạn tr&ecirc;n đồng cỏ: lo&agrave;i người ban đầu chỉ l&agrave; một động vật b&igrave;nh thường như bao lo&agrave;i kh&aacute;c, v&agrave; đ&atilde; tồn tại nhiều lo&agrave;i người kh&aacute;c nhau trong qu&aacute; tr&igrave;nh tiến h&oacute;a. Bộ n&atilde;o lớn l&agrave; đặc điểm kh&aacute;c biệt với c&aacute;c lo&agrave;i vật kh&aacute;c, từ đ&oacute; khiến lo&agrave;i người c&oacute; khả năng học hỏi, sống tập trung theo nh&oacute;m c&oacute; cấu tr&uacute;c phức tạp, v&agrave; chế tạo c&ocirc;ng cụ hay biết sử dụng lửa trong cuộc sống. C&aacute;c lo&agrave;i người c&oacute; khả năng đ&atilde; lai giống với nhau, tuy nhi&ecirc;n việc tại sao chỉ c&ograve;n lo&agrave;i người Sapiens tồn tại trong khi c&aacute;c lo&agrave;i người kh&aacute;c bị tuyệt chủng vẫn c&ograve;n l&agrave; c&acirc;u hỏi để ngỏ.</p>\r\n\r\n	<p>_Những bậc thầy hư cấu: 70.000 năm trước, Sapiens đ&atilde; c&oacute; một cuộc C&aacute;ch mạng Nhận thức. Lo&agrave;i người đ&atilde; để lại những c&ocirc;ng tr&igrave;nh, th&agrave;nh quả nh&acirc;n tạo nhờ v&agrave;o việc hợp t&aacute;c tr&ecirc;n quy m&ocirc; lớn, th&ocirc;ng qua qu&aacute; tr&igrave;nh giao tiếp bằng ng&ocirc;n ngữ v&agrave; trao đổi th&ocirc;ng tin. Dưới ngưỡng 150 c&aacute; thể, con người c&oacute; thể duy tr&igrave; hợp t&aacute;c dựa tr&ecirc;n sự th&acirc;n quen, c&ograve;n tr&ecirc;n ngưỡng đ&oacute;, con người đ&atilde; s&aacute;ng t&aacute;c ra những c&acirc;u chuyện, truyền thuyết v&agrave; tin tưởng v&agrave;o ch&uacute;ng. Những thứ như c&ocirc;ng ty, t&ocirc;n gi&aacute;o, thần linh đều l&agrave; kết quả từ tr&iacute; tưởng tượng của con người, ch&uacute;ng tạo th&agrave;nh c&aacute;i gọi l&agrave; đặc điểm văn h&oacute;a, gi&uacute;p đẩy nhanh qu&aacute; tr&igrave;nh tiến h&oacute;a.</p>\r\n\r\n	<p>_T&igrave;nh dục, n&oacute;i dối v&agrave; tranh hang động: kể về cuộc sống của con người sau C&aacute;ch mạng Nhận thức v&agrave; trước C&aacute;ch mạng N&ocirc;ng nghiệp. C&aacute;c nh&oacute;m Sapiens rất kh&aacute;c nhau về cấu tr&uacute;c x&atilde; hội, gia đ&igrave;nh, niềm tin t&ocirc;n gi&aacute;o. Tuy nhi&ecirc;n, n&oacute;i chung họ sống th&agrave;nh c&aacute;c nh&oacute;m nhỏ, sống x&ecirc; dịch, phụ thuộc v&agrave;o nhiều nguồn thức ăn tự nhi&ecirc;n. Họ c&oacute; kiến thức v&agrave; kĩ năng vượt trội trong m&ocirc;i trường sống của họ. Hiện c&oacute; rất &iacute;t bằng chứng để c&oacute; thể khẳng định về đời sống văn h&oacute;a tinh thần của người tiền sử.</p>\r\n\r\n	<p>_Những kẻ s&aacute;t nh&acirc;n li&ecirc;n lục địa: trong qu&aacute; tr&igrave;nh tỏa ra khắp địa cầu, con người đ&atilde; g&acirc;y ra nhiều thảm họa sinh th&aacute;i, l&agrave;m nhiều lo&agrave;i động vật bản địa tuyệt chủng. T&aacute;c giả đ&atilde; n&ecirc;u ra một phi&ecirc;n t&ograve;a giả tưởng x&eacute;t xử lo&agrave;i Sapiens v&igrave; tội &aacute;c n&agrave;y, v&agrave; tất cả con người đều g&oacute;p phần chịu tr&aacute;ch nhiệm chung.</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 123, 0, 0, 'Lược Sử Về Loài Ngườ1.webp', 'Lược Sử Về Loài Ngườ2.jfif', 'Lược Sử Về Loài Ngườ3.png', 0, 3),
(18, 'Lịch Sử Vạn Vật.', 320000, 'Lịch Sử Vạn Vật..jpg', '<p><strong>Lược Sử Vạn Vật</strong></p>\r\n\r\n<p>Lược sử vạn vật l&agrave; cuốn s&aacute;ch phổ biến khoa học tr&igrave;nh b&agrave;y một c&aacute;ch ngắn gọn lịch sử nghi&ecirc;n cứu khoa học tự nhi&ecirc;n, những th&agrave;nh tựu khoa học trong c&aacute;c lĩnh vực khoa học tự nhi&ecirc;n ch&iacute;nh: vật l&yacute;, h&oacute;a học, sinh học, địa chất, thi&ecirc;n văn&hellip; với nhiều t&ecirc;n tuổi, giai thoại v&agrave; sự thật.</p>\r\n\r\n<p>Với cuốn s&aacute;ch n&agrave;y, người đọc sẽ biết được những giới hạn trong tri thức của con người về vũ trụ v&agrave; cả về ch&iacute;nh tr&aacute;i đất. Đ&acirc;y l&agrave; cuốn s&aacute;ch khoa học phổ th&ocirc;ng b&aacute;n chạy nhất nước Anh năm 2005 với hơn 300.000 bản in. Nh&agrave; ph&ecirc; b&igrave;nh người Anh, Craig Brown thậm ch&iacute; đ&atilde; nhận x&eacute;t rằng t&aacute;c phẩm n&agrave;y xứng đ&aacute;ng b&aacute;n được 500.000.000.000 cuốn (theo c&aacute;ch n&oacute;i của ch&iacute;nh Bryson, &quot;bằng với số proton c&oacute; trong một dấu chấm c&acirc;u&quot;).</p>\r\n\r\n<p>William McGuire &quot;Bill&quot; Bryson, t&aacute;c giả cuốn s&aacute;ch Lược sử vạn vật - A Short History of Nearly Everything sinh năm 1951, l&agrave; t&aacute;c giả nổi tiếng h&agrave;ng đầu trong thể loại non-fiction ở Bắc Mỹ, với v&ocirc; số người h&acirc;m mộ tr&ecirc;n khắp thế giới.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n', 111, 0, 0, 'Lịch Sử Vạn Vật.1.jpg', 'Lịch Sử Vạn Vật.2.jpg', 'Lịch Sử Vạn Vật.3.jpg', 0, 3),
(19, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.', 255000, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực..jfif', '<ul>\r\n	<li>Cuốn s&aacute;ch Dầu mỏ, Tiền bạc &amp; Quyền lực khắc họa to&agrave;n cảnh lịch sử ng&agrave;nh c&ocirc;ng nghiệp dầu mỏ - cuộc giao tranh gi&agrave;nh quyền lực v&agrave; sự gi&agrave;u c&oacute; xung quanh vấn đề dầu mỏ. Cuộc chiến n&agrave;y đ&atilde; l&agrave;m rung chuyển nền kinh tế to&agrave;n cầu, phản &aacute;nh hậu quả của c&aacute;c cuộc chiến tranh đồng thời thay đổi vận mệnh nh&acirc;n loại n&oacute;i chung v&agrave; c&aacute;c quốc gia n&oacute;i ri&ecirc;ng. Dầu mỏ, Tiền bạc &amp; Quyền lực l&agrave; một bức tranh về lịch sử thế kỷ XX, cũng l&agrave; về ng&agrave;nh c&ocirc;ng nghiệp dầu mỏ. Bức họa khổng lồ n&agrave;y t&aacute;i hiện lịch sử từ khi người ta khoan giếng dầu đầu ti&ecirc;n ở Pennsylvania, trải qua hai cuộc đại chiến, tới khi Iraq x&acirc;m lược Kuwait v&agrave; chiến dịch B&atilde;o t&aacute;p sa mạc. Bối cảnh được mở rộng từ những người liều lĩnh, những kẻ lừa đảo tới những &ocirc;ng vua dầu mỏ, từ cựu Thủ tướng Anh Winston Churchill, v&agrave; quốc vương Saudi Arabia Ibn Saud, tới Tổng thống Mỹ George Bush v&agrave; Saddam Hussein, cựu Tổng thống Iraq. L&agrave; cuốn s&aacute;ch ti&ecirc;u biểu về c&aacute;c vấn đề nhức nhối trong lĩnh vực dầu mỏ, Dầu mỏ, Tiền bạc &amp; Quyền lực cung cấp cho ch&uacute;ng ta những nhận thức cơ bản kh&ocirc;ng chỉ ri&ecirc;ng lĩnh vực n&agrave;y m&agrave; c&ograve;n về thế kỷ của ch&uacute;ng ta.</li>\r\n</ul>\r\n', 123, 0, 0, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.1.jfif', 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.2.jpg', 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.3.jfif', 0, 3),
(20, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.', 159500, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới..png', '<ul>\r\n	<li>\r\n	<p><strong>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới</strong></p>\r\n\r\n	<p>Qu&aacute; tr&igrave;nh văn minh phương T&acirc;y vươn tới vị thế thống trị ho&agrave;n cầu l&agrave; một hiện tượng lịch sử đơn lẻ c&oacute; &yacute; nghĩa quan trọng nhất trong v&ograve;ng 5 thế kỉ qua.</p>\r\n\r\n	<p>Bằng c&aacute;ch n&agrave;o phương T&acirc;y vượt qua được những đối thủ phương Đ&ocirc;ng? V&agrave; c&oacute; phải giờ đ&acirc;y phương T&acirc;y kh&ocirc;ng c&ograve;n ở đỉnh cao quyền lực nữa? Sử gia&nbsp;<strong>Niall Ferguson</strong>&nbsp;lập luận rằng bắt đầu v&agrave;o thế kỉ 15, phương T&acirc;y đ&atilde; ph&aacute;t triển s&aacute;u kh&aacute;i niệm mới đầy uy lực - cạnh tranh, khoa học, ph&aacute;p quyền, y học hiện đại, chủ nghĩa ti&ecirc;u d&ugrave;ng v&agrave; đạo l&yacute; nghề nghiệp - cho ph&eacute;p họ vượt qua tất cả c&aacute;c đối thủ cạnh tranh kh&aacute;c.</p>\r\n\r\n	<p>Nhưng giờ đ&acirc;y,&nbsp;<strong>Ferguson</strong>&nbsp;cho thấy phần c&ograve;n lại của thế giới đ&atilde; tiếp thu tất cả c&aacute;c kh&aacute;i niệm m&agrave; phương T&acirc;y từng độc chiếm, trong khi phương T&acirc;y lại đang đ&aacute;nh mất niềm tin v&agrave;o ch&iacute;nh m&igrave;nh. Ghi lại sự hưng thịnh v&agrave; suy t&agrave;n của c&aacute;c đế chế c&ugrave;ng với những cuộc va chạm (v&agrave; giao h&ograve;a) của những nền văn minh,&nbsp;<strong>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới</strong>&nbsp;đ&atilde; đ&uacute;c kết lại lịch sử thế giới, v&agrave; đ&acirc;y được coi l&agrave; cuốn s&aacute;ch xuất sắc nhất của&nbsp;<strong>Niall Ferguson</strong>.</p>\r\n\r\n	<p>C&acirc;u hỏi chủ đạo m&agrave; cuốn s&aacute;ch n&agrave;y đề cập ch&iacute;nh l&agrave; c&acirc;u hỏi l&yacute; th&uacute; nhất m&agrave; một nh&agrave; sử học nghi&ecirc;n cứu về kỷ nguy&ecirc;n hiện đại c&oacute; thể đặt ra. Tại sao bắt đầu từ khoảng những năm 1500, v&agrave;i ba quốc gia nhỏ b&eacute; miền viễn T&acirc;y của li&ecirc;n lục địa &Acirc;u-&Aacute; lại c&oacute; thể nổi l&ecirc;n nắm quyền thống trị phần c&ograve;n lại của thế giới, trong đ&oacute; c&oacute; cả những x&atilde; hội nằm ở ph&iacute;a đ&ocirc;ng lục địa &Acirc;u-&Aacute; vốn đ&ocirc;ng d&acirc;n hơn v&agrave; tinh tế hơn x&eacute;t về nhiều mặt?</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 121, 0, 0, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.1.jpg', 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.2.jpg', 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.3.jpg', 0, 3),
(21, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN', 155000, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN.jpg', '<ul>\r\n	<li>\r\n	<p>Cuộc chiến lỗ đen l&agrave; sự ca tụng tr&iacute; tuệ lo&agrave;i người v&agrave; khả năng tuyệt vời của n&oacute; trong việc kh&aacute;m ph&aacute; c&aacute;c định luật của tự nhi&ecirc;n. Đ&oacute; l&agrave; sự l&yacute; giải về một thế giới ở qu&aacute; xa c&aacute;c gi&aacute;c quan của ch&uacute;ng ta, c&ograve;n xa hơn cả Cơ học lượng tử v&agrave; Thuyết tương đối. Hấp dẫn lượng tử xem x&eacute;t c&aacute;c đối tượng nhỏ hơn h&agrave;ng trăm tỉ tỉ lần so với một pr&ocirc;ton. Ch&uacute;ng ta chưa bao giờ từng trực tiếp tiếp x&uacute;c với những vật nhỏ đến như vậy v&agrave; c&oacute; thể sẽ kh&ocirc;ng bao giờ, nhưng sự kh&eacute;o l&eacute;o của lo&agrave;i người sẽ cho ph&eacute;p ch&uacute;ng ta suy luận ra sự tồn tại của ch&uacute;ng, v&agrave; thật đ&aacute;ng kinh ngạc, cổng v&agrave;o thế giới đ&oacute; lại ch&iacute;nh l&agrave; những vật thể với k&iacute;ch thước v&agrave; khối lượng cực lớn: c&aacute;c lỗ đen.</p>\r\n\r\n	<p>Cuộc chiến lỗ đen cũng l&agrave; một cuốn bi&ecirc;n ni&ecirc;n sử về một kh&aacute;m ph&aacute;. Nguy&ecirc;n l&yacute; to&agrave;n ảnh l&agrave; một trong những kh&aacute;i niệm trừu tượng v&agrave; phi trực gi&aacute;c nhất trong to&agrave;n bộ vật l&yacute; học. Đ&oacute; l&agrave; sự t&iacute;ch tụ của hơn hai thập kỷ đấu tr&iacute; về số phận của th&ocirc;ng tin khi bị rơi v&agrave;o một lỗ đen. Đ&oacute; kh&ocirc;ng phải l&agrave; một cuộc chiến tranh giữa c&aacute;c đối thủ hung h&atilde;n, m&agrave; thực sự ở đ&acirc;y tất cả những người tham chiến chủ yếu đều l&agrave; bạn b&egrave;. Song đ&oacute; l&agrave; một cuộc chiến &aacute;c liệt về những &yacute; tưởng giữa những người t&ocirc;n trọng nhau một c&aacute;ch rất s&acirc;u sắc nhưng cũng bất đồng với nhau kh&ocirc;ng k&eacute;m phần s&acirc;u sắc.</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 111, 0, 0, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN1.jpg', 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN2.jpg', 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN3.jpg', 0, 4);
INSERT INTO `sanpham` (`id`, `ten_san_pham`, `gia_san_pham`, `img_dai_dien`, `mo_ta_san_pham`, `so_luong`, `da_ban`, `luot_xem`, `img_san_pham1`, `img_san_pham2`, `img_san_pham3`, `trang_thai`, `iddm`) VALUES
(22, 'BẢN THIẾT KẾ VĨ ĐẠI', 230000, 'BẢN THIẾT KẾ VĨ ĐẠI.jpg', '<ul>\r\n	<li>\r\n	<h2>Giới thiệu s&aacute;ch Khoa Học Kh&aacute;m Ph&aacute; - Bản Thiết Kế Vĩ Đại</h2>\r\n\r\n	<p>Nội dung cuốn s&aacute;ch, như t&aacute;c giả n&oacute;i ngay từ d&ograve;ng đầu ti&ecirc;n của chương một, l&agrave; chuyện &quot;B&iacute; ẩn của kiếp nh&acirc;n sinh&quot;, l&agrave; những c&acirc;u hỏi tối hậu về sự sống, vũ trụ v&agrave; vạn vật: Tại sao phải c&oacute; c&aacute;i g&igrave; đ&oacute; chứ kh&ocirc;ng phải l&agrave; hư kh&ocirc;ng?, Tại sao ch&uacute;ng ta tồn tại?, Tại sao l&agrave; tập hợp c&aacute;c định luật vật l&yacute; cụ thể n&agrave;y chứ kh&ocirc;ng phải c&aacute;c tập hợp kh&aacute;c?</p>\r\n\r\n	<p>Đ&oacute; l&agrave; những c&acirc;u hỏi đ&atilde; từng v&agrave; lu&ocirc;n lu&ocirc;n l&agrave;m tất cả ch&uacute;ng ta xao xuyến, ở mức độ kh&aacute;c nhau, với c&aacute;ch tiếp cận kh&aacute;c nhau v&agrave; trong mức độ hiểu biết kh&aacute;c nhau. Lời giải th&igrave; cũng c&oacute; mu&ocirc;n v&agrave;n, từ c&aacute;c truyền thuyết, c&aacute;c c&acirc;u chuyện cổ t&iacute;ch đến những luận l&yacute; đơn thuần dựa tr&ecirc;n niềm tin v&agrave; c&aacute;c l&yacute; thuyết khoa học được x&acirc;y dựng một c&aacute;ch chặt chẽ.</p>\r\n\r\n	<p>Trong cuốn s&aacute;ch n&agrave;y, Hawking điểm qua tất cả những chặng đường gian nan đ&oacute;, để rồi cuối c&ugrave;ng đi đến một l&yacute; thuyết khả dĩ nhất, được xem l&agrave; ứng vi&ecirc;n duy nhất cho l&yacute; thuyết ho&agrave;n chỉnh về vũ trụ, l&yacute; thuyết- M: đấy ch&iacute;nh l&agrave; l&yacute; thuyết thống nhất m&agrave; Einstein đ&atilde; hy vọng t&igrave;m được.</p>\r\n\r\n	<p>Hawking cũng viết rằng:&nbsp;<em>&quot;Thực tế l&agrave; bản th&acirc;n con người ch&uacute;ng ta- cũng đơn thuần l&agrave; tập hợp c&aacute;c hạt cơ bản của tự nhi&ecirc;n- c&oacute; khả năng đi gần đến hiểu biết về c&aacute;c định luật vũ trụ chi phối ch&uacute;ng ta v&agrave; vũ trụ của ch&uacute;ng ta, đ&atilde; l&agrave; một th&agrave;nh c&ocirc;ng lớn&quot;</em>.</p>\r\n\r\n	<p>V&agrave; t&aacute;c giả tin rằng, ch&uacute;ng ta sẽ t&igrave;m ra bản thiết kế vĩ đại, đặt một dấu son cho cuộc t&igrave;m t&ograve;i cũng rất vĩ đại k&eacute;o d&agrave;i từ hơn 3000 năm nay.</p>\r\n	</li>\r\n</ul>\r\n', 111, 0, 0, 'BẢN THIẾT KẾ VĨ ĐẠI1.jpg', 'BẢN THIẾT KẾ VĨ ĐẠI2.jfif', 'BẢN THIẾT KẾ VĨ ĐẠI3.jpg', 0, 4),
(23, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA', 123000, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA.jpg', '<ul>\r\n	<li>\r\n	<p><strong>Khoa Học Kh&aacute;m Ph&aacute; - Hỗn Độn V&agrave; H&agrave;i H&ograve;a</strong></p>\r\n\r\n	<p>C&ugrave;ng với L&yacute; thuyết hỗn độn, t&iacute;nh ngẫu nhi&ecirc;n v&agrave; phi tất định đ&atilde; tr&agrave;n ngập kh&ocirc;ng chỉ trong thế giới hằng ng&agrave;y của ch&uacute;ng ta m&agrave; cả trong thế giới c&aacute;c thi&ecirc;n h&agrave;. V&agrave; sự ph&aacute;t triển của những &yacute; tưởng dẫn tới quan niệm mới đ&oacute; về thế giới đ&atilde; được vạch ra thật r&otilde; r&agrave;ng trong cuốn s&aacute;ch Hỗn độn v&agrave; h&agrave;i h&ograve;a, bằng một ng&ocirc;n ngữ giản dị, th&ocirc;ng qua những v&iacute; dụ được r&uacute;t ra từ vật l&yacute; thi&ecirc;n văn, vật l&yacute; học, sinh học v&agrave; to&aacute;n học.</p>\r\n\r\n	<p>T&aacute;c phẩm được viết đơn giản để ngay cả người kh&ocirc;ng c&oacute; nền tảng kiến thức về kỹ thuật cũng hiểu, v&agrave; đặc biệt d&agrave;nh cho những ai t&ograve; m&ograve; muốn biết kh&ocirc;ng chỉ những điều kỳ lạ mới nhất của khoa học ở thế kỷ XX m&agrave; cả hệ quả triết học v&agrave; thần học của ch&uacute;ng.</p>\r\n\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<th>M&atilde; h&agrave;ng</th>\r\n				<td>8934974188032</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n				<td>NXB Trẻ</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&aacute;c giả</th>\r\n				<td>Trịnh Xu&acirc;n Thuận</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Người Dịch</th>\r\n				<td>Phạm Văn Thiều, Nguyễn Thanh Dương</td>\r\n			</tr>\r\n			<tr>\r\n				<th>NXB</th>\r\n				<td>Trẻ</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Năm XB</th>\r\n				<td>2023</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Ng&ocirc;n Ngữ</th>\r\n				<td>Tiếng Việt</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Trọng lượng (gr)</th>\r\n				<td>669</td>\r\n			</tr>\r\n			<tr>\r\n				<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n				<td>20.5 x 14.5 x 2.5 cm</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Số trang</th>\r\n				<td>628</td>\r\n			</tr>\r\n			<tr>\r\n				<th>H&igrave;nh thức</th>\r\n				<td>B&igrave;a Mềm</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n				<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/khoa-hoc-ky-thuat/khoa-hoc-khac.html?order=num_orders_month\">Top 100 sản phẩm Khoa học kh&aacute;c b&aacute;n chạy của th&aacute;ng</a></td>\r\n			</tr>\r\n			<tr>\r\n				<td colspan=\"2\">\r\n				<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n				<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p><strong>Khoa Học Kh&aacute;m Ph&aacute; - Hỗn Độn V&agrave; H&agrave;i H&ograve;a</strong></p>\r\n\r\n	<p>C&ugrave;ng với L&yacute; thuyết hỗn độn, t&iacute;nh ngẫu nhi&ecirc;n v&agrave; phi tất định đ&atilde; tr&agrave;n ngập kh&ocirc;ng chỉ trong thế giới hằng ng&agrave;y của ch&uacute;ng ta m&agrave; cả trong thế giới c&aacute;c thi&ecirc;n h&agrave;. V&agrave; sự ph&aacute;t triển của những &yacute; tưởng dẫn tới quan niệm mới đ&oacute; về thế giới đ&atilde; được vạch ra thật r&otilde; r&agrave;ng trong cuốn s&aacute;ch Hỗn độn v&agrave; h&agrave;i h&ograve;a, bằng một ng&ocirc;n ngữ giản dị, th&ocirc;ng qua những v&iacute; dụ được r&uacute;t ra từ vật l&yacute; thi&ecirc;n văn, vật l&yacute; học, sinh học v&agrave; to&aacute;n học.</p>\r\n\r\n	<p>T&aacute;c phẩm được viết đơn giản để ngay cả người kh&ocirc;ng c&oacute; nền tảng kiến thức về kỹ thuật cũng hiểu, v&agrave; đặc biệt d&agrave;nh cho những ai t&ograve; m&ograve; muốn biết kh&ocirc;ng chỉ những điều kỳ lạ mới nhất của khoa học ở thế kỷ XX m&agrave; cả hệ quả triết học v&agrave; thần học của ch&uacute;ng.</p>\r\n	</li>\r\n</ul>\r\n', 123, 0, 1, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA1.jpg', 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA2.jpg', 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA3.jpg', 0, 4),
(24, ' TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY', 320000, 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY.jpg', '<ul>\r\n	<li>\r\n	<p><strong>Tri Thức Về Vạn Vật - Một Thế Giới Trực Quan Chưa Từng Thấy</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch gồm 6 chương sẽ mang đến cho bạn đọc những trải nghiệm th&uacute; vị bao gồm:</p>\r\n\r\n	<p><strong>KH&Ocirc;NG GIAN &ndash; KH&Aacute;M PH&Aacute; KH&Ocirc;NG GIAN VŨ TRỤ BAO LA</strong></p>\r\n\r\n	<p>Du h&agrave;nh v&agrave; kh&aacute;m ph&aacute; b&iacute; ẩn của vũ trụ từ vụ nổ BigBang tới sự h&igrave;nh th&agrave;nh của c&aacute;c thi&ecirc;n h&agrave;, từ sự ra đời đến c&aacute;i chết của một ng&ocirc;i sao như thế n&agrave;o, c&ugrave;ng t&igrave;m hiểu hệ mặt trời v&agrave; c&aacute;c hoạt động nghi&ecirc;n cứu thi&ecirc;n văn kh&aacute;c. Cuốn s&aacute;ch mang đến kiến thức nền tảng v&agrave; trải nghiệm ch&acirc;n thực như một nh&agrave; du h&agrave;nh qua những h&igrave;nh ảnh đồ họa sắc n&eacute;t, ch&uacute; th&iacute;ch r&otilde; r&agrave;ng cụ thể.</p>\r\n\r\n	<p><strong>TR&Aacute;I ĐẤT &ndash; KH&Aacute;M PH&Aacute; NHỮNG TRI THỨC VỀ TR&Aacute;I ĐẤT TỪ TẬN L&Otilde;I S&Acirc;U</strong></p>\r\n\r\n	<p>C&ugrave;ng bạn rong ruổi c&ugrave;ng trời cuối đất, kh&aacute;m ph&aacute; h&agrave;nh tinh xanh từ cấu tr&uacute;c l&otilde;i tr&aacute;i đất gồm những tầng n&agrave;o đến c&aacute;c mảng kiến tạo tr&ecirc;n bề mặt địa cầu, hiểu về c&aacute;c hiện tượng tự nhi&ecirc;n như B&atilde;o, n&uacute;i lửa phun tr&agrave;o, động đất đến giải đ&aacute;p c&aacute;c b&iacute; ẩn đại dương&hellip;</p>\r\n\r\n	<p><strong>TỰ NHI&Ecirc;N &ndash; TRẢI NGHIỆM NHƯ NHỮNG NH&Agrave; TỰ NHI&Ecirc;N HỌC</strong></p>\r\n\r\n	<p>Giải đ&aacute;p c&acirc;u hỏi qu&aacute; tr&igrave;nh tiến h&oacute;a của c&aacute;c giống lo&agrave;i từ 3,8 tỷ năm trước cho đến hiện tại. T&igrave;m hiểu sự sống khắp h&agrave;nh tinh, từ những đỉnh n&uacute;i cao nhất đến vực thẳm s&acirc;u nhất dưới l&ograve;ng đại dương.</p>\r\n\r\n	<p><strong>CƠ THỂ NGƯỜI &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; GIẢI PHẪU HỌC</strong></p>\r\n\r\n	<p>Cơ thể người l&agrave; một cỗ m&aacute;y phức tạp kỳ diệu, được h&igrave;nh th&agrave;nh từ h&agrave;ng triệu phần kh&aacute;c nhau. Cuốn s&aacute;ch sẽ gi&uacute;p bạn t&igrave;m hiểu từ cấu tr&uacute;c của một tế b&agrave;o nhỏ b&eacute; đến cơ thể người b&igrave;nh thường, qua đ&oacute; hiểu được c&aacute;ch thức hoạt động, cấu tạo cơ thể.</p>\r\n\r\n	<p><strong>KHOA HỌC &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; KHOA HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch giải th&iacute;ch những quy luật ngầm &ndash; nguy&ecirc;n l&yacute; hoạt động chi phối sự vận h&agrave;nh của vạn vật, từ nguy&ecirc;n tử v&agrave; &aacute;nh s&aacute;ng cho tới lực hấp dẫn v&agrave; từ trường. Nhờ đ&oacute; khơi nguồn cảm hứng của ch&uacute;ng ta để tạo ra nhiều loại m&aacute;y m&oacute;c v&agrave; c&ocirc;ng nghệ ng&agrave;y c&agrave;ng hiện đại hơn.</p>\r\n\r\n	<p><strong>LỊCH SỬ - KH&Aacute;M PH&Aacute; NHƯ NH&Agrave; SỬ HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch t&aacute;i hiện những c&acirc;u chuyện lịch sử của nh&acirc;n loại, từ cuộc chiến tranh cổ đại đến những tai họa kinh khủng dẫn tới d&acirc;n tộc diệt vong. Cuốn s&aacute;ch cũng nghi&ecirc;n cứu c&aacute;c th&agrave;nh tựu tiến bộ của lo&agrave;i người về văn h&oacute;a &ndash; c&ocirc;ng nghệ từ thời đồ đ&aacute; đến hiện nay.</p>\r\n\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<th>M&atilde; h&agrave;ng</th>\r\n				<td>8935309503322</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n				<td>Alpha Books</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&aacute;c giả</th>\r\n				<td>DK</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Người Dịch</th>\r\n				<td>Nhiều Người Dịch</td>\r\n			</tr>\r\n			<tr>\r\n				<th>NXB</th>\r\n				<td>D&acirc;n Tr&iacute;</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Năm XB</th>\r\n				<td>2023</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Ng&ocirc;n Ngữ</th>\r\n				<td>Tiếng Việt</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Trọng lượng (gr)</th>\r\n				<td>500</td>\r\n			</tr>\r\n			<tr>\r\n				<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n				<td>30.1 x 25.2 x 2 cm</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Số trang</th>\r\n				<td>360</td>\r\n			</tr>\r\n			<tr>\r\n				<th>H&igrave;nh thức</th>\r\n				<td>B&igrave;a Cứng</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n				<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/khoa-hoc-ky-thuat/khoa-hoc-khac.html?order=num_orders_month\">Top 100 sản phẩm Khoa học kh&aacute;c b&aacute;n chạy của th&aacute;ng</a></td>\r\n			</tr>\r\n			<tr>\r\n				<td colspan=\"2\">\r\n				<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n				<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p><strong>Tri Thức Về Vạn Vật - Một Thế Giới Trực Quan Chưa Từng Thấy</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch gồm 6 chương sẽ mang đến cho bạn đọc những trải nghiệm th&uacute; vị bao gồm:</p>\r\n\r\n	<p><strong>KH&Ocirc;NG GIAN &ndash; KH&Aacute;M PH&Aacute; KH&Ocirc;NG GIAN VŨ TRỤ BAO LA</strong></p>\r\n\r\n	<p>Du h&agrave;nh v&agrave; kh&aacute;m ph&aacute; b&iacute; ẩn của vũ trụ từ vụ nổ BigBang tới sự h&igrave;nh th&agrave;nh của c&aacute;c thi&ecirc;n h&agrave;, từ sự ra đời đến c&aacute;i chết của một ng&ocirc;i sao như thế n&agrave;o, c&ugrave;ng t&igrave;m hiểu hệ mặt trời v&agrave; c&aacute;c hoạt động nghi&ecirc;n cứu thi&ecirc;n văn kh&aacute;c. Cuốn s&aacute;ch mang đến kiến thức nền tảng v&agrave; trải nghiệm ch&acirc;n thực như một nh&agrave; du h&agrave;nh qua những h&igrave;nh ảnh đồ họa sắc n&eacute;t, ch&uacute; th&iacute;ch r&otilde; r&agrave;ng cụ thể.</p>\r\n\r\n	<p><strong>TR&Aacute;I ĐẤT &ndash; KH&Aacute;M PH&Aacute; NHỮNG TRI THỨC VỀ TR&Aacute;I ĐẤT TỪ TẬN L&Otilde;I S&Acirc;U</strong></p>\r\n\r\n	<p>C&ugrave;ng bạn rong ruổi c&ugrave;ng trời cuối đất, kh&aacute;m ph&aacute; h&agrave;nh tinh xanh từ cấu tr&uacute;c l&otilde;i tr&aacute;i đất gồm những tầng n&agrave;o đến c&aacute;c mảng kiến tạo tr&ecirc;n bề mặt địa cầu, hiểu về c&aacute;c hiện tượng tự nhi&ecirc;n như B&atilde;o, n&uacute;i lửa phun tr&agrave;o, động đất đến giải đ&aacute;p c&aacute;c b&iacute; ẩn đại dương&hellip;</p>\r\n\r\n	<p><strong>TỰ NHI&Ecirc;N &ndash; TRẢI NGHIỆM NHƯ NHỮNG NH&Agrave; TỰ NHI&Ecirc;N HỌC</strong></p>\r\n\r\n	<p>Giải đ&aacute;p c&acirc;u hỏi qu&aacute; tr&igrave;nh tiến h&oacute;a của c&aacute;c giống lo&agrave;i từ 3,8 tỷ năm trước cho đến hiện tại. T&igrave;m hiểu sự sống khắp h&agrave;nh tinh, từ những đỉnh n&uacute;i cao nhất đến vực thẳm s&acirc;u nhất dưới l&ograve;ng đại dương.</p>\r\n\r\n	<p><strong>CƠ THỂ NGƯỜI &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; GIẢI PHẪU HỌC</strong></p>\r\n\r\n	<p>Cơ thể người l&agrave; một cỗ m&aacute;y phức tạp kỳ diệu, được h&igrave;nh th&agrave;nh từ h&agrave;ng triệu phần kh&aacute;c nhau. Cuốn s&aacute;ch sẽ gi&uacute;p bạn t&igrave;m hiểu từ cấu tr&uacute;c của một tế b&agrave;o nhỏ b&eacute; đến cơ thể người b&igrave;nh thường, qua đ&oacute; hiểu được c&aacute;ch thức hoạt động, cấu tạo cơ thể.</p>\r\n\r\n	<p><strong>KHOA HỌC &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; KHOA HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch giải th&iacute;ch những quy luật ngầm &ndash; nguy&ecirc;n l&yacute; hoạt động chi phối sự vận h&agrave;nh của vạn vật, từ nguy&ecirc;n tử v&agrave; &aacute;nh s&aacute;ng cho tới lực hấp dẫn v&agrave; từ trường. Nhờ đ&oacute; khơi nguồn cảm hứng của ch&uacute;ng ta để tạo ra nhiều loại m&aacute;y m&oacute;c v&agrave; c&ocirc;ng nghệ ng&agrave;y c&agrave;ng hiện đại hơn.</p>\r\n\r\n	<p><strong>LỊCH SỬ - KH&Aacute;M PH&Aacute; NHƯ NH&Agrave; SỬ HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch t&aacute;i hiện những c&acirc;u chuyện lịch sử của nh&acirc;n loại, từ cuộc chiến tranh cổ đại đến những tai họa kinh khủng dẫn tới d&acirc;n tộc diệt vong. Cuốn s&aacute;ch cũng nghi&ecirc;n cứu c&aacute;c th&agrave;nh tựu tiến bộ của lo&agrave;i người về văn h&oacute;a &ndash; c&ocirc;ng nghệ từ thời đồ đ&aacute; đến hiện nay.</p>\r\n	</li>\r\n</ul>\r\n', 112, 0, 0, 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY1.webp', 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY2.jfif', 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY3.jpg', 0, 4),
(25, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI', 250000, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI.gif', '<ul>\r\n	<li>\r\n	<p><strong>6 Ph&aacute;t Minh L&agrave;m N&ecirc;n Thời Đại</strong></p>\r\n\r\n	<p>Steven Johnson đ&iacute;ch thực l&agrave; chuy&ecirc;n gia bậc thầy của lịch sử &yacute; tưởng. Trong cuốn s&aacute;ch n&agrave;y, &ocirc;ng chỉ tập trung v&agrave;o s&aacute;u c&ocirc;ng nghệ v&agrave; kh&aacute;m ph&aacute; c&aacute;c ph&acirc;n nh&aacute;nh của ch&uacute;ng, cả mặt tốt lẫn kh&ocirc;ng tốt. &Ocirc;ng đ&atilde; tạo ra biểu trưng h&igrave;nh ảnh chim ruồi cho c&aacute;c loại h&igrave;nh ph&aacute;t minh m&agrave; m&igrave;nh quan t&acirc;m: sự đồng tiến h&oacute;a của hoa v&agrave; c&ocirc;n tr&ugrave;ng &ndash; kẻ kh&ocirc;ng mời từ một trật tự s&aacute;ng tạo kh&aacute;c. Cuốn s&aacute;ch n&agrave;y l&agrave; tập hợp đầy đủ những &ldquo;ph&aacute;t minh chim ruồi&rdquo; ho&agrave;n to&agrave;n bất ngờ. S&aacute;u chủ đề được đưa ra l&agrave;: Thủy tinh, L&agrave;m lạnh, &Acirc;m thanh, L&agrave;m sạch, Thời gian, &Aacute;nh s&aacute;ng.</p>\r\n\r\n	<p>C&oacute; những c&acirc;u chuyện nh&agrave; ph&aacute;t minh kh&ocirc;ng nhận ra phạm vi thực sự kh&aacute;m ph&aacute; của m&igrave;nh, như &Eacute;douard-L&eacute;on Scott de Martinville, người v&agrave;o năm 1850 đ&atilde; ph&aacute;t minh ra m&aacute;y k&yacute; &acirc;m nhưng kh&ocirc;ng c&oacute; thiết bị ph&aacute;t lại. &Ocirc;ng tin rằng, ng&agrave;y n&agrave;o đ&oacute; ch&uacute;ng ta sẽ giải mật ch&uacute;ng như c&aacute;ch đọc nốt nhạc. M&aacute;y qu&eacute;t s&oacute;ng si&ecirc;u &acirc;m được ph&aacute;t triển dựa tr&ecirc;n thiết bị t&igrave;m kiếm t&agrave;u đắm Titanic. Nhiều năm sau, c&ocirc;ng nghệ lại kết hợp với ch&iacute;nh s&aacute;ch một con của Trung Quốc để tạo th&agrave;nh sự mất c&acirc;n bằng giới t&iacute;nh khốc liệt trong x&atilde; hội trọng nam. C&aacute;c chủ đề v&agrave; hướng tiếp cận của Johnson được lựa chọn đều g&acirc;y sự kh&acirc;m phục đ&aacute;ng kinh ngạc. Một trong số đ&oacute; l&agrave; chuyện v&agrave;o thập ni&ecirc;n 1850, 1860, cả th&agrave;nh phố Chicago được n&acirc;ng l&ecirc;n bằng k&iacute;ch v&iacute;t để đặt hệ thống ống cống ngầm.</p>\r\n\r\n	<p>Phương ph&aacute;p mạnh bạo n&agrave;y v&ocirc; c&ugrave;ng cần thiết v&igrave; Chicago rất phẳng; kh&ocirc;ng c&oacute; độ dốc tự nhi&ecirc;n để tho&aacute;t nước v&agrave; th&agrave;nh phố, trung t&acirc;m bu&ocirc;n b&aacute;n thịt n&aacute;o nhiệt miền trung t&acirc;y, điều t&aacute;o bạo cần thiết để giải v&acirc;y th&agrave;nh phố khỏi r&aacute;c thải độc hại. Chicago một lần nữa lại xuất hiện ở chương &ldquo;L&agrave;m lạnh&rdquo;: đ&oacute; l&agrave; đường &ocirc; t&ocirc; ray cho xe đ&ocirc;ng lạnh chờ thịt từ đồng bằng đi khắp nước Mỹ. Johnson nhấn mạnh rằng nhiều ph&aacute;t minh kh&ocirc;ng phải l&agrave; kết quả của &ldquo;ph&uacute;t Eureka&rdquo; m&agrave; l&agrave; sự ch&iacute;n muồi của một tiến tr&igrave;nh d&agrave;i bao gồm một mạng lưới c&aacute;c nh&agrave; ph&aacute;t minh v&agrave; doanh nghiệp. &Ocirc;ng đ&atilde; cố xoay xở v&agrave; cuối c&ugrave;ng đ&atilde; t&igrave;m ra c&aacute;ch định nghĩa khoảnh khắc n&agrave;y. Dữ liệu số được truyền dẫn lần đầu ti&ecirc;n năm 1943 qua một đường d&acirc;y mật SIGSALYY được Alan Turing v&agrave; Ph&ograve;ng th&iacute; nghiệm Bell ph&aacute;t triển: Turing l&agrave; một nh&agrave; s&aacute;ng chế thi&ecirc;n t&agrave;i.</p>\r\n\r\n	<p>Đ&acirc;y l&agrave; một cuốn s&aacute;ch ngắn, kh&aacute; dễ đọc, th&uacute; vị v&agrave; đầy th&aacute;ch thức với những điều kỳ diệu mỗi ng&agrave;y quanh ta.</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 112, 0, 0, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI1.jfif', '6 PHÁT MINH LÀM NÊN THỜI ĐẠI2.jpg', '6 PHÁT MINH LÀM NÊN THỜI ĐẠI3.gif', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `img_tin_tuc` varchar(255) NOT NULL,
  `ngay_dang` date NOT NULL DEFAULT current_timestamp(),
  `trang_thai` int(11) NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `tieu_de`, `noi_dung`, `img_tin_tuc`, `ngay_dang`, `trang_thai`, `iddm`) VALUES
(2, 'Truyện tranh món ăn tinh thần không thể thiếu sau mỗi lần cười nghiêng ngả', '<h2>&nbsp;</h2>\r\n\r\n<p><strong>Truyện tranh</strong> l&agrave; một h&igrave;nh thức nghệ thuật thị gi&aacute;c v&agrave; văn học, trong đ&oacute; c&acirc;u chuyện được kể bằng h&igrave;nh ảnh v&agrave; ng&ocirc;n ngữ. Truyện tranh thường được chia th&agrave;nh c&aacute;c &ocirc; vu&ocirc;ng, mỗi &ocirc; vu&ocirc;ng thể hiện một khoảnh khắc trong c&acirc;u chuyện. C&aacute;c h&igrave;nh ảnh trong truyện tranh thường được kết hợp với lời thoại v&agrave; ch&uacute; th&iacute;ch để truyền tải nội dung của c&acirc;u chuyện.</p>\r\n\r\n<p><strong>Lịch sử truyện tranh</strong></p>\r\n\r\n<p>Truyện tranh c&oacute; nguồn gốc từ Trung Quốc, với những c&acirc;u chuyện được kể bằng h&igrave;nh ảnh v&agrave; chữ viết tr&ecirc;n c&aacute;c thẻ gỗ. Truyện tranh sớm nhất được biết đến l&agrave; một bộ truyện tranh về cuộc đời của Phật Th&iacute;ch Ca, được tạo ra v&agrave;o thế kỷ thứ 6.</p>\r\n\r\n<p>Truyện tranh hiện đại bắt đầu ph&aacute;t triển ở ch&acirc;u &Acirc;u v&agrave; Hoa Kỳ v&agrave;o cuối thế kỷ 19. Truyện tranh đầu ti&ecirc;n được xuất bản ở ch&acirc;u &Acirc;u l&agrave; &quot;Les aventures de Tintin&quot; của Herg&eacute;, được xuất bản v&agrave;o năm 1929. Truyện tranh đầu ti&ecirc;n được xuất bản ở Hoa Kỳ l&agrave; &quot;The Yellow Kid&quot; của Richard Felton Outcault, được xuất bản v&agrave;o năm 1895.</p>\r\n\r\n<p>Truyện tranh nhanh ch&oacute;ng trở n&ecirc;n phổ biến ở cả ch&acirc;u &Acirc;u v&agrave; Hoa Kỳ. Trong Thế chiến thứ II, truyện tranh được sử dụng để tuy&ecirc;n truyền v&agrave; giải tr&iacute; cho qu&acirc;n đội. Sau chiến tranh, truyện tranh tiếp tục ph&aacute;t triển v&agrave; trở th&agrave;nh một h&igrave;nh thức giải tr&iacute; phổ biến tr&ecirc;n to&agrave;n thế giới.</p>\r\n\r\n<p><strong>C&aacute;c thể loại truyện tranh</strong></p>\r\n\r\n<p>Truyện tranh c&oacute; thể được chia th&agrave;nh nhiều thể loại kh&aacute;c nhau, bao gồm:</p>\r\n\r\n<ul>\r\n	<li><strong>Truyện tranh h&agrave;nh động:</strong>&nbsp;Thể loại n&agrave;y thường kể về c&aacute;c cuộc phi&ecirc;u lưu của c&aacute;c si&ecirc;u anh h&ugrave;ng hoặc c&aacute;c nh&acirc;n vật h&agrave;nh động kh&aacute;c.</li>\r\n	<li><strong>Truyện tranh h&agrave;i hước:</strong>&nbsp;Thể loại n&agrave;y thường kể về những c&acirc;u chuyện h&agrave;i hước v&agrave; vui nhộn.</li>\r\n	<li><strong>Truyện tranh l&atilde;ng mạn:</strong>&nbsp;Thể loại n&agrave;y thường kể về những c&acirc;u chuyện t&igrave;nh y&ecirc;u l&atilde;ng mạn.</li>\r\n	<li><strong>Truyện tranh khoa học viễn tưởng:</strong>&nbsp;Thể loại n&agrave;y thường kể về những c&acirc;u chuyện xảy ra trong tương lai hoặc ở c&aacute;c thế giới kh&aacute;c.</li>\r\n	<li><strong>Truyện tranh kinh dị:</strong>&nbsp;Thể loại n&agrave;y thường kể về những c&acirc;u chuyện kinh dị v&agrave; r&ugrave;ng rợn.</li>\r\n</ul>\r\n\r\n<p><strong>Truyện tranh ở Việt Nam</strong></p>\r\n\r\n<p>Truyện tranh bắt đầu du nhập v&agrave;o Việt Nam v&agrave;o đầu thế kỷ 20. Truyện tranh đầu ti&ecirc;n được xuất bản ở Việt Nam l&agrave; &quot;G&agrave; m&aacute;i đẻ trứng v&agrave;ng&quot; của họa sĩ Nguyễn Phan Ch&aacute;nh, được xuất bản v&agrave;o năm 1929.</p>\r\n\r\n<p>Truyện tranh Việt Nam ph&aacute;t triển nhanh ch&oacute;ng trong những năm 1950 v&agrave; 1960. Trong thời kỳ n&agrave;y, nhiều t&aacute;c phẩm truyện tranh nổi tiếng đ&atilde; được ra đời, bao gồm &quot;Truyện tranh thiếu nhi Việt Nam&quot; của họa sĩ Phạm Duy, &quot;Thiếu ni&ecirc;n Tiền phong&quot; của họa sĩ L&ecirc; Linh, v&agrave; &quot;D&acirc;n gian Việt Nam&quot; của họa sĩ L&ecirc; Minh Tr&iacute;.</p>\r\n\r\n<p>Sau chiến tranh, truyện tranh Việt Nam tiếp tục ph&aacute;t triển v&agrave; đa dạng h&oacute;a. Trong những năm gần đ&acirc;y, nhiều bộ truyện tranh Việt Nam đ&atilde; được xuất bản ở nước ngo&agrave;i v&agrave; nhận được sự đ&oacute;n nhận của độc giả quốc tế.</p>\r\n\r\n<p><strong>T&aacute;c dụng của truyện tranh</strong></p>\r\n\r\n<p>Truyện tranh c&oacute; nhiều t&aacute;c dụng t&iacute;ch cực, bao gồm:</p>\r\n\r\n<ul>\r\n	<li><strong>Giải tr&iacute;:</strong>&nbsp;Truyện tranh l&agrave; một h&igrave;nh thức giải tr&iacute; phổ biến v&agrave; hấp dẫn đối với mọi lứa tuổi.</li>\r\n	<li><strong>Gi&aacute;o dục:</strong>&nbsp;Truyện tranh c&oacute; thể được sử dụng để gi&aacute;o dục trẻ em về nhiều chủ đề kh&aacute;c nhau, bao gồm lịch sử, khoa học, v&agrave; văn h&oacute;a.</li>\r\n	<li><strong>Ph&aacute;t triển tr&iacute; tưởng tượng:</strong>&nbsp;Truyện tranh c&oacute; thể gi&uacute;p trẻ em ph&aacute;t triển tr&iacute; tưởng tượng v&agrave; khả năng s&aacute;ng tạo.</li>\r\n</ul>\r\n\r\n<p><strong>Kết luận</strong></p>\r\n\r\n<p>Truyện tranh l&agrave; một h&igrave;nh thức nghệ thuật v&agrave; văn học c&oacute; nhiều gi&aacute; trị t&iacute;ch cực. Truyện tranh c&oacute; thể gi&uacute;p mọi người giải tr&iacute;, gi&aacute;o dục, v&agrave; ph&aacute;t triển tr&iacute; tưởng tượng.</p>\r\n', 'tải xuống.png', '2023-11-16', 0, 5),
(3, 'tin tức 3', '<p>mới tin tức</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cuốn s&aacute;ch Thỏ Bảy M&agrave;u V&agrave; Những Người Nghĩ N&oacute; L&agrave; Bạn t&aacute;i bản năm 2023 l&agrave; t&aacute;c phẩm của t&aacute;c giả kh&ocirc;ng k&eacute;m phần s&aacute;ng tạo v&agrave; độc đ&aacute;o. Cuốn s&aacute;ch nhẹ nh&agrave;ng, đầy h&agrave;i hước v&agrave; ch&acirc;m biếm xoay quanh c&acirc;u chuyện về Thỏ Bảy M&agrave;u v&agrave; những người nghĩ rằng Thỏ l&agrave; bạn của họ. Với h&igrave;nh ảnh v&agrave; điệu bộ dễ thương, Thỏ Bảy M&agrave;u đ&atilde; trở th&agrave;nh một nh&acirc;n vật được nhiều người y&ecirc;u th&iacute;ch tr&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>Những mẩu chuyện trong cuốn s&aacute;ch được vẽ bằng tranh, kể về tho&aacute;ng qua cuộc sống của Thỏ v&agrave; những người xung quanh. T&aacute;c giả đ&atilde; d&ugrave;ng những c&acirc;u chuyện &ldquo;teen&rdquo; để lồng gh&eacute;p v&agrave;o những gi&aacute; trị đ&iacute;ch thực của cuộc sống, khiến độc giả kh&ocirc;ng chỉ cười đ&ugrave;a m&agrave; c&ograve;n suy ngẫm. Cuốn s&aacute;ch n&agrave;y l&agrave; một t&aacute;c phẩm giải tr&iacute; l&yacute; th&uacute; v&agrave; s&acirc;u sắc đối với c&aacute;c độc giả, đặc biệt l&agrave; c&aacute;c bạn trẻ.</p>\r\n', 'tải xuống (1).jfif', '2023-11-16', 0, 1),
(4, 'tin tức của anhnt', '<p>his name is hi</p>\r\n', 'tải xuống.png', '2023-11-16', 0, 5),
(5, '1', '<p>1qwertyuiopsdfghjklxcvbnm,dfghjkwertgyhujksdfghjkertyuikolygukarfuiserugvfsa4rthliau3h4efawher\r\nfEWAQFEOWAUQFHRAORG4F\r\nFEYAWQGE4FA2QU</p>\r\n', 'tải xuống.png', '2023-11-16', 0, 3),
(6, 'hihihihihihi', '<p>gigigigigigi</p>\r\n', '4b7c037158f13312857b6d201802771e.jpg', '2023-11-16', 0, 2),
(7, 'mới sửa', '<p>vảesbrtea</p>\r\n', 'tải xuống.jfif', '2023-11-16', 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

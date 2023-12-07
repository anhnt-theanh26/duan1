-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2023 lúc 08:19 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

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
  `ngay_binh_luan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noi_dung`, `id_sp`, `id_kh`, `ngay_binh_luan`) VALUES
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
(82, 'LA', 1, 6, '2023-11-22'),
(83, '<3', 25, 6, '2023-11-26'),
(84, '<3', 28, 6, '2023-11-26'),
(85, 'young boy', 27, 3, '2023-11-26'),
(86, '<3', 25, 1, '2023-11-26'),
(87, 'hhi', 1, 1, '2023-11-27'),
(88, 'tuyeetj vơi\r\n', 1, 6, '2023-11-27'),
(89, 'hay quá trời', 1, 6, '2023-11-28');

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
(15, 24, 8, 1, 320000, 320000),
(16, 25, 8, 1, 250000, 250000),
(17, 7, 16, 1, 140000, 140000),
(18, 3, 16, 1, 14000, 14000),
(19, 8, 16, 1, 84000, 84000),
(55, 4, 41, 1, 175000, 175000),
(64, 1, 50, 6, 48000, 288000),
(66, 2, 52, 7, 15000, 105000),
(67, 1, 53, 1, 80000, 80000),
(68, 11, 54, 1, 88110, 88110),
(69, 25, 55, 1, 175000, 175000),
(70, 1, 56, 1, 48000, 48000),
(71, 2, 56, 1, 15000, 15000),
(72, 7, 56, 1, 120000, 120000),
(73, 25, 56, 1, 150000, 150000),
(74, 10, 57, 1, 53400, 53400),
(75, 1, 58, 1, 48000, 48000),
(76, 23, 58, 1, 73800, 73800),
(80, 10, 62, 4, 53400, 213600),
(81, 2, 62, 1, 15000, 15000),
(82, 11, 63, 3, 53400, 160200),
(83, 1, 64, 1, 80000, 80000),
(84, 5, 64, 1, 135000, 135000),
(85, 3, 64, 1, 20000, 20000),
(86, 4, 64, 1, 25000, 25000),
(87, 1, 65, 1, 80000, 80000),
(88, 11, 65, 1, 89000, 89000);

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
(1, 'Chính trị', 'banner chính trị.jfif', 0),
(2, 'Kinh tế', 'banner kinh tế.avif', 0),
(3, 'Lịch sử', 'banner lịch sử.jpg', 0),
(4, 'khoa học', 'banner khoa học.jpg', 0),
(5, 'Truyện', 'banner truyện.jpeg', 0),
(6, 'Conan', 'tải xuống (2).jfif', 1),
(7, 'Dragonbal suober', 'tải xuống.png', 1),
(8, 'Tom and jerry ', 'tải xuống.png', 1),
(9, 'shin cau be but chi', '4b7c037158f13312857b6d201802771e.jpg', 1),
(10, '7 vien ngoc rong a moi sua', '4b7c037158f13312857b6d201802771e.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `ngay_dat` date NOT NULL,
  `khuyen_mai` int(11) NOT NULL,
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

INSERT INTO `hoadon` (`id`, `id_kh`, `ngay_dat`, `khuyen_mai`, `tong_tien`, `dia_chi`, `email`, `ten_kh`, `sdt`, `trang_thai`) VALUES
(1, 1, '2023-11-19', 1, 130000, 'ngã 4 đội 3 sơn đồng tiên phương chương mỹ hà nội', '123@gmail.com', 'kh1', '0348022004', 2),
(2, 2, '2023-11-19', 2, 450000, 'ngã 4 đội 3 sd tp cm hn', '123@gmail.com', 'kh2', '0123456789', 2),
(3, 3, '2023-11-19', 10, 250000, 'ngã 4 đội 3 sd tp cm hn', '123@gmail.com', 'kh3', '0123456789', 2),
(4, 4, '2023-11-19', 10, 70000, 'ngã 4 đội 3 sd tp cm hn', '123@gmail.com', 'kh', '0123456789', 2),
(5, 5, '2023-11-19', 20, 290000, 'ngã 4 đội 3 sd tp cm hn', '123@gmail.com', 'kh', '0123456789', 2),
(8, 1, '2023-11-22', 5, 570000, 'hn', '123@gmail.com', 'kh', '123', 2),
(16, 3, '2023-11-25', 11, 238000, '1', '12345@gmail.com', 'khách hàng3', '1', 2),
(41, 1, '2023-11-26', 5, 175000, '1', '12345@gmail.com', 'khach hang 1', '1', 2),
(50, 6, '2023-11-26', 20, 288000, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 2),
(52, 1, '2023-11-27', 50, 105000, 'nhà', '12345@gmail.com', 'khach hang 1', '0987654321', 2),
(53, 1, '0000-00-00', 10, 80000, '1', '12345@gmail.com', 'khach hang 1', '1', 2),
(54, 1, '2023-11-27', 1, 88110, '1', '12345@gmail.com', 'khach hang 1', '1', 2),
(55, 6, '2023-11-28', 30, 175000, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 1),
(56, 3, '2023-11-28', 40, 333000, '1', '12345@gmail.com', 'khách hàng3', '1', 1),
(57, 6, '2023-11-30', 40, 53400, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 1),
(58, 6, '2023-11-30', 40, 121800, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 1),
(62, 6, '2023-12-03', 40, 228600, 'hà nội1234', '12345@gmail.com', 'Nguyễn Thế Anh123456', '034802200412345', 0),
(63, 6, '2023-12-03', 40, 160200, 'hà nội việt nam', '12345@gmail.com', 'hihi', '0348022004', 0),
(64, 6, '2023-12-07', 0, 260000, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh4321', '0348022004', 0),
(65, 6, '2023-12-07', 0, 169000, 'hà nội', '12345@gmail.com', 'Nguyễn Thế Anh', '0348022004', 0);

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
(7, 'kh7', 'kh7', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '1', '212323r45123', 0),
(8, 'kh8', 'kh8', '81dc9bdb52d04dc20036dbd8313ed055', 'macdinh.png', 'kh8@gmail.com', '123', '123', 1),
(9, 'kh8', 'kh8', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '1@gmail.com', '1', '1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(11) NOT NULL,
  `ma_khuyen_mai` varchar(255) NOT NULL,
  `phan_tram_phuyen_mai` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `ma_khuyen_mai`, `phan_tram_phuyen_mai`, `ngay_bat_dau`, `ngay_ket_thuc`, `trang_thai`) VALUES
(1, 'giảm 10%', 10, '2023-11-01', '2023-12-31', 0),
(2, 'giảm 20%', 20, '2023-11-15', '2023-11-01', 0),
(3, 'Giảm 30% hóa đơn', 30, '2023-11-01', '2023-12-16', 0),
(4, 'giảm 40% hóa đơn', 40, '2023-11-01', '2024-01-01', 0),
(6, 'giảm 1%', 1, '2023-11-01', '2024-01-01', 0);

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
(1, 'images.png', 'Sự lựa chọn sáng suốt và đáng tin cậy<br> Uy tín tạo nên thương hiệu', 'Ngã 4 , đội 3, thôn Sơn Đồng, xã Tiên Phương, huyện Chương Mỹ, thành phố Hà Nội', '0348022004', 'anhntph43180@fpt.edu.vn');

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
(4, 'nguyen the anh', 'theanh26', '202cb962ac59075b964b07152d234b70', 'macdinh.png', 'anhntph43180@fpt.edu.vn', '0348022004', 0, 1),
(6, 'Bùi Xuân Đạt', 'datbx', '123', 'macdinh.png', 'nd1@gmail.com', '123', 0, 1);

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
  `ngay_nhap` date NOT NULL DEFAULT current_timestamp(),
  `trang_thai` int(11) NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_san_pham`, `gia_san_pham`, `img_dai_dien`, `mo_ta_san_pham`, `so_luong`, `da_ban`, `luot_xem`, `img_san_pham1`, `img_san_pham2`, `img_san_pham3`, `ngay_nhap`, `trang_thai`, `iddm`) VALUES
(1, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn', 80000, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn.jpg', '<p>Cuốn s&aacute;ch Thỏ Bảy M&agrave;u V&agrave; Những Người Nghĩ N&oacute; L&agrave; Bạn t&aacute;i bản năm 2023 l&agrave; t&aacute;c phẩm của t&aacute;c giả kh&ocirc;ng k&eacute;m phần s&aacute;ng tạo v&agrave; độc đ&aacute;o. Cuốn s&aacute;ch nhẹ nh&agrave;ng, đầy h&agrave;i hước v&agrave; ch&acirc;m biếm xoay quanh c&acirc;u chuyện về Thỏ Bảy M&agrave;u v&agrave; những người nghĩ rằng Thỏ l&agrave; bạn của họ. Với h&igrave;nh ảnh v&agrave; điệu bộ dễ thương, Thỏ Bảy M&agrave;u đ&atilde; trở th&agrave;nh một nh&acirc;n vật được nhiều người y&ecirc;u th&iacute;ch tr&ecirc;n mạng x&atilde; hội.</p>\r\n\r\n<p>Những mẩu chuyện trong cuốn s&aacute;ch được vẽ bằng tranh, kể về tho&aacute;ng qua cuộc sống của Thỏ v&agrave; những người xung quanh. T&aacute;c giả đ&atilde; d&ugrave;ng những c&acirc;u chuyện &ldquo;teen&rdquo; để lồng gh&eacute;p v&agrave;o những gi&aacute; trị đ&iacute;ch thực của cuộc sống, khiến độc giả kh&ocirc;ng chỉ cười đ&ugrave;a m&agrave; c&ograve;n suy ngẫm. Cuốn s&aacute;ch n&agrave;y l&agrave; một t&aacute;c phẩm giải tr&iacute; l&yacute; th&uacute; v&agrave; s&acirc;u sắc đối với c&aacute;c độc giả, đặc biệt l&agrave; c&aacute;c bạn trẻ.</p>\r\n', 129, 12, 247, 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn1.jpg', 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn2.jpg', 'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn3.jpg', '2023-11-01', 0, 5),
(2, 'Rùa Và Thỏ', 25000, 'Rùa Và Thỏ.jpg', '<p>Truyện&nbsp;<strong>R&ugrave;a v&agrave; Thỏ</strong>&nbsp;l&agrave; một c&acirc;u&nbsp;<strong>truyện ngụ</strong><a href=\"https://cotich.net/truyen-ngu-ngon.html\"><strong> ng&ocirc;n</strong></a>&nbsp;nổi tiếng của&nbsp;<strong>Aesop</strong>. L&agrave; cuốn C&acirc;u truyện thiếu nhi trong tủ s&aacute;ch song ngữ Việt - Anh&nbsp; của nh&agrave; xuất bản H&agrave; Nội. Cuốn s&aacute;ch với k&iacute;ch thước 17*24 cm.Tr&ecirc;n ngay từ b&igrave;a s&aacute;ch đ&atilde; được trang tr&iacute; đẹp mắt với h&igrave;nh ảnh R&ugrave;a v&agrave; Thỏ được t&ocirc; vẽ với m&agrave;u sắc tươi tắn.Cuốn s&aacute;ch c&oacute; phần minh họa sống động, bắt mắt gi&uacute;p c&aacute;c độc giả nh&iacute; cảm thấy hấp dẫn với c&acirc;u chuyện b&ecirc;n trang. Thỏ v&agrave; r&ugrave;a l&agrave; c&acirc;u chuyện xoay quanh cuộc chạy đua giữa&nbsp;<strong>R&ugrave;a v&agrave; Thỏ</strong>. Từ cuộc chạy đua giữa hai con vật đ&atilde; r&uacute;t ra được những b&agrave;i học rất hay v&agrave; s&acirc;u sắc cho người đọc. C&acirc;u chuyện kể về cuộc đua giữa r&ugrave;a v&agrave; thỏ. Ch&uacute; thỏ v&igrave; ỷ lại tốc độ chạy của m&igrave;nh m&agrave; chủ quan n&ecirc;n r&ugrave;a d&ugrave; chậm chạp m&agrave; ki&ecirc;n tr&igrave; đ&atilde; về đến đ&iacute;ch trước. Qua đ&oacute;, r&uacute;t ra được b&agrave;i học v&ocirc; c&ugrave;ng &yacute; nghĩa cho người đọc.&nbsp;&Yacute; nghĩa của c&acirc;u truyện ch&iacute;nh l&agrave; khi l&agrave;m bất cứ một việc g&igrave; th&igrave; l&agrave;m chậm v&agrave; ổn định chắc chắn sẽ chiến thắng. V&agrave; cũng đừng giống Thỏ nghĩ m&igrave;nh chạy nhanh n&ecirc;n đ&atilde; tự cao tự đại coi thường R&ugrave;a, kết cục l&agrave; R&ugrave;a đ&atilde; chiến thắng.</p>\r\n\r\n<p><strong>Truyện R&ugrave;a v&agrave; Thỏ&nbsp;</strong>tuy l&agrave; một c&acirc;u truyện đơn giản nhưng đ&atilde; cho ch&uacute;ng ta một b&agrave;i học rất qu&yacute; gi&aacute; l&agrave; chậm m&agrave; ổn định sẽ chiến thắng nhanh m&agrave; ẩu đoảng. Chỉ cần ch&uacute;ng ta ki&ecirc;n tr&igrave;, chắc chắn sẽ th&agrave;nh c&ocirc;ng&rdquo;.</p>\r\n', -2, 12, 20, 'Rùa Và Thỏ1.jpg', 'Rùa Và Thỏ2.jpg', 'Rùa Và Thỏ3.png', '2023-01-15', 0, 5),
(3, 'Con quạ thông minh', 20000, 'Con quạ thông minh.jpg', '<p>Để đưa những tinh hoa văn học truyền thống đến với đ&ocirc;ng đảo trẻ em Việt Nam, Ph&uacute;c Minh&nbsp;cho ra mắt bộ s&aacute;ch &ldquo;Ngụ ng&ocirc;n song ngữ&rdquo; với hơn nhiều cuốn s&aacute;ch ngụ ng&ocirc;n kh&aacute;c nhau. Hơn nữa, bộ s&aacute;ch được thể hiện dưới h&igrave;nh thức SONG NGỮ, kh&ocirc;ng chỉ gi&uacute;p c&aacute;c em nhỏ tiếp thu những b&agrave;i học đạo đức th&uacute; vị m&agrave; c&ograve;n c&ugrave;ng l&uacute;c học song song cả Tiếng Việt v&agrave; Tiếng Anh.<br />\r\n<br />\r\n<em><strong>Ch&uacute; quạ th&ocirc;ng minh</strong></em>&nbsp;l&agrave; c&acirc;u chuyện về bạn quạ: trời nóng hạn, Quạ Đen và các bạn đang sắp ch&ecirc;́t khát. May mắn thay, Quạ tìm th&acirc;́y m&ocirc;̣t bình nước. Nhưng nước trong bình ít quá, c&ocirc;̉ bình lại cao, Quạ Đen kh&ocirc;ng th&ecirc;̉ thọc mỏ vào u&ocirc;́ng được. Đ&ocirc;́ bé, Quạ Đen đã dùng cách gì có nước u&ocirc;́ng đ&acirc;y?</p>\r\n', 14, 3, 4, 'Con quạ thông minh1.jpg', 'Con quạ thông minh2.png', 'Con quạ thông minh3.jpg', '2023-11-08', 0, 5),
(4, 'Chú thỏ tinh khôn', 25000, 'Chú thỏ tinh khôn.jpg', '<p>Việt Nam c&oacute; một kho t&agrave;ng truyện cổ t&iacute;ch v&ocirc; c&ugrave;ng đa dạng v&agrave; phong ph&uacute;. Mỗi truyện cổ t&iacute;ch kh&ocirc;ng đơn thuần mang gi&aacute; trị giải tr&iacute; m&agrave; ẩn chứa trong đ&oacute; l&agrave; những b&agrave;i học bổ &iacute;ch mang t&iacute;nh gi&aacute;o dục cao. Do đ&oacute;, hầu hết c&aacute;c b&eacute; thiếu nhi đều được &ocirc;ng b&agrave;, cha mẹ, thầy c&ocirc; kể cho nghe những c&acirc;u chuyện cổ t&iacute;ch.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; tập truyện tranh in m&agrave;u d&agrave;nh cho thiếu nhi kể về c&acirc;u chuyện cổ t&iacute;ch: C&aacute;o, Thỏ V&agrave; G&agrave; Trống.</p>\r\n\r\n<p>Nội dung truyện cổ t&iacute;ch được t&oacute;m tắt ngắn gọn, k&egrave;m theo đ&oacute; l&agrave; h&igrave;nh ảnh minh hoạ sinh động c&ugrave;ng m&agrave;u sắc tươi s&aacute;ng thu h&uacute;t sự ch&uacute; &yacute; của c&aacute;c độc giả nh&iacute;.</p>\r\n\r\n<p>C&aacute;c qu&yacute; phụ huynh c&oacute; thể đọc cho c&aacute;c b&eacute; nghe hoặc đọc c&ugrave;ng với b&eacute;.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8936067590616</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Độ Tuổi</th>\r\n			<td><a href=\"https://www.fahasa.com/all-category.html?age=1921&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">5+</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/minh-long?fhs_campaign=ATTRIBUTE_PRODUCT\">Minh Long</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Minh Long</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Văn Học</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2013</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>60</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>27 x 19 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>16</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/thieu-nhi/truyen-thieu-nhi/truyen-tranh-thieu-nhi.html?order=num_orders_month\">Top 100 sản phẩm Truyện Tranh Thiếu Nhi b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Việt Nam c&oacute; một kho t&agrave;ng truyện cổ t&iacute;ch v&ocirc; c&ugrave;ng đa dạng v&agrave; phong ph&uacute;. Mỗi truyện cổ t&iacute;ch kh&ocirc;ng đơn thuần mang gi&aacute; trị giải tr&iacute; m&agrave; ẩn chứa trong đ&oacute; l&agrave; những b&agrave;i học bổ &iacute;ch mang t&iacute;nh gi&aacute;o dục cao. Do đ&oacute;, hầu hết c&aacute;c b&eacute; thiếu nhi đều được &ocirc;ng b&agrave;, cha mẹ, thầy c&ocirc; kể cho nghe những c&acirc;u chuyện cổ t&iacute;ch.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; tập truyện tranh in m&agrave;u d&agrave;nh cho thiếu nhi kể về c&acirc;u chuyện cổ t&iacute;ch: C&aacute;o, Thỏ V&agrave; G&agrave; Trống.</p>\r\n\r\n<p>Nội dung truyện cổ t&iacute;ch được t&oacute;m tắt ngắn gọn, k&egrave;m theo đ&oacute; l&agrave; h&igrave;nh ảnh minh hoạ sinh động c&ugrave;ng m&agrave;u sắc tươi s&aacute;ng thu h&uacute;t sự ch&uacute; &yacute; của c&aacute;c độc giả nh&iacute;.</p>\r\n\r\n<p>C&aacute;c qu&yacute; phụ huynh c&oacute; thể đọc cho c&aacute;c b&eacute; nghe hoặc đọc c&ugrave;ng với b&eacute;.</p>\r\n', 120, 3, 9, 'Chú thỏ tinh khôn1.jpg', 'Chú thỏ tinh khôn2.jpg', 'Chú thỏ tinh khôn3.jpg', '2023-11-02', 0, 5),
(5, 'Chính trị vũ trụ hạt nhân', 135000, 'Chính trị vũ trụ hạt nhân.jfif', '<h1><strong>Ch&iacute;nh Trị Vũ Kh&iacute; Hạt Nh&acirc;n - Andrew Futter</strong></h1>\r\n\r\n<h2>Cuốn s&aacute;ch mang đến c&aacute;i nh&igrave;n chuy&ecirc;n s&acirc;u, cụ thể hơn về vấn đề ch&iacute;nh trị dưới gốc độ hạt nh&acirc;n. Đ&oacute; l&agrave; những ch&iacute;nh s&aacute;ch, chiến lược hạt nh&acirc;n, những động th&aacute;i, h&agrave;nh động v&agrave; kế hoạch hạt nh&acirc;n hiện tại v&agrave; trong tương lai của mỗi nước. Khi tiếp cận c&aacute;c vấn đề ch&iacute;nh trị hạt nh&acirc;n, t&aacute;c giả đ&atilde; cố gắng: x&aacute;c định bối cảnh chung v&agrave; bối cảnh lịch sử cho vai tr&ograve; của vũ kh&iacute; hạt nh&acirc;n đối với an ninh quốc tế; c&aacute;c kh&iacute;a cạnh ch&iacute;nh trị, khoa học &ndash; c&ocirc;ng nghệ, quy chuẩn v&agrave; chiến lược vũ kh&iacute; hạt nh&acirc;n của mỗi nước; l&agrave;m nổi bật những &yacute; kiến tr&aacute;i chiều v&agrave; tranh luận ch&iacute;nh về vũ kh&iacute; hạt nh&acirc;n nhằm gi&uacute;p bạn đọc hiểu s&acirc;u hơn những th&aacute;ch thức sẽ định h&igrave;nh tương lai hạt nh&acirc;n, hay c&ugrave;ng suy ngẫm, xem x&eacute;t gi&aacute; trị tương đối của c&aacute;c lựa chọn sẵn c&oacute; trong việc kiểm so&aacute;t v&agrave; giải quyết mối đe dọa hạt nh&acirc;n.</h2>\r\n', 57, 1, 4, 'Chính trị vũ trụ hạt nhân1.html', 'Chính trị vũ trụ hạt nhân2.jpeg', 'Chính trị vũ trụ hạt nhân3.png', '2023-11-05', 0, 1),
(6, 'Chính trị học', 90000, 'Chính trị học.jfif', '<p>Gi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt NamGi&aacute;o Tr&igrave;nh Hệ Thống Ch&iacute;nh Trị Việt Nam</p>\r\n', 89, 1, 0, 'Chính trị học1.jpg', 'Chính trị học2.jfif', 'Chính trị học3.jpg', '2004-11-28', 0, 1),
(7, 'Chính trị bình dân', 200000, 'Chính trị bình dân.jfif', '<p><a href=\"https://donghohaitrieu.com/kinh-nghiem/review-sach-hay/20-truyen-ngu-ngon-viet-nam-hay-dac-sac-y-nghia-cho-be.html#con-qua-thong-minh\">Con quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minhCon quạ th&ocirc;ng minh</a></p>\r\n', 99, 3, 13, 'Chính trị bình dân1.jfif', 'Chính trị bình dân2.png', 'Chính trị bình dân3.jfif', '2023-11-28', 0, 1),
(8, 'Mưu Kế Chính Trị', 120000, 'Mưu Kế Chính Trị.png', '<h2>Mưu Kế Ch&iacute;nh Trị &ndash; Vũ T&agrave;i Lục</h2>\r\n\r\n<p>Đời sống x&atilde; hội l&agrave; một chuỗi d&agrave;i những lừa lọc. Thứ nhất l&agrave; đời sống chinh trị. Chẳng hạn như những nh&agrave; ngoại giao của c&aacute;c cường quốc hay đế quốc. Cứ mỗi lần sửa soạn chien tranh th&igrave; họ n&oacute;i rất nhiều về h&ograve;a b&igrave;nh v&agrave; t&igrave;nh giao hảo th&acirc;n thiện giữa c&aacute;c nước. Ngoại trưởng của những cường quốc hay đế quốc bắt đầu b&ecirc;nh vực hoặc k&ecirc;u gọi một hội nghị h&ograve;a b&igrave;nh c&oacute; nghĩa l&agrave; b&ecirc;n trong đ&atilde; sẵn c&oacute; một kế họach chiến tranh t&agrave;n bạo. Với chinh trị lời n&oacute;i tốt l&agrave; để che việc l&agrave;m t&agrave;n bạo.</p>\r\n\r\n<p>Trong sinh họat thường nhật, cũng như trong sinh họat chinh trị, Khổng Tử vẫn n&oacute;i: &ldquo;Sảo nhi hiếu độ tất c&ocirc;ng, dụng nhi hiếu độ tất thắng, tr&iacute; nhi hiếu mưu tất th&agrave;nh&rdquo; (Đ&atilde; kh&eacute;o rồi m&agrave; lại đo ngắm cho cẩn thận th&igrave; việc phải tốt, đ&atilde; d&ugrave;ng m&agrave; biết c&ugrave;ng người cộng t&aacute;c th&igrave; phải thắng, đa tr&iacute; m&agrave; lại nhiều mưu th&igrave; phải th&agrave;nh).</p>\r\n', 142, 1, 3, 'Mưu Kế Chính Trị1.jfif', 'Mưu Kế Chính Trị2.jfif', 'Mưu Kế Chính Trị3.jfif', '2023-11-28', 0, 1),
(9, 'Phải trái đúng sai', 250000, 'Phải trái đúng sai.jpg', '<p>S&aacute;ch b&agrave;n về vấn đề đạo đức dưới c&aacute;i nh&igrave;n triết học. T&aacute;c giả đưa ra c&aacute;c vụ việc g&acirc;y tranh c&atilde;i về vấn đề đạo đức để mổ xẻ dưới nhiều g&oacute;c độ, theo quan điểm của c&aacute;c học thuyết triết học kh&aacute;c nhau, mỗi chương tr&igrave;nh b&agrave;y s&acirc;u về một học thuyết. Nhờ vậy, tư tưởng của Aristotle, Jeremy Bentham, Immanuel Kant, John Stuart Mill, Robert Nozick, v&agrave; John Rawl được tr&igrave;nh b&agrave;y với sự r&otilde; r&agrave;ng v&agrave; gần gũi, m&agrave; theo New York Times l&agrave;&nbsp;&ldquo;hiếm khi được giải th&iacute;ch dễ hiểu đến như vậy&rdquo;.<br />\r\n<br />\r\n&ldquo;<strong>Michael Sandel</strong>&nbsp;&ndash; c&oacute; lẽ l&agrave; gi&aacute;o sư đại học nổi tiếng nhất ở Mỹ &ndash; đ&atilde; mang lại &ldquo;sự minh bạch về đạo đức cho sự lựa chọn m&agrave; ch&uacute;ng ta phải đối mặt, với tư c&aacute;ch l&agrave; c&ocirc;ng d&acirc;n trong x&atilde; hội d&acirc;n chủ&rdquo;. &Ocirc;ng đ&atilde; chỉ ra rằng sự chia rẽ ch&iacute;nh trị kh&ocirc;ng phải giữa c&aacute;nh tả với c&aacute;nh hữu m&agrave; giữa những người nhận ra kh&ocirc;ng c&oacute; g&igrave; qu&yacute; hơn quyền c&aacute; nh&acirc;n v&agrave; lựa chọn c&aacute; nh&acirc;n với những người tin v&agrave;o một nền ch&iacute;nh trị phục vụ lợi &iacute;ch số đ&ocirc;ng&rdquo;<br />\r\n&ndash; Bưu điện Washington<br />\r\n<br />\r\n&ldquo;Quyết liệt, dễ hiểu, v&agrave; đầy t&iacute;nh nh&acirc;n văn, cuốn s&aacute;ch n&agrave;y thực sự l&agrave; một cuốn s&aacute;ch l&agrave;m thay đổi người đọc&rdquo;&nbsp;<strong>&ndash; Publisher Weekly</strong><br />\r\n<br />\r\nCuốn s&aacute;ch thuộc&nbsp;Tủ s&aacute;ch C&aacute;nh cửa mở rộng&nbsp;&ndash; Tủ s&aacute;ch hợp t&aacute;c giữa nh&agrave; to&aacute;n học Ng&ocirc; Bảo Ch&acirc;u v&agrave; nh&agrave; văn Phan Việt với Nh&agrave; xuất bản Trẻ.</p>\r\n', 123, 1, 4, 'Phải trái đúng sai1.jfif', 'Phải trái đúng sai2.jpg', 'Phải trái đúng sai3.jpg', '2023-11-28', 0, 1),
(10, 'Kinh tế số', 89000, 'Kinh tế số.jpg', '<p>Quyển s&aacute;ch &ldquo;Kinh tế số&rdquo; ra đời nhằm cung cấp v&agrave; chia sẻ với người đọc c&aacute;i nh&igrave;n tổng quan hơn về triển vọng kinh tế Internet, ch&iacute;nh s&aacute;ch ph&aacute;t triển v&agrave; dữ liệu trong nền kinh tế số ở cung v&agrave; cầu, ph&acirc;n t&iacute;ch cơ hội cũng như th&aacute;ch thức của kinh tế số đối với c&aacute;c doanh nghiệp, đặc biệt l&agrave; doanh nghiệp trong nền kinh tế Việt Nam, từ đ&oacute; c&oacute; những định hướng cũng như ch&iacute;nh s&aacute;ch ph&aacute;t triển, đổi mới cho nền kinh tế nước nh&agrave;. Cuốn s&aacute;ch n&agrave;y sẽ hữu &iacute;ch cho những ai đang quan t&acirc;m theo học ng&agrave;nh Quản trị kinh doanh, C&ocirc;ng nghệ th&ocirc;ng tin v&agrave; truyền th&ocirc;ng.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 79, 6, 4, 'Kinh tế số1.webp', 'Kinh tế số2.jpg', 'Kinh tế số3.png', '2023-11-28', 0, 2),
(11, 'Kinh tế vĩ mô', 89000, 'Kinh tế vĩ mô.jfif', '<h2>Giới thiệu s&aacute;ch Kinh Tế Học - S&aacute;ch Tham Khảo - Tập 1 (B&igrave;a Cứng)</h2>\r\n\r\n<p>Kinh tế học&nbsp;l&agrave; một khoa học động - lu&ocirc;n thay đổi để phản &aacute;nh những xu hướng biến chuyển của những vấn đề kinh tếm của m&ocirc;i trường v&agrave; nền kinh tế thế giới, cũng như của x&atilde; hội n&oacute;i chung. Khi kinh tế học v&agrave; thế giới rộng lớn hơn xung quanh ta ph&aacute;t triển th&igrave; cuốn s&aacute;ch n&agrave;y cũng vậy. Mỗi một chương của n&oacute; đều b&aacute;m s&aacute;t những thay đổi của những ph&acirc;n t&iacute;ch kinh tế v&agrave; ch&iacute;nh s&aacute;ch kinh tế.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 118, 6, 42, 'Kinh tế vĩ mô1.jpg', 'Kinh tế vĩ mô2.webp', 'Kinh tế vĩ mô3.jfif', '2023-11-28', 0, 2),
(12, 'Kinh tế học', 99000, 'Kinh tế học.jpg', '<p>Kinh tế học l&agrave; một khoa học động - lu&ocirc;n thay đổi để phản &aacute;nh những xu hướng biến chuyển của những vấn đề kinh tếm của m&ocirc;i trường v&agrave; nền kinh tế thế giới, cũng như của x&atilde; hội n&oacute;i chung. Khi kinh tế học v&agrave; thế giới rộng lớn hơn xung quanh ta ph&aacute;t triển th&igrave; cuốn s&aacute;ch n&agrave;y cũng vậy. Mỗi một chương của n&oacute; đều b&aacute;m s&aacute;t những thay đổi của những ph&acirc;n t&iacute;ch kinh tế v&agrave; ch&iacute;nh s&aacute;ch kinh tế.<a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a></p>\r\n', 54, 0, 0, 'Kinh tế học3.jpg', 'Kinh tế học2.jpg', 'Kinh tế học1.jpg', '2023-11-28', 0, 2),
(13, 'Chiến tranh tiền tệ', 98500, 'Chiến tranh tiền tệ.webp', '<p><strong>Chiến Tranh Tiền Tệ (T&aacute;i Bản 2018)</strong></p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;gi&uacute;p ch&uacute;ng ta hiểu nhiều điều, rằng Bill Gates chưa phải l&agrave; người gi&agrave;u nhất h&agrave;nh tinh, rằng tỉ lệ tử vong của c&aacute;c tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh l&iacute;nh Mỹ ngo&agrave;i chiến trường, hay v&igrave; sao phố Wall lại mạo hiểm đổ hết vốn liếng của m&igrave;nh cho việc &ldquo;đầu tư&rdquo; v&agrave;o Hitler.</p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;đề cập đến một cuộc chiến khốc liệt, kh&ocirc;ng khoan nhượng v&agrave; dai dẳng giữa một nh&oacute;m nhỏ c&aacute;c &ocirc;ng tr&ugrave;m t&agrave;i ch&iacute;nh - đứng đầu l&agrave; gia tộc Rothschild - với c&aacute;c thể chế t&agrave;i ch&iacute;nh kinh tế của nhiều quốc gia. Đ&oacute; l&agrave; một cuộc chiến m&agrave; đồng tiền l&agrave; s&uacute;ng đạn v&agrave; mức s&aacute;t thương thật l&agrave; gh&ecirc; gớm. Một cuốn s&aacute;ch thực sự l&agrave;m sửng sốt với những ai muốn t&igrave;m hiểu về bản chất tiền tệ để từ đ&oacute; nhận ra những hiểm hoạ t&agrave;i ch&iacute;nh tiềm ẩn nhằm chuẩn bị t&acirc;m l&yacute; cho một cuộc chiến tiền tệ &ldquo;kh&ocirc;ng đổ m&aacute;u&rdquo;.</p>\r\n\r\n<p>B&ecirc;n cạnh việc phơi b&agrave;y những &acirc;m mưu của c&aacute;c nh&agrave; t&agrave;i phiệt thế giới trong việc tạo ra những cơn &ldquo;hạn h&aacute;n&rdquo; hay &ldquo;b&atilde;o lũ&rdquo; về tiền tệ để thu lợi nhuận, cuốn s&aacute;ch cũng đề cập đến sự ph&aacute;t triển của c&aacute;c định chế t&agrave;i ch&iacute;nh thế giới - những cơ cấu được x&acirc;y dựng nhằm đ&aacute;p ứng nhu cầu ph&aacute;t triển vũ b&atilde;o của nền kinh tế to&agrave;n cầu.</p>\r\n\r\n<p>***</p>\r\n\r\n<p>Một số tr&iacute;ch dẫn:</p>\r\n\r\n<p>&ldquo;Trong mắt họ [gia tộc Rothschild] kh&ocirc;ng c&oacute; chiến tranh v&agrave; h&ograve;a b&igrave;nh, kh&ocirc;ng c&oacute; khẩu hiệu v&agrave; tuy&ecirc;n ng&ocirc;n, cũng kh&ocirc;ng c&oacute; chết ch&oacute;c v&agrave; danh dự, họ xem thường những thứ m&ecirc; hoặc đ&ocirc;i mắt của người đời n&agrave;y. Trong mắt họ chỉ c&oacute; b&agrave;n đạp.&rdquo;</p>\r\n\r\n<p>&ldquo;Tiền kh&ocirc;ng c&oacute; Tổ quốc. C&aacute;c nh&agrave; t&agrave;i ch&iacute;nh kh&ocirc;ng biết thế n&agrave;o l&agrave; l&ograve;ng &aacute;i quốc v&agrave; sự cao thượng. Mục đ&iacute;ch duy nhất của họ ch&iacute;nh l&agrave; thu lợi.&rdquo;</p>\r\n\r\n<p>&ldquo;Của cải vốn dĩ tự động chảy về nơi c&oacute; thể bảo vệ n&oacute; v&agrave; khiến n&oacute; tăng gi&aacute; trị.&rdquo;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786048029753</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/bach-viet?fhs_campaign=ATTRIBUTE_PRODUCT\">B&aacute;ch Việt</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Song Hong Bing</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Người Dịch</th>\r\n			<td>Hồ Ngọc Minh</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Th&ocirc;ng Tin v&agrave; Truyền Th&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2018</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>550</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n			<td>16 x 24</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>518</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/kinh-te-chinh-tri-phap-ly/tai-chinh-ngan-hang.html?order=num_orders_month\">Top 100 sản phẩm T&agrave;i Ch&iacute;nh - Ng&acirc;n H&agrave;ng b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n			<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Chiến Tranh Tiền Tệ (T&aacute;i Bản 2018)</strong></p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;gi&uacute;p ch&uacute;ng ta hiểu nhiều điều, rằng Bill Gates chưa phải l&agrave; người gi&agrave;u nhất h&agrave;nh tinh, rằng tỉ lệ tử vong của c&aacute;c tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh l&iacute;nh Mỹ ngo&agrave;i chiến trường, hay v&igrave; sao phố Wall lại mạo hiểm đổ hết vốn liếng của m&igrave;nh cho việc &ldquo;đầu tư&rdquo; v&agrave;o Hitler.</p>\r\n\r\n<p><em>&ldquo;Chiến tranh tiền tệ&rdquo;</em>&nbsp;đề cập đến một cuộc chiến khốc liệt, kh&ocirc;ng khoan nhượng v&agrave; dai dẳng giữa một nh&oacute;m nhỏ c&aacute;c &ocirc;ng tr&ugrave;m t&agrave;i ch&iacute;nh - đứng đầu l&agrave; gia tộc Rothschild - với c&aacute;c thể chế t&agrave;i ch&iacute;nh kinh tế của nhiều quốc gia. Đ&oacute; l&agrave; một cuộc chiến m&agrave; đồng tiền l&agrave; s&uacute;ng đạn v&agrave; mức s&aacute;t thương thật l&agrave; gh&ecirc; gớm. Một cuốn s&aacute;ch thực sự l&agrave;m sửng sốt với những ai muốn t&igrave;m hiểu về bản chất tiền tệ để từ đ&oacute; nhận ra những hiểm hoạ t&agrave;i ch&iacute;nh tiềm ẩn nhằm chuẩn bị t&acirc;m l&yacute; cho một cuộc chiến tiền tệ &ldquo;kh&ocirc;ng đổ m&aacute;u&rdquo;.</p>\r\n\r\n<p>B&ecirc;n cạnh việc phơi b&agrave;y những &acirc;m mưu của c&aacute;c nh&agrave; t&agrave;i phiệt thế giới trong việc tạo ra những cơn &ldquo;hạn h&aacute;n&rdquo; hay &ldquo;b&atilde;o lũ&rdquo; về tiền tệ để thu lợi nhuận, cuốn s&aacute;ch cũng đề cập đến sự ph&aacute;t triển của c&aacute;c định chế t&agrave;i ch&iacute;nh thế giới - những cơ cấu được x&acirc;y dựng nhằm đ&aacute;p ứng nhu cầu ph&aacute;t triển vũ b&atilde;o của nền kinh tế to&agrave;n cầu.</p>\r\n\r\n<p>***</p>\r\n\r\n<p>Một số tr&iacute;ch dẫn:</p>\r\n\r\n<p>&ldquo;Trong mắt họ [gia tộc Rothschild] kh&ocirc;ng c&oacute; chiến tranh v&agrave; h&ograve;a b&igrave;nh, kh&ocirc;ng c&oacute; khẩu hiệu v&agrave; tuy&ecirc;n ng&ocirc;n, cũng kh&ocirc;ng c&oacute; chết ch&oacute;c v&agrave; danh dự, họ xem thường những thứ m&ecirc; hoặc đ&ocirc;i mắt của người đời n&agrave;y. Trong mắt họ chỉ c&oacute; b&agrave;n đạp.&rdquo;</p>\r\n\r\n<p>&ldquo;Tiền kh&ocirc;ng c&oacute; Tổ quốc. C&aacute;c nh&agrave; t&agrave;i ch&iacute;nh kh&ocirc;ng biết thế n&agrave;o l&agrave; l&ograve;ng &aacute;i quốc v&agrave; sự cao thượng. Mục đ&iacute;ch duy nhất của họ ch&iacute;nh l&agrave; thu lợi.&rdquo;</p>\r\n\r\n<p>&ldquo;Của cải vốn dĩ tự động chảy về nơi c&oacute; thể bảo vệ n&oacute; v&agrave; khiến n&oacute; tăng gi&aacute; trị.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 90, 0, 0, 'Chiến tranh tiền tệ2.png', 'Chiến tranh tiền tệ3.jpg', 'tải xuống (2).jfif', '2023-11-28', 0, 2),
(14, 'Từ tốt đến vĩ đại', 78000, 'Từ tốt đến vĩ đại.jpg', '<p>Jim Collins c&ugrave;ng nh&oacute;m nghi&ecirc;n cứu đ&atilde; miệt m&agrave;i nghi&ecirc;n cứu những c&ocirc;ng ty c&oacute; bước nhảy vọt v&agrave; bền vững để r&uacute;t ra những kết luận s&aacute;t sườn, những yếu tố cần k&iacute;p để đưa c&ocirc;ng ty từ tốt đến vĩ đại. Đ&oacute; l&agrave; những yếu tố khả năng l&atilde;nh đạo, con người, văn h&oacute;a, kỷ luật, c&ocirc;ng nghệ&hellip; Những yếu tố n&agrave;y được nh&oacute;m nghi&ecirc;n cứu xem x&eacute;t tỉ mỉ v&agrave; kiểm chứng cụ thể qua 11 c&ocirc;ng ty nhảy vọt l&ecirc;n vĩ đại. Mỗi kết luận của nh&oacute;m nghi&ecirc;n cứu đều hữu &iacute;ch, vượt thời gian, &yacute; nghĩa v&ocirc; c&ugrave;ng to lớn đối với mọi l&atilde;nh đạo v&agrave; quản l&yacute; ở mọi loại h&igrave;nh c&ocirc;ng ty (từ c&ocirc;ng ty c&oacute; nền tảng v&agrave; xuất ph&aacute;t tốt đến những c&ocirc;ng ty mới khởi nghiệp), v&agrave; mọi lĩnh vực ng&agrave;nh nghề. Đ&acirc;y l&agrave; cuốn s&aacute;ch n&ecirc;n đọc đối với bất kỳ l&atilde;nh đạo hay quản l&yacute; n&agrave;o!</p>\r\n', 97, 0, 0, 'Từ tốt đến vĩ đại1.jpg', 'Từ tốt đến vĩ đại2.jpg', 'Từ tốt đến vĩ đại3.jpg', '2023-11-28', 0, 2),
(15, 'Kinh tế học đổi mới', 59000, 'Kinh tế học đổi mới.jpg', '<p>Nội dung cuốn s&aacute;ch đề cập tới những vấn đề quan trọng của cuộc đua gi&agrave;nh lợi thế tr&ecirc;n phạm vi to&agrave;n cầu; trả lời cho c&acirc;u hỏi ai l&agrave; người chiến thắng, ai l&agrave; kẻ chiến bại trong cuộc đua n&agrave;y v&agrave; tại sao; c&aacute;c quốc gia cần phải l&agrave;m g&igrave; để tối đa h&oacute;a đổi mới v&agrave; tăng trưởng&hellip; B&ecirc;n cạnh đ&oacute;, c&aacute;c t&aacute;c giả đặc biệt nhấn mạnh việc x&acirc;y dựng một cộng đồng doanh nghiệp c&oacute; năng lực, sẵn s&agrave;ng đầu tư cho đổi mới m&agrave; kh&ocirc;ng kỳ vọng thu lợi nhuận trong ngắn hạn v&agrave; c&oacute; một ch&iacute;nh phủ sẵn s&agrave;ng thực thi c&aacute;c ch&iacute;nh s&aacute;ch đổi mới hiệu quả l&agrave; những yếu tố quyết định để gi&agrave;nh chiến thắng trong cuộc đua gi&agrave;nh lợi thế đổi mới to&agrave;n cầu.</p>\r\n', 57, 0, 0, 'Kinh tế học đổi mới1.jpg', 'Kinh tế học đổi mới.jpg', 'Kinh tế học đổi mới1.jpg', '2023-11-28', 0, 2),
(16, 'Đại Việt Sử Ký Toàn Thư', 2500000, 'Đại Việt Sử Ký Toàn Thư.jpg', '<ul>\r\n	<li>\r\n	<p><em><strong>Ấn phẩm &quot;Đại Việt sử k&yacute; to&agrave;n thư&quot;&nbsp;được bi&ecirc;n soạn bởi c&aacute;c sử gia của nh&agrave; L&ecirc; trong &quot;Ng&ocirc; gia văn ph&aacute;i&quot; gồm:&nbsp;Ng&ocirc; Sĩ Li&ecirc;n, Vũ Quỳnh, L&ecirc; Hy, Phạm C&ocirc;ng Trứ. Trong đ&oacute;, Ng&ocirc; Sỹ Li&ecirc;n l&agrave; người đầu ti&ecirc;n chấp b&uacute;t bi&ecirc;n soạn, L&ecirc; Hy, Vũ Quỳnh, Phạm C&ocirc;ng Trứ l&agrave; những người tiếp theo chỉnh sửa, bổ sung để c&oacute; được bộ sử ho&agrave;n chỉnh như ng&agrave;y nay. Đ&acirc;y là bản in&nbsp;phổ biến nhất&nbsp;dựa tr&ecirc;n cơ sở bản in&nbsp;Nội c&aacute;c quan bản&nbsp;- hiện đang lưu giữ tại thư viện&nbsp;Viện Viễn Đ&ocirc;ng B&aacute;c cổ&nbsp;ở Paris, do&nbsp;Nh&agrave; Xuất bản Khoa học X&atilde; hội ấn h&agrave;nh&nbsp;năm 1993.&nbsp;</strong></em></p>\r\n\r\n	<p><em><strong>Cu&ocirc;́n 1 được dịch và chú thích bởi dịch giả Ng&ocirc; Đức Thọ, cu&ocirc;́n 2 bởi dịch giả Hoàng Văn L&acirc;u, cu&ocirc;́n 3 bởi dịch giả Hoàng Văn L&acirc;u và Ng&ocirc; Th&ecirc;́ Long, cu&ocirc;́n 4 là nguy&ecirc;n văn chữ Hán phục vụ cho vi&ecirc;̣c nghi&ecirc;n cứu văn bản g&ocirc;́c.&nbsp;Ấn bản đang lưu giữu tại Qu&aacute;n S&aacute;ch M&ugrave;a Thu c&oacute; t&igrave;nh trạng đẹp, s&aacute;ch đ&acirc;̀y đủ 4 t&acirc;̣p, c&oacute; đầy đủ b&igrave;a gáy,&nbsp;ruột đủ trang, l&otilde;i s&aacute;ch chắc chắn.&nbsp;</strong></em></p>\r\n\r\n	<p><em><strong>Đại Việt sử k&yacute; to&agrave;n thư</strong></em>&nbsp;đ&ocirc;i khi gọi tắt l&agrave;&nbsp;<em><strong>To&agrave;n thư</strong></em>, l&agrave; bộ quốc sử viết bằng&nbsp;H&aacute;n văn&nbsp;của Việt Nam, viết theo&nbsp;thể bi&ecirc;n ni&ecirc;n, ghi ch&eacute;p lịch sử Việt Nam từ thời đại truyền thuyết&nbsp;Kinh Dương Vương&nbsp;năm 2879 TCN đến năm 1675 đời vua&nbsp;L&ecirc; Gia T&ocirc;ng&nbsp;nh&agrave; Hậu L&ecirc;. Bộ sử n&agrave;y được khắc in to&agrave;n bộ v&agrave; ph&aacute;t h&agrave;nh&nbsp;<em>lần đầu ti&ecirc;n</em>&nbsp;v&agrave;o năm Đinh Sửu, ni&ecirc;n hiệu Ch&iacute;nh H&ograve;a năm thứ 18, triều vua&nbsp;L&ecirc; Hy T&ocirc;ng, tức l&agrave; năm 1697. Đ&acirc;y l&agrave; bộ ch&iacute;nh sử Việt Nam xưa nhất c&ograve;n tồn tại nguy&ecirc;n vẹn đến ng&agrave;y nay, do nhiều đời sử quan trong&nbsp;Sử qu&aacute;n triều Hậu L&ecirc;&nbsp;bi&ecirc;n soạn.</p>\r\n\r\n	<p>Bộ sử bắt đầu được&nbsp;Ng&ocirc; Sĩ Li&ecirc;n, một vị sử quan l&agrave;m việc trong&nbsp;<em>Sử qu&aacute;n</em>&nbsp;dưới thời vua&nbsp;L&ecirc; Th&aacute;nh T&ocirc;ng, bi&ecirc;n soạn dựa tr&ecirc;n sự chỉnh l&yacute; v&agrave; bổ sung hai bộ quốc sử Việt Nam trước đ&oacute; c&ugrave;ng mang t&ecirc;n&nbsp;<em>Đại Việt sử k&yacute;</em>&nbsp;của&nbsp;L&ecirc; Văn Hưu&nbsp;v&agrave;&nbsp;Phan Phu Ti&ecirc;n. Ho&agrave;n th&agrave;nh v&agrave;o ni&ecirc;n hiệu Hồng Đức thứ 10 (1479), bộ sử mới của Ng&ocirc; Sĩ Li&ecirc;n gồm 15 quyển, ghi lại&nbsp;lịch sử Việt Nam&nbsp;từ một thời điểm huyền thoại l&agrave; năm 2879 TCN đến năm 1427 (khi nh&agrave;&nbsp;Hậu L&ecirc;&nbsp;được th&agrave;nh lập) v&agrave; mang t&ecirc;n&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>. Sau đ&oacute;, d&ugrave; đ&atilde; ho&agrave;n th&agrave;nh,&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;lại kh&ocirc;ng được khắc in để ban h&agrave;nh rộng r&atilde;i m&agrave; tiếp tục được nhiều đời sử quan trong Quốc sử qu&aacute;n sửa đổi, bổ sung v&agrave; ph&aacute;t triển th&ecirc;m. Khoảng ni&ecirc;n hiệu Cảnh Trị (1663 - 1671) đời vua&nbsp;L&ecirc; Huyền T&ocirc;ng, ch&uacute;a&nbsp;Trịnh Tạc&nbsp;hạ lệnh cho một nh&oacute;m văn quan, đứng đầu l&agrave; Tham tụng&nbsp;Phạm C&ocirc;ng Trứ, sửa chữa bộ quốc sử của Ng&ocirc; Sĩ Li&ecirc;n, đồng thời sai bi&ecirc;n soạn tiếp lịch sử Việt Nam từ năm 1428 đời vua&nbsp;L&ecirc; Th&aacute;i Tổ&nbsp;đến năm 1662 đời vua&nbsp;L&ecirc; Thần T&ocirc;ng&nbsp;nh&agrave; Hậu L&ecirc;. Bộ sử của nh&oacute;m Phạm C&ocirc;ng Trứ, gồm 23 quyển, được đem khắc in để ph&aacute;t h&agrave;nh nhưng c&ocirc;ng việc chưa xong, phải bỏ dở. Khoảng ni&ecirc;n hiệu&nbsp;Ch&iacute;nh H&ograve;a&nbsp;(1680 - 1705) đời vua&nbsp;L&ecirc; Hy T&ocirc;ng, ch&uacute;a&nbsp;Trịnh Căn&nbsp;lại hạ lệnh cho một nh&oacute;m văn quan, đứng đầu l&agrave; Tham tụng&nbsp;L&ecirc; Hy, tiếp tục khảo đ&iacute;nh bộ sử của nh&oacute;m Phạm C&ocirc;ng Trứ, đồng thời bi&ecirc;n soạn tiếp lịch sử Việt Nam từ năm 1663 đời vua&nbsp;L&ecirc; Huyền T&ocirc;ng&nbsp;đến năm 1675 đời vua&nbsp;L&ecirc; Gia T&ocirc;ng&nbsp;nh&agrave; Hậu L&ecirc;. Bộ quốc sử n&agrave;y lấy t&ecirc;n l&agrave;&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>, theo đ&uacute;ng t&ecirc;n m&agrave; sử gia Ng&ocirc; Sĩ Li&ecirc;n c&aacute;ch đ&oacute; gần hai&nbsp;thế kỷ&nbsp;đ&atilde; đặt cho bộ sử của &ocirc;ng, gồm 25 quyển, được khắc in to&agrave;n bộ v&agrave; ph&aacute;t h&agrave;nh th&agrave;nh c&ocirc;ng v&agrave;o năm Đinh Sửu, ni&ecirc;n hiệu Ch&iacute;nh H&ograve;a năm thứ 18 đời vua L&ecirc; Hy T&ocirc;ng, tức l&agrave; năm 1697.</p>\r\n\r\n	<p>Sau khi xuất bản,&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;tiếp tục được t&aacute;i bản bởi c&aacute;c hiệu in của ch&iacute;nh quyền v&agrave; tư nh&acirc;n, kh&ocirc;ng chỉ ở Việt Nam m&agrave; c&ograve;n tr&ecirc;n khắp thế giới, trong nhiều thế kỷ sau. Nửa cuối thế kỷ 20, ở Việt Nam xuất hiện c&aacute;c bản dịch&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;ra&nbsp;chữ quốc ngữ, phổ biến nhất l&agrave; bản dịch dựa tr&ecirc;n cơ sở bản in&nbsp;<em>Nội c&aacute;c quan bản</em>&nbsp;- hiện đang lưu giữ tại thư viện&nbsp;Viện Viễn Đ&ocirc;ng B&aacute;c cổ&nbsp;ở Paris, do&nbsp;<em>Nh&agrave; Xuất bản Khoa học X&atilde; hội</em>&nbsp;ph&aacute;t h&agrave;nh lần đầu năm 1993.</p>\r\n\r\n	<p><em>Đại Việt sử k&yacute; to&agrave;n thư</em>&nbsp;l&agrave; bộ ch&iacute;nh sử Việt Nam xưa nhất c&ograve;n tồn tại nguy&ecirc;n vẹn đến ng&agrave;y nay, l&agrave; di sản v&ocirc; gi&aacute; của văn h&oacute;a d&acirc;n tộc Việt Nam, l&agrave; kho tư liệu phong ph&uacute; kh&ocirc;ng những cần thiết cho ng&agrave;nh sử học m&agrave; c&ograve;n gi&uacute;p &iacute;ch cho nhiều ng&agrave;nh khoa học x&atilde; hội kh&aacute;c&nbsp;v&agrave; cũng l&agrave; một bộ sử c&oacute; gi&aacute; trị văn học. C&aacute;c bộ quốc sử sau n&agrave;y của Việt Nam như&nbsp;<em>Đại Việt sử k&yacute; tiền bi&ecirc;n</em>,&nbsp;<em>Kh&acirc;m định Việt sử Th&ocirc;ng gi&aacute;m Cương mục</em>&nbsp;đều được bi&ecirc;n soạn dựa tr&ecirc;n cơ sở của&nbsp;<em>Đại Việt sử k&yacute; to&agrave;n thư</em>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 132, 0, 0, 'Đại Việt Sử Ký Toàn Thư1.jpg', 'Đại Việt Sử Ký Toàn Thư2.jfif', 'Đại Việt Sử Ký Toàn Thư3.webp', '2023-11-10', 0, 3),
(17, 'Sapiens: Lược Sử Về Loài Người.', 200000, 'Lược Sử Về Loài Ngườ.png', '<ul>\r\n	<li>\r\n	<p>Bộ truyện tranh n&agrave;y được chuyển thể từ cuốn s&aacute;ch best-seller &ldquo;Sapiens: Lược sử lo&agrave;i người&rdquo; của t&aacute;c giả nổi tiếng Yuval Harari.</p>\r\n\r\n	<p>Harari đ&atilde; hợp t&aacute;c với c&aacute;c nghệ sĩ truyện tranh nổi tiếng David Vandermeulen (đồng s&aacute;ng t&aacute;c) v&agrave; Daniel Casanave (họa sĩ minh họa), để tạo ra một loạt tập truyện đồ họa nhằm thu h&uacute;t những độc giả kh&ocirc;ng thường xuy&ecirc;n của mảng khoa học v&agrave; lịch sử.</p>\r\n\r\n	<p>Tập s&aacute;ch bao gồm nhiều h&igrave;nh ảnh minh họa đầy đủ m&agrave;u sắc v&agrave; văn bản dễ hiểu sẽ l&agrave;m nội dung của t&aacute;c phẩm trở n&ecirc;n hấp dẫn hơn d&agrave;nh cho độc giả mọi lứa tuổi. Dự kiến sẽ c&oacute; 4 tập dựa tr&ecirc;n 4 phần ch&iacute;nh của t&aacute;c phẩm gốc, v&agrave; tập đầu ti&ecirc;n đ&atilde; được ph&aacute;t h&agrave;nh tr&ecirc;n thế giới v&agrave;o cuối th&aacute;ng 10/2020, tập 2 dự kiến xuất bản v&agrave;o năm 2021</p>\r\n\r\n	<p>Đ&acirc;y l&agrave; tập 1 của bộ truyện tập trung v&agrave;o sự h&igrave;nh th&agrave;nh n&ecirc;n lo&agrave;i người đang thống trị Tr&aacute;i đất hiện nay. Cấu tr&uacute;c tập 1 gồm 4 phần:</p>\r\n\r\n	<p>_Những kẻ nổi loạn tr&ecirc;n đồng cỏ: lo&agrave;i người ban đầu chỉ l&agrave; một động vật b&igrave;nh thường như bao lo&agrave;i kh&aacute;c, v&agrave; đ&atilde; tồn tại nhiều lo&agrave;i người kh&aacute;c nhau trong qu&aacute; tr&igrave;nh tiến h&oacute;a. Bộ n&atilde;o lớn l&agrave; đặc điểm kh&aacute;c biệt với c&aacute;c lo&agrave;i vật kh&aacute;c, từ đ&oacute; khiến lo&agrave;i người c&oacute; khả năng học hỏi, sống tập trung theo nh&oacute;m c&oacute; cấu tr&uacute;c phức tạp, v&agrave; chế tạo c&ocirc;ng cụ hay biết sử dụng lửa trong cuộc sống. C&aacute;c lo&agrave;i người c&oacute; khả năng đ&atilde; lai giống với nhau, tuy nhi&ecirc;n việc tại sao chỉ c&ograve;n lo&agrave;i người Sapiens tồn tại trong khi c&aacute;c lo&agrave;i người kh&aacute;c bị tuyệt chủng vẫn c&ograve;n l&agrave; c&acirc;u hỏi để ngỏ.</p>\r\n\r\n	<p>_Những bậc thầy hư cấu: 70.000 năm trước, Sapiens đ&atilde; c&oacute; một cuộc C&aacute;ch mạng Nhận thức. Lo&agrave;i người đ&atilde; để lại những c&ocirc;ng tr&igrave;nh, th&agrave;nh quả nh&acirc;n tạo nhờ v&agrave;o việc hợp t&aacute;c tr&ecirc;n quy m&ocirc; lớn, th&ocirc;ng qua qu&aacute; tr&igrave;nh giao tiếp bằng ng&ocirc;n ngữ v&agrave; trao đổi th&ocirc;ng tin. Dưới ngưỡng 150 c&aacute; thể, con người c&oacute; thể duy tr&igrave; hợp t&aacute;c dựa tr&ecirc;n sự th&acirc;n quen, c&ograve;n tr&ecirc;n ngưỡng đ&oacute;, con người đ&atilde; s&aacute;ng t&aacute;c ra những c&acirc;u chuyện, truyền thuyết v&agrave; tin tưởng v&agrave;o ch&uacute;ng. Những thứ như c&ocirc;ng ty, t&ocirc;n gi&aacute;o, thần linh đều l&agrave; kết quả từ tr&iacute; tưởng tượng của con người, ch&uacute;ng tạo th&agrave;nh c&aacute;i gọi l&agrave; đặc điểm văn h&oacute;a, gi&uacute;p đẩy nhanh qu&aacute; tr&igrave;nh tiến h&oacute;a.</p>\r\n\r\n	<p>_T&igrave;nh dục, n&oacute;i dối v&agrave; tranh hang động: kể về cuộc sống của con người sau C&aacute;ch mạng Nhận thức v&agrave; trước C&aacute;ch mạng N&ocirc;ng nghiệp. C&aacute;c nh&oacute;m Sapiens rất kh&aacute;c nhau về cấu tr&uacute;c x&atilde; hội, gia đ&igrave;nh, niềm tin t&ocirc;n gi&aacute;o. Tuy nhi&ecirc;n, n&oacute;i chung họ sống th&agrave;nh c&aacute;c nh&oacute;m nhỏ, sống x&ecirc; dịch, phụ thuộc v&agrave;o nhiều nguồn thức ăn tự nhi&ecirc;n. Họ c&oacute; kiến thức v&agrave; kĩ năng vượt trội trong m&ocirc;i trường sống của họ. Hiện c&oacute; rất &iacute;t bằng chứng để c&oacute; thể khẳng định về đời sống văn h&oacute;a tinh thần của người tiền sử.</p>\r\n\r\n	<p>_Những kẻ s&aacute;t nh&acirc;n li&ecirc;n lục địa: trong qu&aacute; tr&igrave;nh tỏa ra khắp địa cầu, con người đ&atilde; g&acirc;y ra nhiều thảm họa sinh th&aacute;i, l&agrave;m nhiều lo&agrave;i động vật bản địa tuyệt chủng. T&aacute;c giả đ&atilde; n&ecirc;u ra một phi&ecirc;n t&ograve;a giả tưởng x&eacute;t xử lo&agrave;i Sapiens v&igrave; tội &aacute;c n&agrave;y, v&agrave; tất cả con người đều g&oacute;p phần chịu tr&aacute;ch nhiệm chung.</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 123, 1, 0, 'Lược Sử Về Loài Ngườ1.webp', 'Lược Sử Về Loài Ngườ2.jfif', 'Lược Sử Về Loài Ngườ3.png', '2023-01-08', 0, 3),
(18, 'Lịch Sử Vạn Vật.', 320000, 'Lịch Sử Vạn Vật..jpg', '<p><strong>Lược Sử Vạn Vật</strong></p>\r\n\r\n<p>Lược sử vạn vật l&agrave; cuốn s&aacute;ch phổ biến khoa học tr&igrave;nh b&agrave;y một c&aacute;ch ngắn gọn lịch sử nghi&ecirc;n cứu khoa học tự nhi&ecirc;n, những th&agrave;nh tựu khoa học trong c&aacute;c lĩnh vực khoa học tự nhi&ecirc;n ch&iacute;nh: vật l&yacute;, h&oacute;a học, sinh học, địa chất, thi&ecirc;n văn&hellip; với nhiều t&ecirc;n tuổi, giai thoại v&agrave; sự thật.</p>\r\n\r\n<p>Với cuốn s&aacute;ch n&agrave;y, người đọc sẽ biết được những giới hạn trong tri thức của con người về vũ trụ v&agrave; cả về ch&iacute;nh tr&aacute;i đất. Đ&acirc;y l&agrave; cuốn s&aacute;ch khoa học phổ th&ocirc;ng b&aacute;n chạy nhất nước Anh năm 2005 với hơn 300.000 bản in. Nh&agrave; ph&ecirc; b&igrave;nh người Anh, Craig Brown thậm ch&iacute; đ&atilde; nhận x&eacute;t rằng t&aacute;c phẩm n&agrave;y xứng đ&aacute;ng b&aacute;n được 500.000.000.000 cuốn (theo c&aacute;ch n&oacute;i của ch&iacute;nh Bryson, &quot;bằng với số proton c&oacute; trong một dấu chấm c&acirc;u&quot;).</p>\r\n\r\n<p>William McGuire &quot;Bill&quot; Bryson, t&aacute;c giả cuốn s&aacute;ch Lược sử vạn vật - A Short History of Nearly Everything sinh năm 1951, l&agrave; t&aacute;c giả nổi tiếng h&agrave;ng đầu trong thể loại non-fiction ở Bắc Mỹ, với v&ocirc; số người h&acirc;m mộ tr&ecirc;n khắp thế giới.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n', 111, 1, 0, 'Lịch Sử Vạn Vật.1.jpg', 'Lịch Sử Vạn Vật.2.jpg', 'Lịch Sử Vạn Vật.3.jpg', '2023-11-12', 0, 3),
(19, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.', 255000, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực..jfif', '<ul>\r\n	<li>Cuốn s&aacute;ch Dầu mỏ, Tiền bạc &amp; Quyền lực khắc họa to&agrave;n cảnh lịch sử ng&agrave;nh c&ocirc;ng nghiệp dầu mỏ - cuộc giao tranh gi&agrave;nh quyền lực v&agrave; sự gi&agrave;u c&oacute; xung quanh vấn đề dầu mỏ. Cuộc chiến n&agrave;y đ&atilde; l&agrave;m rung chuyển nền kinh tế to&agrave;n cầu, phản &aacute;nh hậu quả của c&aacute;c cuộc chiến tranh đồng thời thay đổi vận mệnh nh&acirc;n loại n&oacute;i chung v&agrave; c&aacute;c quốc gia n&oacute;i ri&ecirc;ng. Dầu mỏ, Tiền bạc &amp; Quyền lực l&agrave; một bức tranh về lịch sử thế kỷ XX, cũng l&agrave; về ng&agrave;nh c&ocirc;ng nghiệp dầu mỏ. Bức họa khổng lồ n&agrave;y t&aacute;i hiện lịch sử từ khi người ta khoan giếng dầu đầu ti&ecirc;n ở Pennsylvania, trải qua hai cuộc đại chiến, tới khi Iraq x&acirc;m lược Kuwait v&agrave; chiến dịch B&atilde;o t&aacute;p sa mạc. Bối cảnh được mở rộng từ những người liều lĩnh, những kẻ lừa đảo tới những &ocirc;ng vua dầu mỏ, từ cựu Thủ tướng Anh Winston Churchill, v&agrave; quốc vương Saudi Arabia Ibn Saud, tới Tổng thống Mỹ George Bush v&agrave; Saddam Hussein, cựu Tổng thống Iraq. L&agrave; cuốn s&aacute;ch ti&ecirc;u biểu về c&aacute;c vấn đề nhức nhối trong lĩnh vực dầu mỏ, Dầu mỏ, Tiền bạc &amp; Quyền lực cung cấp cho ch&uacute;ng ta những nhận thức cơ bản kh&ocirc;ng chỉ ri&ecirc;ng lĩnh vực n&agrave;y m&agrave; c&ograve;n về thế kỷ của ch&uacute;ng ta.</li>\r\n</ul>\r\n', 123, 0, 0, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.1.jfif', 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.2.jpg', 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.3.jfif', '2023-08-29', 0, 3),
(20, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.', 159500, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới..png', '<ul>\r\n	<li>\r\n	<p><strong>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới</strong></p>\r\n\r\n	<p>Qu&aacute; tr&igrave;nh văn minh phương T&acirc;y vươn tới vị thế thống trị ho&agrave;n cầu l&agrave; một hiện tượng lịch sử đơn lẻ c&oacute; &yacute; nghĩa quan trọng nhất trong v&ograve;ng 5 thế kỉ qua.</p>\r\n\r\n	<p>Bằng c&aacute;ch n&agrave;o phương T&acirc;y vượt qua được những đối thủ phương Đ&ocirc;ng? V&agrave; c&oacute; phải giờ đ&acirc;y phương T&acirc;y kh&ocirc;ng c&ograve;n ở đỉnh cao quyền lực nữa? Sử gia&nbsp;<strong>Niall Ferguson</strong>&nbsp;lập luận rằng bắt đầu v&agrave;o thế kỉ 15, phương T&acirc;y đ&atilde; ph&aacute;t triển s&aacute;u kh&aacute;i niệm mới đầy uy lực - cạnh tranh, khoa học, ph&aacute;p quyền, y học hiện đại, chủ nghĩa ti&ecirc;u d&ugrave;ng v&agrave; đạo l&yacute; nghề nghiệp - cho ph&eacute;p họ vượt qua tất cả c&aacute;c đối thủ cạnh tranh kh&aacute;c.</p>\r\n\r\n	<p>Nhưng giờ đ&acirc;y,&nbsp;<strong>Ferguson</strong>&nbsp;cho thấy phần c&ograve;n lại của thế giới đ&atilde; tiếp thu tất cả c&aacute;c kh&aacute;i niệm m&agrave; phương T&acirc;y từng độc chiếm, trong khi phương T&acirc;y lại đang đ&aacute;nh mất niềm tin v&agrave;o ch&iacute;nh m&igrave;nh. Ghi lại sự hưng thịnh v&agrave; suy t&agrave;n của c&aacute;c đế chế c&ugrave;ng với những cuộc va chạm (v&agrave; giao h&ograve;a) của những nền văn minh,&nbsp;<strong>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới</strong>&nbsp;đ&atilde; đ&uacute;c kết lại lịch sử thế giới, v&agrave; đ&acirc;y được coi l&agrave; cuốn s&aacute;ch xuất sắc nhất của&nbsp;<strong>Niall Ferguson</strong>.</p>\r\n\r\n	<p>C&acirc;u hỏi chủ đạo m&agrave; cuốn s&aacute;ch n&agrave;y đề cập ch&iacute;nh l&agrave; c&acirc;u hỏi l&yacute; th&uacute; nhất m&agrave; một nh&agrave; sử học nghi&ecirc;n cứu về kỷ nguy&ecirc;n hiện đại c&oacute; thể đặt ra. Tại sao bắt đầu từ khoảng những năm 1500, v&agrave;i ba quốc gia nhỏ b&eacute; miền viễn T&acirc;y của li&ecirc;n lục địa &Acirc;u-&Aacute; lại c&oacute; thể nổi l&ecirc;n nắm quyền thống trị phần c&ograve;n lại của thế giới, trong đ&oacute; c&oacute; cả những x&atilde; hội nằm ở ph&iacute;a đ&ocirc;ng lục địa &Acirc;u-&Aacute; vốn đ&ocirc;ng d&acirc;n hơn v&agrave; tinh tế hơn x&eacute;t về nhiều mặt?</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 121, 0, 0, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.1.jpg', 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.2.jpg', 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.3.jpg', '2023-10-23', 0, 3);
INSERT INTO `sanpham` (`id`, `ten_san_pham`, `gia_san_pham`, `img_dai_dien`, `mo_ta_san_pham`, `so_luong`, `da_ban`, `luot_xem`, `img_san_pham1`, `img_san_pham2`, `img_san_pham3`, `ngay_nhap`, `trang_thai`, `iddm`) VALUES
(21, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN', 155000, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN.jpg', '<ul>\r\n	<li>\r\n	<p>Cuộc chiến lỗ đen l&agrave; sự ca tụng tr&iacute; tuệ lo&agrave;i người v&agrave; khả năng tuyệt vời của n&oacute; trong việc kh&aacute;m ph&aacute; c&aacute;c định luật của tự nhi&ecirc;n. Đ&oacute; l&agrave; sự l&yacute; giải về một thế giới ở qu&aacute; xa c&aacute;c gi&aacute;c quan của ch&uacute;ng ta, c&ograve;n xa hơn cả Cơ học lượng tử v&agrave; Thuyết tương đối. Hấp dẫn lượng tử xem x&eacute;t c&aacute;c đối tượng nhỏ hơn h&agrave;ng trăm tỉ tỉ lần so với một pr&ocirc;ton. Ch&uacute;ng ta chưa bao giờ từng trực tiếp tiếp x&uacute;c với những vật nhỏ đến như vậy v&agrave; c&oacute; thể sẽ kh&ocirc;ng bao giờ, nhưng sự kh&eacute;o l&eacute;o của lo&agrave;i người sẽ cho ph&eacute;p ch&uacute;ng ta suy luận ra sự tồn tại của ch&uacute;ng, v&agrave; thật đ&aacute;ng kinh ngạc, cổng v&agrave;o thế giới đ&oacute; lại ch&iacute;nh l&agrave; những vật thể với k&iacute;ch thước v&agrave; khối lượng cực lớn: c&aacute;c lỗ đen.</p>\r\n\r\n	<p>Cuộc chiến lỗ đen cũng l&agrave; một cuốn bi&ecirc;n ni&ecirc;n sử về một kh&aacute;m ph&aacute;. Nguy&ecirc;n l&yacute; to&agrave;n ảnh l&agrave; một trong những kh&aacute;i niệm trừu tượng v&agrave; phi trực gi&aacute;c nhất trong to&agrave;n bộ vật l&yacute; học. Đ&oacute; l&agrave; sự t&iacute;ch tụ của hơn hai thập kỷ đấu tr&iacute; về số phận của th&ocirc;ng tin khi bị rơi v&agrave;o một lỗ đen. Đ&oacute; kh&ocirc;ng phải l&agrave; một cuộc chiến tranh giữa c&aacute;c đối thủ hung h&atilde;n, m&agrave; thực sự ở đ&acirc;y tất cả những người tham chiến chủ yếu đều l&agrave; bạn b&egrave;. Song đ&oacute; l&agrave; một cuộc chiến &aacute;c liệt về những &yacute; tưởng giữa những người t&ocirc;n trọng nhau một c&aacute;ch rất s&acirc;u sắc nhưng cũng bất đồng với nhau kh&ocirc;ng k&eacute;m phần s&acirc;u sắc.</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 111, 0, 0, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN1.jpg', 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN2.jpg', 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN3.jpg', '2023-11-09', 0, 4),
(22, 'BẢN THIẾT KẾ VĨ ĐẠI', 230000, 'BẢN THIẾT KẾ VĨ ĐẠI.jpg', '<ul>\r\n	<li>\r\n	<h2>Giới thiệu s&aacute;ch Khoa Học Kh&aacute;m Ph&aacute; - Bản Thiết Kế Vĩ Đại</h2>\r\n\r\n	<p>Nội dung cuốn s&aacute;ch, như t&aacute;c giả n&oacute;i ngay từ d&ograve;ng đầu ti&ecirc;n của chương một, l&agrave; chuyện &quot;B&iacute; ẩn của kiếp nh&acirc;n sinh&quot;, l&agrave; những c&acirc;u hỏi tối hậu về sự sống, vũ trụ v&agrave; vạn vật: Tại sao phải c&oacute; c&aacute;i g&igrave; đ&oacute; chứ kh&ocirc;ng phải l&agrave; hư kh&ocirc;ng?, Tại sao ch&uacute;ng ta tồn tại?, Tại sao l&agrave; tập hợp c&aacute;c định luật vật l&yacute; cụ thể n&agrave;y chứ kh&ocirc;ng phải c&aacute;c tập hợp kh&aacute;c?</p>\r\n\r\n	<p>Đ&oacute; l&agrave; những c&acirc;u hỏi đ&atilde; từng v&agrave; lu&ocirc;n lu&ocirc;n l&agrave;m tất cả ch&uacute;ng ta xao xuyến, ở mức độ kh&aacute;c nhau, với c&aacute;ch tiếp cận kh&aacute;c nhau v&agrave; trong mức độ hiểu biết kh&aacute;c nhau. Lời giải th&igrave; cũng c&oacute; mu&ocirc;n v&agrave;n, từ c&aacute;c truyền thuyết, c&aacute;c c&acirc;u chuyện cổ t&iacute;ch đến những luận l&yacute; đơn thuần dựa tr&ecirc;n niềm tin v&agrave; c&aacute;c l&yacute; thuyết khoa học được x&acirc;y dựng một c&aacute;ch chặt chẽ.</p>\r\n\r\n	<p>Trong cuốn s&aacute;ch n&agrave;y, Hawking điểm qua tất cả những chặng đường gian nan đ&oacute;, để rồi cuối c&ugrave;ng đi đến một l&yacute; thuyết khả dĩ nhất, được xem l&agrave; ứng vi&ecirc;n duy nhất cho l&yacute; thuyết ho&agrave;n chỉnh về vũ trụ, l&yacute; thuyết- M: đấy ch&iacute;nh l&agrave; l&yacute; thuyết thống nhất m&agrave; Einstein đ&atilde; hy vọng t&igrave;m được.</p>\r\n\r\n	<p>Hawking cũng viết rằng:&nbsp;<em>&quot;Thực tế l&agrave; bản th&acirc;n con người ch&uacute;ng ta- cũng đơn thuần l&agrave; tập hợp c&aacute;c hạt cơ bản của tự nhi&ecirc;n- c&oacute; khả năng đi gần đến hiểu biết về c&aacute;c định luật vũ trụ chi phối ch&uacute;ng ta v&agrave; vũ trụ của ch&uacute;ng ta, đ&atilde; l&agrave; một th&agrave;nh c&ocirc;ng lớn&quot;</em>.</p>\r\n\r\n	<p>V&agrave; t&aacute;c giả tin rằng, ch&uacute;ng ta sẽ t&igrave;m ra bản thiết kế vĩ đại, đặt một dấu son cho cuộc t&igrave;m t&ograve;i cũng rất vĩ đại k&eacute;o d&agrave;i từ hơn 3000 năm nay.</p>\r\n	</li>\r\n</ul>\r\n', 111, 0, 0, 'BẢN THIẾT KẾ VĨ ĐẠI1.jpg', 'BẢN THIẾT KẾ VĨ ĐẠI2.jfif', 'BẢN THIẾT KẾ VĨ ĐẠI3.jpg', '2023-11-11', 0, 4),
(23, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA', 123000, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA.jpg', '<ul>\r\n	<li>\r\n	<p><strong>Khoa Học Kh&aacute;m Ph&aacute; - Hỗn Độn V&agrave; H&agrave;i H&ograve;a</strong></p>\r\n\r\n	<p>C&ugrave;ng với L&yacute; thuyết hỗn độn, t&iacute;nh ngẫu nhi&ecirc;n v&agrave; phi tất định đ&atilde; tr&agrave;n ngập kh&ocirc;ng chỉ trong thế giới hằng ng&agrave;y của ch&uacute;ng ta m&agrave; cả trong thế giới c&aacute;c thi&ecirc;n h&agrave;. V&agrave; sự ph&aacute;t triển của những &yacute; tưởng dẫn tới quan niệm mới đ&oacute; về thế giới đ&atilde; được vạch ra thật r&otilde; r&agrave;ng trong cuốn s&aacute;ch Hỗn độn v&agrave; h&agrave;i h&ograve;a, bằng một ng&ocirc;n ngữ giản dị, th&ocirc;ng qua những v&iacute; dụ được r&uacute;t ra từ vật l&yacute; thi&ecirc;n văn, vật l&yacute; học, sinh học v&agrave; to&aacute;n học.</p>\r\n\r\n	<p>T&aacute;c phẩm được viết đơn giản để ngay cả người kh&ocirc;ng c&oacute; nền tảng kiến thức về kỹ thuật cũng hiểu, v&agrave; đặc biệt d&agrave;nh cho những ai t&ograve; m&ograve; muốn biết kh&ocirc;ng chỉ những điều kỳ lạ mới nhất của khoa học ở thế kỷ XX m&agrave; cả hệ quả triết học v&agrave; thần học của ch&uacute;ng.</p>\r\n\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<th>M&atilde; h&agrave;ng</th>\r\n				<td>8934974188032</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n				<td>NXB Trẻ</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&aacute;c giả</th>\r\n				<td>Trịnh Xu&acirc;n Thuận</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Người Dịch</th>\r\n				<td>Phạm Văn Thiều, Nguyễn Thanh Dương</td>\r\n			</tr>\r\n			<tr>\r\n				<th>NXB</th>\r\n				<td>Trẻ</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Năm XB</th>\r\n				<td>2023</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Ng&ocirc;n Ngữ</th>\r\n				<td>Tiếng Việt</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Trọng lượng (gr)</th>\r\n				<td>669</td>\r\n			</tr>\r\n			<tr>\r\n				<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n				<td>20.5 x 14.5 x 2.5 cm</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Số trang</th>\r\n				<td>628</td>\r\n			</tr>\r\n			<tr>\r\n				<th>H&igrave;nh thức</th>\r\n				<td>B&igrave;a Mềm</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n				<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/khoa-hoc-ky-thuat/khoa-hoc-khac.html?order=num_orders_month\">Top 100 sản phẩm Khoa học kh&aacute;c b&aacute;n chạy của th&aacute;ng</a></td>\r\n			</tr>\r\n			<tr>\r\n				<td colspan=\"2\">\r\n				<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n				<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p><strong>Khoa Học Kh&aacute;m Ph&aacute; - Hỗn Độn V&agrave; H&agrave;i H&ograve;a</strong></p>\r\n\r\n	<p>C&ugrave;ng với L&yacute; thuyết hỗn độn, t&iacute;nh ngẫu nhi&ecirc;n v&agrave; phi tất định đ&atilde; tr&agrave;n ngập kh&ocirc;ng chỉ trong thế giới hằng ng&agrave;y của ch&uacute;ng ta m&agrave; cả trong thế giới c&aacute;c thi&ecirc;n h&agrave;. V&agrave; sự ph&aacute;t triển của những &yacute; tưởng dẫn tới quan niệm mới đ&oacute; về thế giới đ&atilde; được vạch ra thật r&otilde; r&agrave;ng trong cuốn s&aacute;ch Hỗn độn v&agrave; h&agrave;i h&ograve;a, bằng một ng&ocirc;n ngữ giản dị, th&ocirc;ng qua những v&iacute; dụ được r&uacute;t ra từ vật l&yacute; thi&ecirc;n văn, vật l&yacute; học, sinh học v&agrave; to&aacute;n học.</p>\r\n\r\n	<p>T&aacute;c phẩm được viết đơn giản để ngay cả người kh&ocirc;ng c&oacute; nền tảng kiến thức về kỹ thuật cũng hiểu, v&agrave; đặc biệt d&agrave;nh cho những ai t&ograve; m&ograve; muốn biết kh&ocirc;ng chỉ những điều kỳ lạ mới nhất của khoa học ở thế kỷ XX m&agrave; cả hệ quả triết học v&agrave; thần học của ch&uacute;ng.</p>\r\n	</li>\r\n</ul>\r\n', 122, 2, 1, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA1.jpg', 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA2.jpg', 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA3.jpg', '2023-10-11', 0, 4),
(24, ' TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY', 320000, 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY.jpg', '<ul>\r\n	<li>\r\n	<p><strong>Tri Thức Về Vạn Vật - Một Thế Giới Trực Quan Chưa Từng Thấy</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch gồm 6 chương sẽ mang đến cho bạn đọc những trải nghiệm th&uacute; vị bao gồm:</p>\r\n\r\n	<p><strong>KH&Ocirc;NG GIAN &ndash; KH&Aacute;M PH&Aacute; KH&Ocirc;NG GIAN VŨ TRỤ BAO LA</strong></p>\r\n\r\n	<p>Du h&agrave;nh v&agrave; kh&aacute;m ph&aacute; b&iacute; ẩn của vũ trụ từ vụ nổ BigBang tới sự h&igrave;nh th&agrave;nh của c&aacute;c thi&ecirc;n h&agrave;, từ sự ra đời đến c&aacute;i chết của một ng&ocirc;i sao như thế n&agrave;o, c&ugrave;ng t&igrave;m hiểu hệ mặt trời v&agrave; c&aacute;c hoạt động nghi&ecirc;n cứu thi&ecirc;n văn kh&aacute;c. Cuốn s&aacute;ch mang đến kiến thức nền tảng v&agrave; trải nghiệm ch&acirc;n thực như một nh&agrave; du h&agrave;nh qua những h&igrave;nh ảnh đồ họa sắc n&eacute;t, ch&uacute; th&iacute;ch r&otilde; r&agrave;ng cụ thể.</p>\r\n\r\n	<p><strong>TR&Aacute;I ĐẤT &ndash; KH&Aacute;M PH&Aacute; NHỮNG TRI THỨC VỀ TR&Aacute;I ĐẤT TỪ TẬN L&Otilde;I S&Acirc;U</strong></p>\r\n\r\n	<p>C&ugrave;ng bạn rong ruổi c&ugrave;ng trời cuối đất, kh&aacute;m ph&aacute; h&agrave;nh tinh xanh từ cấu tr&uacute;c l&otilde;i tr&aacute;i đất gồm những tầng n&agrave;o đến c&aacute;c mảng kiến tạo tr&ecirc;n bề mặt địa cầu, hiểu về c&aacute;c hiện tượng tự nhi&ecirc;n như B&atilde;o, n&uacute;i lửa phun tr&agrave;o, động đất đến giải đ&aacute;p c&aacute;c b&iacute; ẩn đại dương&hellip;</p>\r\n\r\n	<p><strong>TỰ NHI&Ecirc;N &ndash; TRẢI NGHIỆM NHƯ NHỮNG NH&Agrave; TỰ NHI&Ecirc;N HỌC</strong></p>\r\n\r\n	<p>Giải đ&aacute;p c&acirc;u hỏi qu&aacute; tr&igrave;nh tiến h&oacute;a của c&aacute;c giống lo&agrave;i từ 3,8 tỷ năm trước cho đến hiện tại. T&igrave;m hiểu sự sống khắp h&agrave;nh tinh, từ những đỉnh n&uacute;i cao nhất đến vực thẳm s&acirc;u nhất dưới l&ograve;ng đại dương.</p>\r\n\r\n	<p><strong>CƠ THỂ NGƯỜI &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; GIẢI PHẪU HỌC</strong></p>\r\n\r\n	<p>Cơ thể người l&agrave; một cỗ m&aacute;y phức tạp kỳ diệu, được h&igrave;nh th&agrave;nh từ h&agrave;ng triệu phần kh&aacute;c nhau. Cuốn s&aacute;ch sẽ gi&uacute;p bạn t&igrave;m hiểu từ cấu tr&uacute;c của một tế b&agrave;o nhỏ b&eacute; đến cơ thể người b&igrave;nh thường, qua đ&oacute; hiểu được c&aacute;ch thức hoạt động, cấu tạo cơ thể.</p>\r\n\r\n	<p><strong>KHOA HỌC &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; KHOA HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch giải th&iacute;ch những quy luật ngầm &ndash; nguy&ecirc;n l&yacute; hoạt động chi phối sự vận h&agrave;nh của vạn vật, từ nguy&ecirc;n tử v&agrave; &aacute;nh s&aacute;ng cho tới lực hấp dẫn v&agrave; từ trường. Nhờ đ&oacute; khơi nguồn cảm hứng của ch&uacute;ng ta để tạo ra nhiều loại m&aacute;y m&oacute;c v&agrave; c&ocirc;ng nghệ ng&agrave;y c&agrave;ng hiện đại hơn.</p>\r\n\r\n	<p><strong>LỊCH SỬ - KH&Aacute;M PH&Aacute; NHƯ NH&Agrave; SỬ HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch t&aacute;i hiện những c&acirc;u chuyện lịch sử của nh&acirc;n loại, từ cuộc chiến tranh cổ đại đến những tai họa kinh khủng dẫn tới d&acirc;n tộc diệt vong. Cuốn s&aacute;ch cũng nghi&ecirc;n cứu c&aacute;c th&agrave;nh tựu tiến bộ của lo&agrave;i người về văn h&oacute;a &ndash; c&ocirc;ng nghệ từ thời đồ đ&aacute; đến hiện nay.</p>\r\n\r\n	<table>\r\n		<tbody>\r\n			<tr>\r\n				<th>M&atilde; h&agrave;ng</th>\r\n				<td>8935309503322</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n				<td>Alpha Books</td>\r\n			</tr>\r\n			<tr>\r\n				<th>T&aacute;c giả</th>\r\n				<td>DK</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Người Dịch</th>\r\n				<td>Nhiều Người Dịch</td>\r\n			</tr>\r\n			<tr>\r\n				<th>NXB</th>\r\n				<td>D&acirc;n Tr&iacute;</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Năm XB</th>\r\n				<td>2023</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Ng&ocirc;n Ngữ</th>\r\n				<td>Tiếng Việt</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Trọng lượng (gr)</th>\r\n				<td>500</td>\r\n			</tr>\r\n			<tr>\r\n				<th>K&iacute;ch Thước Bao B&igrave;</th>\r\n				<td>30.1 x 25.2 x 2 cm</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Số trang</th>\r\n				<td>360</td>\r\n			</tr>\r\n			<tr>\r\n				<th>H&igrave;nh thức</th>\r\n				<td>B&igrave;a Cứng</td>\r\n			</tr>\r\n			<tr>\r\n				<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n				<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/khoa-hoc-ky-thuat/khoa-hoc-khac.html?order=num_orders_month\">Top 100 sản phẩm Khoa học kh&aacute;c b&aacute;n chạy của th&aacute;ng</a></td>\r\n			</tr>\r\n			<tr>\r\n				<td colspan=\"2\">\r\n				<p>Gi&aacute; sản phẩm tr&ecirc;n Fahasa.com đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như Phụ ph&iacute; đ&oacute;ng g&oacute;i, ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh,...</p>\r\n\r\n				<p>Ch&iacute;nh s&aacute;ch khuyến m&atilde;i tr&ecirc;n Fahasa.com kh&ocirc;ng &aacute;p dụng cho Hệ thống Nh&agrave; s&aacute;ch Fahasa tr&ecirc;n to&agrave;n quốc</p>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n\r\n	<p><strong>Tri Thức Về Vạn Vật - Một Thế Giới Trực Quan Chưa Từng Thấy</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch gồm 6 chương sẽ mang đến cho bạn đọc những trải nghiệm th&uacute; vị bao gồm:</p>\r\n\r\n	<p><strong>KH&Ocirc;NG GIAN &ndash; KH&Aacute;M PH&Aacute; KH&Ocirc;NG GIAN VŨ TRỤ BAO LA</strong></p>\r\n\r\n	<p>Du h&agrave;nh v&agrave; kh&aacute;m ph&aacute; b&iacute; ẩn của vũ trụ từ vụ nổ BigBang tới sự h&igrave;nh th&agrave;nh của c&aacute;c thi&ecirc;n h&agrave;, từ sự ra đời đến c&aacute;i chết của một ng&ocirc;i sao như thế n&agrave;o, c&ugrave;ng t&igrave;m hiểu hệ mặt trời v&agrave; c&aacute;c hoạt động nghi&ecirc;n cứu thi&ecirc;n văn kh&aacute;c. Cuốn s&aacute;ch mang đến kiến thức nền tảng v&agrave; trải nghiệm ch&acirc;n thực như một nh&agrave; du h&agrave;nh qua những h&igrave;nh ảnh đồ họa sắc n&eacute;t, ch&uacute; th&iacute;ch r&otilde; r&agrave;ng cụ thể.</p>\r\n\r\n	<p><strong>TR&Aacute;I ĐẤT &ndash; KH&Aacute;M PH&Aacute; NHỮNG TRI THỨC VỀ TR&Aacute;I ĐẤT TỪ TẬN L&Otilde;I S&Acirc;U</strong></p>\r\n\r\n	<p>C&ugrave;ng bạn rong ruổi c&ugrave;ng trời cuối đất, kh&aacute;m ph&aacute; h&agrave;nh tinh xanh từ cấu tr&uacute;c l&otilde;i tr&aacute;i đất gồm những tầng n&agrave;o đến c&aacute;c mảng kiến tạo tr&ecirc;n bề mặt địa cầu, hiểu về c&aacute;c hiện tượng tự nhi&ecirc;n như B&atilde;o, n&uacute;i lửa phun tr&agrave;o, động đất đến giải đ&aacute;p c&aacute;c b&iacute; ẩn đại dương&hellip;</p>\r\n\r\n	<p><strong>TỰ NHI&Ecirc;N &ndash; TRẢI NGHIỆM NHƯ NHỮNG NH&Agrave; TỰ NHI&Ecirc;N HỌC</strong></p>\r\n\r\n	<p>Giải đ&aacute;p c&acirc;u hỏi qu&aacute; tr&igrave;nh tiến h&oacute;a của c&aacute;c giống lo&agrave;i từ 3,8 tỷ năm trước cho đến hiện tại. T&igrave;m hiểu sự sống khắp h&agrave;nh tinh, từ những đỉnh n&uacute;i cao nhất đến vực thẳm s&acirc;u nhất dưới l&ograve;ng đại dương.</p>\r\n\r\n	<p><strong>CƠ THỂ NGƯỜI &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; GIẢI PHẪU HỌC</strong></p>\r\n\r\n	<p>Cơ thể người l&agrave; một cỗ m&aacute;y phức tạp kỳ diệu, được h&igrave;nh th&agrave;nh từ h&agrave;ng triệu phần kh&aacute;c nhau. Cuốn s&aacute;ch sẽ gi&uacute;p bạn t&igrave;m hiểu từ cấu tr&uacute;c của một tế b&agrave;o nhỏ b&eacute; đến cơ thể người b&igrave;nh thường, qua đ&oacute; hiểu được c&aacute;ch thức hoạt động, cấu tạo cơ thể.</p>\r\n\r\n	<p><strong>KHOA HỌC &ndash; TRẢI NGHIỆM NHƯ NH&Agrave; KHOA HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch giải th&iacute;ch những quy luật ngầm &ndash; nguy&ecirc;n l&yacute; hoạt động chi phối sự vận h&agrave;nh của vạn vật, từ nguy&ecirc;n tử v&agrave; &aacute;nh s&aacute;ng cho tới lực hấp dẫn v&agrave; từ trường. Nhờ đ&oacute; khơi nguồn cảm hứng của ch&uacute;ng ta để tạo ra nhiều loại m&aacute;y m&oacute;c v&agrave; c&ocirc;ng nghệ ng&agrave;y c&agrave;ng hiện đại hơn.</p>\r\n\r\n	<p><strong>LỊCH SỬ - KH&Aacute;M PH&Aacute; NHƯ NH&Agrave; SỬ HỌC</strong></p>\r\n\r\n	<p>Cuốn s&aacute;ch t&aacute;i hiện những c&acirc;u chuyện lịch sử của nh&acirc;n loại, từ cuộc chiến tranh cổ đại đến những tai họa kinh khủng dẫn tới d&acirc;n tộc diệt vong. Cuốn s&aacute;ch cũng nghi&ecirc;n cứu c&aacute;c th&agrave;nh tựu tiến bộ của lo&agrave;i người về văn h&oacute;a &ndash; c&ocirc;ng nghệ từ thời đồ đ&aacute; đến hiện nay.</p>\r\n	</li>\r\n</ul>\r\n', 113, 1, 0, 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY1.webp', 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY2.jfif', 'TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY3.jpg', '2023-11-15', 0, 4),
(25, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI', 250000, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI.gif', '<ul>\r\n	<li>\r\n	<p><strong>6 Ph&aacute;t Minh L&agrave;m N&ecirc;n Thời Đại</strong></p>\r\n\r\n	<p>Steven Johnson đ&iacute;ch thực l&agrave; chuy&ecirc;n gia bậc thầy của lịch sử &yacute; tưởng. Trong cuốn s&aacute;ch n&agrave;y, &ocirc;ng chỉ tập trung v&agrave;o s&aacute;u c&ocirc;ng nghệ v&agrave; kh&aacute;m ph&aacute; c&aacute;c ph&acirc;n nh&aacute;nh của ch&uacute;ng, cả mặt tốt lẫn kh&ocirc;ng tốt. &Ocirc;ng đ&atilde; tạo ra biểu trưng h&igrave;nh ảnh chim ruồi cho c&aacute;c loại h&igrave;nh ph&aacute;t minh m&agrave; m&igrave;nh quan t&acirc;m: sự đồng tiến h&oacute;a của hoa v&agrave; c&ocirc;n tr&ugrave;ng &ndash; kẻ kh&ocirc;ng mời từ một trật tự s&aacute;ng tạo kh&aacute;c. Cuốn s&aacute;ch n&agrave;y l&agrave; tập hợp đầy đủ những &ldquo;ph&aacute;t minh chim ruồi&rdquo; ho&agrave;n to&agrave;n bất ngờ. S&aacute;u chủ đề được đưa ra l&agrave;: Thủy tinh, L&agrave;m lạnh, &Acirc;m thanh, L&agrave;m sạch, Thời gian, &Aacute;nh s&aacute;ng.</p>\r\n\r\n	<p>C&oacute; những c&acirc;u chuyện nh&agrave; ph&aacute;t minh kh&ocirc;ng nhận ra phạm vi thực sự kh&aacute;m ph&aacute; của m&igrave;nh, như &Eacute;douard-L&eacute;on Scott de Martinville, người v&agrave;o năm 1850 đ&atilde; ph&aacute;t minh ra m&aacute;y k&yacute; &acirc;m nhưng kh&ocirc;ng c&oacute; thiết bị ph&aacute;t lại. &Ocirc;ng tin rằng, ng&agrave;y n&agrave;o đ&oacute; ch&uacute;ng ta sẽ giải mật ch&uacute;ng như c&aacute;ch đọc nốt nhạc. M&aacute;y qu&eacute;t s&oacute;ng si&ecirc;u &acirc;m được ph&aacute;t triển dựa tr&ecirc;n thiết bị t&igrave;m kiếm t&agrave;u đắm Titanic. Nhiều năm sau, c&ocirc;ng nghệ lại kết hợp với ch&iacute;nh s&aacute;ch một con của Trung Quốc để tạo th&agrave;nh sự mất c&acirc;n bằng giới t&iacute;nh khốc liệt trong x&atilde; hội trọng nam. C&aacute;c chủ đề v&agrave; hướng tiếp cận của Johnson được lựa chọn đều g&acirc;y sự kh&acirc;m phục đ&aacute;ng kinh ngạc. Một trong số đ&oacute; l&agrave; chuyện v&agrave;o thập ni&ecirc;n 1850, 1860, cả th&agrave;nh phố Chicago được n&acirc;ng l&ecirc;n bằng k&iacute;ch v&iacute;t để đặt hệ thống ống cống ngầm.</p>\r\n\r\n	<p>Phương ph&aacute;p mạnh bạo n&agrave;y v&ocirc; c&ugrave;ng cần thiết v&igrave; Chicago rất phẳng; kh&ocirc;ng c&oacute; độ dốc tự nhi&ecirc;n để tho&aacute;t nước v&agrave; th&agrave;nh phố, trung t&acirc;m bu&ocirc;n b&aacute;n thịt n&aacute;o nhiệt miền trung t&acirc;y, điều t&aacute;o bạo cần thiết để giải v&acirc;y th&agrave;nh phố khỏi r&aacute;c thải độc hại. Chicago một lần nữa lại xuất hiện ở chương &ldquo;L&agrave;m lạnh&rdquo;: đ&oacute; l&agrave; đường &ocirc; t&ocirc; ray cho xe đ&ocirc;ng lạnh chờ thịt từ đồng bằng đi khắp nước Mỹ. Johnson nhấn mạnh rằng nhiều ph&aacute;t minh kh&ocirc;ng phải l&agrave; kết quả của &ldquo;ph&uacute;t Eureka&rdquo; m&agrave; l&agrave; sự ch&iacute;n muồi của một tiến tr&igrave;nh d&agrave;i bao gồm một mạng lưới c&aacute;c nh&agrave; ph&aacute;t minh v&agrave; doanh nghiệp. &Ocirc;ng đ&atilde; cố xoay xở v&agrave; cuối c&ugrave;ng đ&atilde; t&igrave;m ra c&aacute;ch định nghĩa khoảnh khắc n&agrave;y. Dữ liệu số được truyền dẫn lần đầu ti&ecirc;n năm 1943 qua một đường d&acirc;y mật SIGSALYY được Alan Turing v&agrave; Ph&ograve;ng th&iacute; nghiệm Bell ph&aacute;t triển: Turing l&agrave; một nh&agrave; s&aacute;ng chế thi&ecirc;n t&agrave;i.</p>\r\n\r\n	<p>Đ&acirc;y l&agrave; một cuốn s&aacute;ch ngắn, kh&aacute; dễ đọc, th&uacute; vị v&agrave; đầy th&aacute;ch thức với những điều kỳ diệu mỗi ng&agrave;y quanh ta.</p>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n	</li>\r\n</ul>\r\n', 107, 4, 3, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI1.jfif', '6 PHÁT MINH LÀM NÊN THỜI ĐẠI2.jpg', '6 PHÁT MINH LÀM NÊN THỜI ĐẠI3.gif', '2023-11-20', 0, 4),
(26, 'Việt Nam Sử Lược', 106000, 'Việt Nam Sử Lược.jpg', '<p>Vi&ecirc;̣t Nam sử lược của Tr&acirc;̀n Trọng Kim xu&acirc;́t bản l&acirc;̀n đ&acirc;̀u năm 1920, dựa tr&ecirc;n những nghi&ecirc;n cứu trước đó như Nam sử ti&ecirc;̉u học và Sơ học An Nam sử lược từ những năm 1914 -1917, là b&ocirc;̣ th&ocirc;ng sử vi&ecirc;́t bằng chữ qu&ocirc;́c ngữ đ&acirc;̀u ti&ecirc;n của Vi&ecirc;̣t Nam được soạn theo phương pháp hi&ecirc;̣n đại.</p>\r\n\r\n<p>Với Vi&ecirc;̣t Nam sử lược, sử học Vi&ecirc;̣t Nam l&acirc;̀n đ&acirc;̀u ti&ecirc;n có m&ocirc;̣t c&ocirc;ng trình thoát ly được khỏi l&ocirc;́i chép sử bi&ecirc;n ni&ecirc;n truy&ecirc;̀n th&ocirc;́ng của Trung Qu&ocirc;́c v&ocirc;́n chỉ n&ecirc;u l&ecirc;n từng sự ki&ecirc;̣n ri&ecirc;ng lẻ, rời rạc. Vi&ecirc;̣t Nam sử lược trình bày các di&ecirc;̃n bi&ecirc;́n lịch sử thành m&ocirc;̣t c&acirc;u chuy&ecirc;̣n li&ecirc;n tục và h&acirc;́p d&acirc;̃n, cho người đọc th&acirc;́y được m&ocirc;́i li&ecirc;n lạc nh&acirc;n quả, bi&ecirc;̣n chứng giữa các sự ki&ecirc;̣n xảy ra theo dòng thời gian. Ngoài ra, khác với l&ocirc;́i chép sử của các sử th&acirc;̀n thời phong ki&ecirc;́n thường chỉ chú ý ghi chép hành vi, hoạt đ&ocirc;̣ng của vua chúa quan lại, những cu&ocirc;̣c tranh bá đ&ocirc;̀ vương, Vi&ecirc;̣t Nam sử lược trái lại đã bắt đ&acirc;̀u chú ý nhi&ecirc;̀u đ&ecirc;́n những sự ki&ecirc;̣n li&ecirc;n quan đời s&ocirc;́ng thực t&ecirc;́ của d&acirc;n chúng, sinh hoạt của xã h&ocirc;̣i, phong tục, tín ngưỡng,&hellip; T&acirc;́t cả đ&ecirc;̀u được th&ecirc;̉ hi&ecirc;̣n với m&ocirc;̣t thái đ&ocirc;̣ đi&ecirc;̀m tĩnh, khách quan, và c&ocirc;ng bằng đúng như m&ocirc;̣t sử gia c&acirc;̀n có.</p>\r\n\r\n<p>Từ l&acirc;u đã được coi là tác ph&acirc;̉m&nbsp;s&aacute;ch lịch sử&nbsp;kinh đi&ecirc;̉n của sử học Vi&ecirc;̣t Nam, cũng là cu&ocirc;́n sách đ&ecirc;̉ đời của học giả Tr&acirc;̀n Trọng Kim, Vi&ecirc;̣t Nam sử lược hi&ecirc;̣n v&acirc;̃n là b&ocirc;̣ tín sử ngắn gọn súc tích, d&ecirc;̃ nhớ dễ hi&ecirc;̉u, sinh đ&ocirc;̣ng và h&acirc;́p d&acirc;̃n nh&acirc;́t từ trước đ&ecirc;́n nay. M&ocirc;̣t ki&ecirc;̣t tác lu&ocirc;n c&acirc;̀n được đọc và đọc lại.</p>\r\n\r\n<p><br />\r\nQu&yacute; bạn quan t&acirc;m c&oacute; thể mua&nbsp;s&aacute;ch&nbsp;Việt Nam Sử Lược&nbsp;với ưu đ&atilde;i 15% từ Wiselands.</p>\r\n', 130, 0, 0, 'Việt Nam Sử Lược1.jpg', 'Việt Nam Sử Lược2.webp', 'Việt Nam Sử Lược3.jpg', '2023-11-28', 0, 3),
(27, 'Nhổ củ cải', 10000, 'Nhổ củ cải.jfif', '<p>Giới thiệu t&oacute;m tắt t&aacute;c phẩm:</p>\r\n\r\n<p>&ldquo;<em>Một, hai, ba, n&agrave;o! Một, hai, ba, n&agrave;o!<br />\r\nC&acirc;y củ cải từ từ trồi l&ecirc;n mặt đặt. Một c&acirc;y củ cải khổng lồ!</em>&rdquo;<br />\r\nĐể nhổ được c&acirc;y củ cải khổng lồ, b&eacute; biết phải cần bao nhi&ecirc;u người kh&ocirc;ng? Để biết c&acirc;u chuyện nhổ củ cải vui nhộn thế n&agrave;o, b&eacute; t&igrave;m đọc truyện<strong>&nbsp;Nhổ củ cải</strong>&nbsp;thuộc bộ B&eacute; tập kể chuyện &ndash; Mỗi tuần một c&acirc;u chuyện nh&eacute;.<br />\r\nVới n&eacute;t vẽ tươi mới, hồn nhi&ecirc;n, 52 tập của bộ s&aacute;ch B&Eacute; TẬP KỂ CHUYỆN &ndash; MỖI TUẦN MỘT C&Acirc;U CHUYỆN, tương ứng với 52 tuần trong một năm, gi&uacute;p b&eacute; mỗi tuần đều c&oacute; một c&acirc;u chuyện hấp dẫn để tập kể, qua đ&oacute; học được một b&agrave;i học hay.</p>\r\n', 123, 0, 0, 'Nhổ củ cải1.jpg', 'Nhổ củ cải2.jfif', 'Nhổ củ cải3.jfif', '2023-11-28', 0, 5),
(28, 'Chiếc khăn quàng của hươu nhỏ', 10000, 'Chiếc khăn quàng của hươu nhỏ.jpg', '<p>B&eacute; Tập Kể Chuyện - Chiếc Khăn Qu&agrave;ng Của Hươu Nhỏ</p>\r\n\r\n<p>Dựa theo chương tr&igrave;nh kể chuyện của học sinh tiểu học, c&aacute;c c&acirc;u chuyện được t&oacute;m lược lại, h&igrave;nh ảnh minh họa sinh động. Nội dung s&aacute;ch hướng c&aacute;c em tới những điều hay lẽ phải, gi&aacute;o dục c&aacute;c em những đức t&iacute;nh cần thiết để trở th&agrave;nh người c&ocirc;ng d&acirc;n tốt.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n', 134, 0, 0, 'Chiếc khăn quàng của hươu nhỏ1.jpeg', 'Chiếc khăn quàng của hươu nhỏ2.jfif', 'Chiếc khăn quàng của hươu nhỏ3.jfif', '2023-11-28', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `img_tin_tuc` varchar(255) NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `tieu_de`, `noi_dung`, `img_tin_tuc`, `ngay_dang`, `trang_thai`, `iddm`) VALUES
(1, 'Ra mắt tủ sách kinh tế hưởng ứng Ngày Chuyển đổi số Việt Nam', '<p>Ch&iacute;nh phủ đ&atilde; x&aacute;c định chuyển đổi số l&agrave; xu thế tất yếu v&agrave; l&agrave; giải ph&aacute;p quan trọng để doanh nghiệp Việt Nam n&acirc;ng cao hiệu quả sản xuất kinh doanh, mở rộng thị trường, cắt giảm chi ph&iacute;, th&iacute;ch ứng với bối cảnh mới của nền kinh tế số. Chương tr&igrave;nh hỗ trợ doanh nghiệp chuyển đổi số giai đoạn 2021-2025 của Bộ Kế hoạch v&agrave; Đầu tư thực hiện mục ti&ecirc;u quan trọng l&agrave; n&acirc;ng cao nhận thức, kiến thức về chuyển đổi số cho 100% c&aacute;c doanh nghiệp tr&ecirc;n to&agrave;n quốc&nbsp;</p>\r\n\r\n<p>Hướng tới mục ti&ecirc;u chung đ&oacute;, hưởng ứng Ng&agrave;y Chuyển đổi số Việt Nam 10/10, đồng thời nh&acirc;n ng&agrave;y Doanh nh&acirc;n Việt Nam 13/10, Nh&agrave; xuất bản Trẻ giới thiệu c&aacute;c tựa s&aacute;ch kinh tế đặc sắc, đ&aacute;p ứng nhu cầu của doanh nghiệp thuộc nhiều ng&agrave;nh nghề v&agrave; quy m&ocirc;, từ nh&agrave; khởi nghiệp đến tập đo&agrave;n lớn. Trong đ&oacute;, nhiều tựa s&aacute;ch dịch c&oacute; t&aacute;c giả l&agrave; những CEO, diễn giả nổi tiếng quốc tế, nội dung s&aacute;ch b&aacute;m s&aacute;t phản &aacute;nh những xu hướng lớn của thế giới.</p>\r\n\r\n<p>Với &yacute; tưởng &ldquo;mỗi doanh nghiệp n&ecirc;n c&oacute; tủ s&aacute;ch kinh tế đồng h&agrave;nh theo ti&ecirc;u ch&iacute; gọn nhẹ, dễ đọc v&agrave; ứng dụng thường xuy&ecirc;n&rdquo;, Nh&agrave; xuất bản Trẻ cũng giới thiệu Top 10 s&aacute;ch kinh tế d&agrave;nh cho nhiều đối tượng: Nh&agrave; quản trị, nh&acirc;n sự, bộ phận marketing &ndash; kinh doanh, c&ocirc;ng ty khởi nghiệp&hellip;</p>\r\n', 'banner kinh tế.avif', '2023-11-27', 1, 2),
(2, 'Chờ truyện tranh, hoạt hình và game Việt bùng nổ', '<h2>Họa sĩ Việt c&oacute; thể sống thoải m&aacute;i với việc vẽ truyện tranh. Số lượng người theo đuổi ng&agrave;nh game tăng vọt. Song, bao giờ ng&agrave;nh truyện tranh v&agrave; game Việt Nam b&ugrave;ng nổ vẫn l&agrave; c&acirc;u hỏi.</h2>\r\n\r\n<h2>Kỳ vọng truyện tranh</h2>\r\n\r\n<p>Th&aacute;ng 11 năm ngo&aacute;i, đạo diễn&nbsp;Ng&ocirc; Thanh V&acirc;n&nbsp;c&ocirc;ng bố th&ocirc;ng tin sẽ chuyển thể Long Thần Tướng th&agrave;nh một t&aacute;c phẩm điện ảnh. Dự &aacute;n n&agrave;y mang t&ecirc;n L&ecirc; Nhật Lan, cũng l&agrave; nữ ch&iacute;nh của phim. C&oacute; thể thấy từ dự &aacute;n mong muốn tạo ra h&igrave;nh ảnh nữ anh h&ugrave;ng đầu ti&ecirc;n của phim Việt. Mặc d&ugrave; vậy, t&aacute;c giả Long Thần Tướng l&agrave; &ocirc;ng Nguyễn Kh&aacute;nh Dương cho biết: &ldquo;Khi b&aacute;n bản quyền bao giờ ch&uacute;ng t&ocirc;i cũng giữ lại quyền chuyển thể hoạt h&igrave;nh. Ch&uacute;ng t&ocirc;i rất mong sẽ được chiếu phim hoạt h&igrave;nh Long Thần Tướng&rdquo;.</p>\r\n\r\n<p>&Ocirc;ng Dương cũng cho biết &ocirc;ng c&ugrave;ng bạn b&egrave; c&ograve;n thử nghiệm một v&agrave;i sản phẩm game. Thoạt ti&ecirc;n, họ cũng băn khoăn, liệu độc giả truyện tranh c&oacute; quan t&acirc;m đến sản phẩm game Việt Nam kh&ocirc;ng khi thị trường c&oacute; qu&aacute; nhiều sản phẩm nước ngo&agrave;i. Tuy nhi&ecirc;n, game C&ograve;i to cho vượt, ph&aacute;t h&agrave;nh th&aacute;ng 10.2017, đ&atilde; nhận được sự ch&uacute; &yacute; lớn của cộng đồng. &ldquo;Sau 1 tiếng, game đ&atilde; l&ecirc;n số 1 bảng xếp hạng của app store. Ch&uacute;ng t&ocirc;i l&agrave;m th&igrave; khẳng định người Việt lu&ocirc;n sẵn s&agrave;ng v&agrave; bao dung đ&oacute;n nhận sản phẩm game Việt&rdquo;, &ocirc;ng Dương cho biết. R&otilde; r&agrave;ng, sau th&agrave;nh c&ocirc;ng của bộ truyện tranh Long Thần Tướng, nếu thị trường c&oacute; cả&nbsp;phim điện ảnh&nbsp;v&agrave; phim hoạt h&igrave;nh&nbsp;Long Thần Tướng, cộng th&ecirc;m một game nữa li&ecirc;n quan th&igrave; hệ sinh th&aacute;i h&igrave;nh ảnh n&agrave;y sẽ l&agrave; h&igrave;nh mẫu khả qua</p>\r\n\r\n<p>Cả hai t&aacute;c giả Nguyễn Th&agrave;nh Phong v&agrave; Nguyễn Kh&aacute;nh Dương đều cho biết họ c&oacute; thể thoải m&aacute;i sống bằng nghề. &Ocirc;ng Phong n&oacute;i: &ldquo;T&ocirc;i sống thoải m&aacute;i bằng c&ocirc;ng việc chuy&ecirc;n m&ocirc;n của m&igrave;nh&rdquo;. Trong khi đ&oacute;, &ocirc;ng Dương chia sẻ: &ldquo;Nh&agrave; sản xuất th&igrave; căng thẳng, nhưng ch&uacute;ng t&ocirc;i may mắn c&oacute; sự đ&oacute;n nhận từ cộng đồng. Cuộc sống khả quan v&agrave; tương lai ph&aacute;t triển&rdquo;.</p>\r\n\r\n<p>&Ocirc;ng Đặng Cao Cường, Trưởng ban Bi&ecirc;n tập Comic NXB Kim Đồng, cho biết đơn vị của &ocirc;ng đ&atilde; xuất bản nhiều bộ truyện tranh nổi tiếng. Trong số đ&oacute;, truyện tranh Việt chỉ chiếm 10%, truyện tranh Nhật chiếm tới 70%. Nhưng hợp t&aacute;c quốc tế của NXB Kim Đồng cũng kh&ocirc;ng chỉ b&oacute; gọn trong truyện tranh nữa, m&agrave; cả c&aacute;c c&ocirc;ng ty hoạt h&igrave;nh, doanh nghiệp l&agrave;m sản phẩm từ truyện tranh. Với truyện Việt, hướng x&acirc;y dựng hệ sinh th&aacute;i l&agrave; c&oacute;. Chẳng hạn, Dế m&egrave;n phi&ecirc;u lưu k&yacute; của nh&agrave; văn T&ocirc; Ho&agrave;i đ&atilde; được &ocirc;ng Tạ Huy Long chuyển thể truyện tranh, c&oacute; phi&ecirc;n bản s&aacute;ch tranh, v&agrave; đang được x&acirc;y dựng kịch bản phim hoạt h&igrave;nh. Theo &ocirc;ng Cường: &ldquo;Ph&aacute;t triển hệ sinh th&aacute;i cho c&ocirc;ng nghiệp h&igrave;nh ảnh tại VN l&agrave; xu hướng tất yếu. Nhiều t&aacute;c phẩm gốc c&oacute; th&agrave;nh t&iacute;ch cao nhờ ph&aacute;t triển hệ sinh th&aacute;i&rdquo;.</p>\r\n\r\n<p>&nbsp;\r\n<h2>Chờ b&ugrave;ng nổ hệ sinh th&aacute;i h&igrave;nh ảnh</h2>\r\n</p>\r\n\r\n<p>Gi&aacute;m đốc&nbsp;nghệ thuật&nbsp;H&agrave; Huy Ho&agrave;ng của Dee Dee Animation studio cho biết c&aacute;ch đ&acirc;y 10 năm khi &ocirc;ng quyết định đến Mỹ học về s&aacute;ng tạo h&igrave;nh ảnh, về phim hoạt h&igrave;nh, &ocirc;ng đ&atilde; rất kh&oacute; khăn để thuyết phục bố mẹ. Sau 5 năm, trở về, ch&iacute;nh &ocirc;ng Ho&agrave;ng cũng bất ngờ khi tại VN đ&atilde; c&oacute; một hệ sinh th&aacute;i cơ sở đ&agrave;o tạo cả hoạt h&igrave;nh, video, truyện tranh nở rộ. &ldquo;T&ocirc;i kh&ocirc;ng ngờ được chuyện đấy. Ở Mỹ t&igrave;m kiếm c&ocirc;ng việc như vậy cũng kh&ocirc;ng dễ d&agrave;ng. Nhưng t&ocirc;i thấy, ồ, cơ hội ở VN c&ograve;n nhiều hơn ở Mỹ&rdquo;, &ocirc;ng Ho&agrave;ng n&oacute;i. Sau đ&oacute;, &ocirc;ng Ho&agrave;ng đầu qu&acirc;n cho Dee Dee v&agrave;o thời điểm họ chỉ c&oacute; 6 người. Sau 5 năm, hiện nh&acirc;n sự của Dee Dee đ&atilde; l&agrave; 50 người.</p>\r\n\r\n<p>Dee Dee Animation studio cũng c&oacute; nhiều th&agrave;nh c&ocirc;ng. Phim ngắn T&agrave;n thể: Tiền truyện đ&atilde; dự hơn 60 li&ecirc;n hoan phim quốc tế, nhận giải C&aacute;nh diều bạc năm ngo&aacute;i v&agrave; giải Họa sĩ xuất sắc nhất. Một số t&aacute;c phẩm kh&aacute;c cũng thu h&uacute;t tr&ecirc;n mạng, nhờ đ&oacute;, họ t&igrave;m kiếm được sự ch&uacute; &yacute; từ thị trường quốc tế. &Ocirc;ng H&agrave; Huy Ho&agrave;ng cho biết: &ldquo;C&oacute; nhiều đối t&aacute;c quốc tế t&igrave;m đến hợp t&aacute;c với Dee Dee Animation studio để l&agrave;m cả phần vẽ h&igrave;nh ảnh chuyển động lẫn ph&ocirc;ng nền của phim hoạt h&igrave;nh. Ngay tại VN, ch&uacute;ng t&ocirc;i cũng c&oacute; một series được đ&oacute;n nhận l&agrave; Bi Bo Ben tr&ecirc;n VTV3, hiện đang l&agrave; m&ugrave;a thứ 2. Cơ quan nh&agrave; nước hỗ trợ cũng h&agrave;i l&ograve;ng v&igrave; n&oacute; vừa&nbsp;giải tr&iacute;&nbsp;vừa chuyển tải được c&aacute;c th&ocirc;ng điệp &yacute; nghĩa&rdquo;.</p>\r\n\r\n<p>&Ocirc;ng Ho&agrave;ng cho biết: &ldquo;Đến thời điểm n&agrave;y, hệ sinh th&aacute;i s&aacute;ng tạo h&igrave;nh ảnh truyện tranh ở VN đ&atilde; ph&aacute;t triển đến độ ho&agrave;n to&agrave;n c&oacute; thể b&ugrave;ng nổ bất cứ l&uacute;c n&agrave;o. Những&nbsp;bạn trẻ&nbsp;c&oacute; t&agrave;i năng c&oacute; thể nhờ internet tiếp cận kiến thức m&agrave; c&aacute;ch đ&acirc;y 10 năm, t&ocirc;i rất kh&oacute; tiếp cận&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>TS&nbsp;Nguyễn Thị Thu H&agrave;, Viện Nghi&ecirc;n cứu văn h&oacute;a VICAS, cho biết cần c&oacute; những can thiệp ch&iacute;nh s&aacute;ch để hỗ trợ hệ sinh th&aacute;i h&igrave;nh ảnh ph&aacute;t triển. &ldquo;Quan trọng l&agrave; ch&uacute;ng ta c&oacute; tạo được hệ sinh th&aacute;i h&igrave;nh ảnh hay kh&ocirc;ng, cụ thể ở đ&acirc;y l&agrave; hoạt h&igrave;nh - truyện tranh - tr&ograve; chơi điện tử hay kh&ocirc;ng. Ch&uacute;ng ta cần nh&igrave;n tổng thể để thấy ch&uacute;ng ta yếu về c&aacute;i g&igrave;, yếu về đội ngũ s&aacute;ng tạo hay quản l&yacute;, hay ch&iacute;nh s&aacute;ch hỗ trợ. Từ đ&oacute;, ch&uacute;ng ta thấy ngay cần can thiệp v&agrave;o đ&acirc;u&rdquo;, b&agrave; H&agrave; n&oacute;i.</p>\r\n\r\n<p>&Ocirc;ng Frederic Cros, Gi&aacute;m đốc điều h&agrave;nh P&ocirc;le Image Magelis, chia sẻ về ch&iacute;nh s&aacute;ch để x&acirc;y dựng hệ sinh th&aacute;i c&ocirc;ng nghiệp h&igrave;nh ảnh tại địa phương m&igrave;nh - v&ugrave;ng Angoul&ecirc;me (Ph&aacute;p). Nhiều khu học x&aacute; đ&atilde; được x&acirc;y dựng tại Angoul&ecirc;me, trong đ&oacute; c&oacute; trường quốc gia về tr&ograve; chơi điện tử, trường dạy l&agrave;m phim t&agrave;i liệu, cũng c&oacute; trường chuy&ecirc;n về&nbsp;truyện tranh. &ldquo;Như vậy c&oacute; thể kết nối nguồn nh&acirc;n lực trẻ. Đ&acirc;y l&agrave; những nghề y&ecirc;u cầu tr&igrave;nh độ cao, v&igrave; thế việc đ&agrave;o tạo rất cần thiết&rdquo;, &ocirc;ng Frederic Cros n&oacute;i.</p>\r\n', 'banner truyện tranh.webp', '2023-11-16', 0, 5),
(3, '“Nguyễn Hoàng - Người mở cõi”: Nguồn tư liệu mới nghiên cứu đầy đủ về vị Chúa Tiên - vị chúa Nguyễn đầu tiên', '<p><strong>Bước qua những thăng trầm, những rối ren trong bối cảnh cuộc ph&acirc;n tranh quyền lực, cướp ng&ocirc;i vua, gi&agrave;nh ng&ocirc;i ch&uacute;a diễn ra căng thẳng v&agrave; khốc liệt ở Đ&agrave;ng Ngo&agrave;i, từ miền c&aacute;t trắng &Aacute;i Tử, với tầm nh&igrave;n chiến lược của m&igrave;nh, ch&uacute;a Ti&ecirc;n Nguyễn Ho&agrave;ng đ&atilde; dựa v&agrave;o d&acirc;n, c&oacute; nhiều kế s&aacute;ch khuyến kh&iacute;ch d&acirc;n khai khẩn, cấp n&ocirc;ng cụ, miễn giảm thuế kh&oacute;a, mở rộng bờ c&otilde;i tiến về phương Nam, g&oacute;p phần dựng n&ecirc;n h&igrave;nh h&agrave;i nước Việt. Sử s&aacute;ch triều Nguyễn trước đ&acirc;y đều rất đề cao vai tr&ograve; của ch&uacute;a Nguyễn Ho&agrave;ng, nhưng từ sau năm 1945, việc đ&aacute;nh gi&aacute; về nh&acirc;n vật lịch sử n&agrave;y chưa thống nhất trong giới sử học: giữa c&ocirc;ng v&agrave; tội, giữa chia cắt v&agrave; ph&aacute;t triển đất nước, giữa hận th&ugrave; v&agrave; ơn nghĩa với ch&uacute;a Trịnh - vua L&ecirc;...</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tr&ecirc;n cơ sở tập hợp gần 30 b&agrave;i viết được lựa chọn từ Hội thảo khoa học với chủ đề &ldquo;Quảng Trị - Đất dựng nghiệp của ch&uacute;a Nguyễn Ho&agrave;ng (1558 - 1613)&rdquo; v&agrave; một số b&agrave;i viết đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Huế - Xưa v&agrave; Nay</em>, cuốn s&aacute;ch&nbsp;<strong><em>Nguyễn Ho&agrave;ng - Người mở c&otilde;i</em>&nbsp;</strong>cung cấp nguồn tư liệu v&agrave; nhận thức mới về nh&acirc;n vật lịch sử Nguyễn Ho&agrave;ng.</p>\r\n\r\n<p>Trong lịch sử, c&aacute;c triều đại Việt Nam đều c&oacute; &yacute; thức mở mang l&atilde;nh thổ. Thế kỷ XI, l&atilde;nh thổ Đại Việt mở rộng đến Quảng Trị, phần Biển Đ&ocirc;ng mở rộng đến biển Chămpa. Năm 1306, l&atilde;nh thổ, l&atilde;nh hải mở rộng đến v&ugrave;ng Thừa Thi&ecirc;n - Đ&agrave; Nẵng - Bắc Quảng Nam; năm 1402 mở rộng đến Quảng Ng&atilde;i; năm 1471 mở rộng đến đ&egrave;o C&ugrave; M&ocirc;ng (bắc Ph&uacute; Y&ecirc;n). V&agrave; một dấu mốc quan trọng cho việc mở c&otilde;i về phương Nam đ&oacute; l&agrave; việc nh&agrave; L&ecirc; giao cho Nguyễn Ho&agrave;ng v&agrave;o trấn thủ xứ Thuận H&oacute;a năm 1558 v&agrave; từ đ&acirc;y, c&ocirc;ng cuộc mở c&otilde;i về phương Nam diễn ra li&ecirc;n tục để ch&uacute;ng ta c&oacute; một l&atilde;nh thổ rộng lớn bao gồm cả đất liền, hải đảo ven bờ v&agrave; hai quần đảo Ho&agrave;ng Sa v&agrave; Trường Sa giữa Biển Đ&ocirc;ng như l&atilde;nh thổ Việt Nam hiện nay. Người c&oacute; c&ocirc;ng trong việc mở c&otilde;i về phương Nam l&agrave; Nguyễn Ho&agrave;ng.</p>\r\n\r\n<p>C&oacute; được một Đ&agrave;ng Trong ph&aacute;t triển đủ sức đối đầu với Đ&agrave;ng Ngo&agrave;i nhưng cũng từ đ&oacute; đ&atilde; tạo n&ecirc;n thế đất nước bị chia cắt. Trong nỗi đau bị &aacute;p bức v&agrave; chia cắt đ&oacute;, phong tr&agrave;o T&acirc;y Sơn ra đời đ&atilde; x&oacute;a bỏ ranh giới s&ocirc;ng Gianh, t&aacute;i lập nền thống nhất đất nước. Nhưng mọi sự chuẩn bị để một nước Đại Việt thống nhất v&agrave; thịnh vượng của vua Quang Trung đ&agrave;nh phải dở dang sau khi nh&agrave; vua qua đời khi tuổi chưa đầy 40 (1792). Tr&ecirc;n cơ sở đ&oacute;, 10 năm sau, Nguyễn &Aacute;nh th&agrave;nh lập vương triều Nguyễn (1802), người kế tục sự nghiệp của ch&uacute;a Nguyễn n&agrave;y đ&atilde; ho&agrave;n th&agrave;nh c&ocirc;ng cuộc thống nhất đất nước.</p>\r\n\r\n<p>Để gi&uacute;p bạn đọc hiểu s&acirc;u sắc hơn về ch&uacute;a Ti&ecirc;n Nguyễn Ho&agrave;ng v&agrave; v&ugrave;ng đất Quảng Trị - nơi ch&uacute;a khởi đầu dựng nghiệp mở c&otilde;i, Nh&agrave; xuất bản Ch&iacute;nh trị quốc gia Sự thật xuất bản lần thứ hai cuốn s&aacute;ch&nbsp;<strong><em>Nguyễn Ho&agrave;ng - Người mở c&otilde;i</em></strong>&nbsp;do GS. VSTT. NGND. Phan Huy L&ecirc; v&agrave; PGS.TS. Đỗ Bang đồng chủ bi&ecirc;n, Hội Khoa học Lịch sử tỉnh Thừa Thi&ecirc;n Huế l&agrave; cơ quan tổ chức bản thảo.</p>\r\n\r\n<p>Mặc d&ugrave; cho đến nay vẫn c&ograve;n những tồn nghi chưa được l&agrave;m s&aacute;ng tỏ li&ecirc;n quan đến ch&uacute;a Ti&ecirc;n Nguyễn Ho&agrave;ng nhưng qua nội dung cuốn s&aacute;ch, bạn đọc sẽ phần n&agrave;o hiểu được tương đối đầy đủ về vai tr&ograve; của ch&uacute;a Nguyễn với đất phương Nam như mở đất, x&acirc;y dựng ch&iacute;nh quyền; qu&aacute; tr&igrave;nh x&aacute;c lập chủ quyền, khai th&aacute;c biển đảo; ph&aacute;t triển kinh tế đ&ocirc; thị; đời sống văn h&oacute;a, đối ngoại; nh&acirc;n vật lịch sử&hellip;</p>\r\n\r\n<p>Về những đ&oacute;ng g&oacute;p của ch&uacute;a Nguyễn Ho&agrave;ng đối với c&ocirc;ng cuộc mở c&otilde;i đất phương Nam, c&aacute;c b&agrave;i viết về cơ bản đều thống nhất đ&aacute;nh gi&aacute; tổng qu&aacute;t về c&ocirc;ng lao, cống hiến của ch&uacute;a Ti&ecirc;n Nguyễn Ho&agrave;ng v&agrave; c&aacute;c ch&uacute;a Nguyễn tiếp theo tr&ecirc;n ba kh&iacute;a cạnh:</p>\r\n\r\n<p><em>Một l&agrave;</em>, Nguyễn Ho&agrave;ng l&agrave; người khởi nghiệp, trong một thời gian ngắn đ&atilde; biến đất Thuận H&oacute;a, Quảng Nam th&agrave;nh cơ ngơi, th&agrave;nh b&agrave;n đạp cho to&agrave;n bộ sự nghiệp ph&aacute;t triển của v&ugrave;ng Đ&agrave;ng Trong.</p>\r\n\r\n<p><em>Hai l&agrave;</em>, Nguyễn Ho&agrave;ng đ&atilde; đẩy mạnh sự ph&aacute;t triển về mọi mặt để cho Thuận Quảng vốn l&agrave; một nơi hoang sơ, lạc hậu, nơi bi&ecirc;n viễn xa x&ocirc;i của quốc gia nhanh ch&oacute;ng trở th&agrave;nh một v&ugrave;ng kinh tế - x&atilde; hội ph&aacute;t đạt.</p>\r\n\r\n<p><em>Ba l&agrave;</em>, c&ocirc;ng lao lớn nhất l&agrave; sự nghiệp mở c&otilde;i về phương Nam. Nguyễn Ho&agrave;ng chỉ mới mở đất đến Ph&uacute; Y&ecirc;n, nhưng đ&oacute; l&agrave; bước khởi đầu rất quan trọng để c&aacute;c ch&uacute;a Nguyễn sau đ&oacute; tiếp nối, đến giữa thế kỷ XVIII th&igrave; mở c&otilde;i v&agrave;o đến tận đồng bằng s&ocirc;ng Cửu Long, khi to&agrave;n bộ v&ugrave;ng đất Nam Bộ được s&aacute;p nhập v&agrave;o đất Đ&agrave;ng Trong năm 1757. Đến đ&acirc;y l&atilde;nh thổ của nước Đại Việt bao gồm Đ&agrave;ng Trong v&agrave; Đ&agrave;ng Ngo&agrave;i, về cơ bản gần như l&atilde;nh thổ Việt Nam hiện nay kể cả đất liền, hải đảo ven bờ v&agrave; hai quần đảo Ho&agrave;ng Sa - Trường Sa. C&oacute; thể n&oacute;i, đ&acirc;y l&agrave; mốc x&aacute;c lập l&atilde;nh thổ quốc gia - d&acirc;n tộc của nước Đại Việt - Việt Nam.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, cuốn s&aacute;ch cũng cung cấp những tư liệu mới về v&ugrave;ng đất Quảng Trị, những di t&iacute;ch li&ecirc;n quan đến thời Nguyễn Ho&agrave;ng tr&ecirc;n đất Quảng Trị. Những dấu t&iacute;ch n&agrave;y cho đến nay gần như đ&atilde; bị x&oacute;a nh&ograve;a, đặt ra cho ch&uacute;ng ta cũng như tỉnh Quảng Trị những vấn đề cần l&agrave;m để nhận thức v&agrave; t&ocirc;n vinh thật xứng đ&aacute;ng đối với ch&uacute;a Nguyễn Ho&agrave;ng v&agrave; những người cộng sự th&acirc;n cận của &ocirc;ng.</p>\r\n\r\n<p>Cuốn s&aacute;ch được nghi&ecirc;n cứu, bi&ecirc;n soạn c&ocirc;ng phu, nghi&ecirc;m t&uacute;c, mỗi b&agrave;i viết đ&atilde; ghi lại tương đối to&agrave;n diện về cuộc đời, sự nghiệp v&agrave; những đ&oacute;ng g&oacute;p to lớn của Anh h&ugrave;ng mở c&otilde;i, Danh nh&acirc;n văn h&oacute;a lớn của d&acirc;n tộc. Cuốn s&aacute;ch được xuất bản lần thứ hai tiếp tục l&agrave; t&agrave;i liệu c&oacute; gi&aacute; trị, g&oacute;p phần phục vụ việc nghi&ecirc;n cứu, giảng dạy, học tập, t&igrave;m hiểu về lịch sử d&acirc;n tộc, về những đ&oacute;ng g&oacute;p của c&aacute;c thế hệ lịch sử cũng như của ch&uacute;a Ti&ecirc;n Nguyễn Ho&agrave;ng với v&ugrave;ng đất Quảng Trị, với d&acirc;n tộc. Từ đ&oacute; gi&uacute;p cho c&aacute;n bộ, đảng vi&ecirc;n v&agrave; nh&acirc;n d&acirc;n, đặc biệt l&agrave; con người Quảng Trị - nơi ch&uacute;a Ti&ecirc;n Nguyễn Ho&agrave;ng chọn l&agrave; nơi căn cứ để mở c&otilde;i, c&oacute; th&ecirc;m tư liệu hiểu s&acirc;u sắc về lịch sử đất nước, để kh&ocirc;ng ngừng phấn đấu x&acirc;y dựng qu&ecirc; hương ng&agrave;y c&agrave;ng gi&agrave;u mạnh.</p>\r\n', 'banner chính trị.jfif', '2023-11-16', 0, 1),
(4, 'Hình ảnh đất Việt trong truyện tranh ở châu Âu', '<h2>Những h&igrave;nh ảnh đ&agrave;n &ocirc;ng Việt xưa cầm nỏ để săn bắn, phụ nữ đầu đội khăn đ&oacute;ng lấy nước cho v&agrave;o chum, trẻ em t&oacute;c 3 chỏm vui chơi trong rừng&hellip; xuất hiện trong truyện tranh Sau lũy tre xanh vừa được họa sĩ Vĩnh Khoa từ Bỉ trao tặng Bảo t&agrave;ng Mỹ thuật Đ&agrave; Nẵng</h2>\r\n\r\n<p>Truyện tranh&nbsp;<em>Sau lũy tre xanh</em>&nbsp;thuộc bộ 61 trang gốc&nbsp;truyện tranh&nbsp;do họa sĩ Vĩnh Khoa (Vink) vừa trao tặng Bảo t&agrave;ng Mỹ thuật Đ&agrave; Nẵng. Ngo&agrave;i ra, vợ chồng họa sĩ Vĩnh Khoa c&ograve;n tặng bảo t&agrave;ng th&ecirc;m 20 t&agrave;i liệu phụ v&agrave; 14 cuốn truyện tranh được xuất bản tại Bỉ v&agrave; Th&aacute;i Lan.</p>\r\n\r\n<p>Họa sĩ Vĩnh Khoa sinh ng&agrave;y 24.12.1950 tại TP.Đ&agrave; Nẵng. Sau khi học xong t&uacute; t&agrave;i tại Trường Pascal Đ&agrave; Nẵng, &ocirc;ng theo học b&aacute;o ch&iacute; tại Viện Đại học Vạn Hạnh ở S&agrave;i G&ograve;n, sau đ&oacute; sang Bỉ du học v&agrave;o năm 1969 v&agrave; định cư tại TP.Li&egrave;ge (Bỉ) cho đến nay. &Ocirc;ng ch&iacute;nh thức v&agrave;o nghề mỹ thuật ở độ tuổi 30, với b&uacute;t danh Vink. &Ocirc;ng từng hợp t&aacute;c với&nbsp;<em>Journal Tintin</em>, b&aacute;o d&agrave;nh cho thiếu nhi nổi tiếng ở Bỉ c&ugrave;ng với tờ Spirou. T&aacute;c phẩm tr&igrave;nh l&agrave;ng đầu ti&ecirc;n của &ocirc;ng l&agrave; bộ truyện tranh về cổ t&iacute;ch Việt Nam&nbsp;<em>Derri&egrave;re la haie de bambous (Sau lũy tre xanh)&nbsp;</em>cho&nbsp;<em>Journal Tintin.</em>&nbsp;Năm 1985, họa sĩ Vink khẳng định t&ecirc;n tuổi bằng giải thưởng truyện tranh lớn nhất của Bỉ với bộ truyện&nbsp;<em>Le Moine Fou (Nh&agrave; sư đi&ecirc;n).</em></p>\r\n\r\n<p>Những truyện tranh được&nbsp;họa sĩ Vĩnh Khoa&nbsp;tặng cho bảo t&agrave;ng khiến người xem th&uacute; vị bởi những h&igrave;nh ảnh cổ xưa về đất nước Việt Nam được lồng gh&eacute;p với lời thoại viết bằng tiếng Bỉ. Trong tranh vẽ của m&igrave;nh, họa sĩ c&ograve;n hướng người đọc đến với những h&igrave;nh ảnh th&acirc;n quen của Việt Nam. Như trang 1 của truyện tranh&nbsp;<em>Spirou &Agrave; DaNang</em>&nbsp;được họa sĩ khắc họa một phi thuyền với những nh&acirc;n vật từ ch&acirc;u &Acirc;u đ&aacute;p xuống cầu quay s&ocirc;ng H&agrave;n (TP.Đ&agrave; Nẵng). Trong truyện tranh n&agrave;y, người đọc c&ograve;n bắt gặp phong cảnh n&uacute;i Sơn Tr&agrave;, cầu Thuận Phước, t&agrave;u c&aacute; tr&ecirc;n s&ocirc;ng H&agrave;n&hellip; Theo Bảo t&agrave;ng Mỹ thuật Đ&agrave; Nẵng, đến nay truyện tranh của Vink đ&atilde; được cả ch&acirc;u &Acirc;u biết đến. &Ocirc;ng cũng từng được H&atilde;ng phim Walt Disney mời sang Los Angeles (Mỹ) hợp t&aacute;c trong bộ phim&nbsp;<em>Mulan (Hoa Mộc Lan).</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"https://thanhnien.mediacdn.vn/Uploaded/minhnguyet/2021_11_23/truyen-tranh1-9557.jpg\" /></em></p>\r\n\r\n<p>&ldquo;Năm 2021, Vink quyết định tặng một số t&aacute;c phẩm cho TP.Li&egrave;ge (nơi &ocirc;ng gắn b&oacute; suốt 50 năm) v&agrave; TP.Đ&agrave; Nẵng (nơi &ocirc;ng sinh ra, lớn l&ecirc;n). Đầu th&aacute;ng 2.2021, &ocirc;ng li&ecirc;n lạc với Bảo t&agrave;ng Mỹ thuật Đ&agrave; Nẵng. Hơn 1 th&aacute;ng sau đ&oacute;, 61 trang gốc truyện tranh, 20 t&agrave;i liệu phụ v&agrave; 14 cuốn truyện tranh xuất bản tại Bỉ, Th&aacute;i Lan của &ocirc;ng đ&atilde; được chuyển về bảo t&agrave;ng&rdquo;, b&agrave; Nguyễn Thị Trinh, Ph&oacute; gi&aacute;m đốc&nbsp;Bảo t&agrave;ng Mỹ thuật Đ&agrave; Nẵng, cho biết.</p>\r\n', 'banner truyện.jpeg', '2023-11-16', 0, 5),
(5, 'Đất nước Việt Nam qua các đời của Đào Duy Anh bản hoàn thiện', '<h2>Sau bốn phi&ecirc;n bản đ&atilde; ra mắt, cuốn s&aacute;ch Đất nước Việt Nam qua c&aacute;c đời của t&aacute;c giả Đ&agrave;o Duy Anh (từ lần xuất bản đầu ti&ecirc;n năm 1964 do NXB Khoa học ấn h&agrave;nh), đ&atilde; trở th&agrave;nh một c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu địa l&yacute; học lịch sử VN v&agrave; đ&acirc;y c&ograve;n được xem l&agrave; nguồn tư liệu gi&aacute; trị trong nghi&ecirc;n cứu địa l&yacute; h&agrave;nh ch&iacute;nh, cương vực của nước ta qua c&aacute;c thời kỳ lịch sử.</h2>\r\n\r\n<p>Do c&oacute; sự sao ch&eacute;p, khắc in nhiều lần n&ecirc;n cuốn s&aacute;ch cũng tạo ra một số văn bản kh&aacute;c nhau, đa phần thể hiện trong việc viết l&aacute;ch, c&aacute;ch thức in ấn, năm xuất bản, năm t&aacute;i bản, ph&ocirc;ng chữ, kiểu tr&igrave;nh b&agrave;y, giấy mực, c&aacute;ch đ&oacute;ng s&aacute;ch, bổ sung sửa chữa nội dung, hay những ghi dấu về văn bản như dấu t&agrave;ng thư, đề thức, bản ph&ecirc;, bản hiệu đ&iacute;nh&hellip; Do đ&oacute;, qu&aacute; tr&igrave;nh nghi&ecirc;n cứu đặc điểm kh&aacute;c nhau về phương diện văn bản giữa hai hay nhiều phi&ecirc;n bản để c&oacute; thể x&aacute;c định được thật giả, tốt xấu của mỗi văn bản cũng l&agrave; vấn đề kh&aacute; l&yacute; th&uacute; v&agrave; hấp dẫn. Trong số 4 phi&ecirc;n bản đ&atilde; in, điều bất ngờ ở t&aacute;c phẩm n&agrave;y c&oacute; một bản chữ H&aacute;n do Chung D&acirc;n Nham dịch tr&ecirc;n bản in năm 1964, xuất bản ở Trung Quốc v&agrave;o năm 1973, trở th&agrave;nh một trong số &iacute;t t&aacute;c phẩm của t&aacute;c giả VN xuất bản tại Trung Quốc, chứng tỏ c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu n&agrave;y của học giả Đ&agrave;o Duy Anh kh&ocirc;ng chỉ ở ri&ecirc;ng nước ta m&agrave; c&ograve;n được giới học giả nước bạn đ&aacute;nh gi&aacute; rất cao.</p>\r\n\r\n<p><a href=\"https://thanhnien.vn/van-hoa/chay-hang-sach-su-viet-849376.html\" target=\"_blank\"><img src=\"https://thanhnien.mediacdn.vn/Uploaded/minhnguyet/2017_06_26/suviet_XKXR.jpg\" /></a></p>\r\n\r\n<p>GS-TS Nguyễn Quang Ngọc nhận x&eacute;t: &ldquo;Đất nước Việt Nam qua c&aacute;c đời l&agrave; c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu đầy đủ v&agrave; hệ thống hơn cả về đất nước VN của giới nghi&ecirc;n cứu địa l&yacute; học lịch sử VN thế kỷ 20. Đất nước Việt Nam qua c&aacute;c đời kh&ocirc;ng chỉ l&agrave; c&ocirc;ng tr&igrave;nh vừa c&oacute; t&iacute;nh tổng hợp, tổng kết, m&agrave; c&ograve;n chuẩn bị v&agrave; vạch hướng cho tương lai ph&aacute;t triển của địa l&yacute; học lịch sử VN. Gi&aacute;o sư Đ&agrave;o Duy Anh, v&igrave; thế phải được coi l&agrave; nh&agrave; địa l&yacute; học lịch sử ti&ecirc;u biểu v&agrave; nổi bật nhất ở thế kỷ 20. &Ocirc;ng cũng ch&iacute;nh l&agrave; người đắp m&oacute;ng x&acirc;y nền cho m&ocirc;n địa l&yacute; học lịch sử VN hiện đại&rdquo;.</p>\r\n\r\n<p>C&ograve;n TS Trần Trọng Dương th&igrave; cho rằng: &ldquo;Xuất bản cuốn s&aacute;ch kinh điển về địa l&yacute; học lịch sử Đất nước Việt Nam qua c&aacute;c đời, Đ&agrave;o Duy Anh trở th&agrave;nh người được nhắc đến nhiều nhất bởi &ocirc;ng đ&atilde; đặt một vi&ecirc;n gạch quan trọng cho chuy&ecirc;n ng&agrave;nh khoa học cơ bản, vừa cao sang vừa hẻo l&aacute;nh v&agrave; &ldquo;k&eacute;n người&rdquo; ấy&rdquo;.</p>\r\n\r\n<p>S&aacute;ch Đất nước Việt Nam qua c&aacute;c đời do Nguyễn Trọng Đ&ocirc;ng khảo cứu v&agrave; bổ ch&uacute;, Omega v&agrave; NXB Khoa học x&atilde; hội vừa ra mắt độc giả, l&agrave; bản ho&agrave;n thiện nhất cho đến thời điểm hiện nay.</p>\r\n', 'banner lịch sử.jpg', '2023-11-16', 0, 3),
(6, 'Sách khoa học', '<h2><a href=\"https://thanhnien.vn/it-sach-khoa-hoc-cho-nguoi-viet-185455989.htm\">&Iacute;t s&aacute;ch khoa học cho người Việt</a></h2>\r\n\r\n<p>Tại buổi tọa đ&agrave;m về Th&oacute;i quen đọc s&aacute;ch khoa học v&agrave;o s&aacute;ng 19.3 tại TP.HCM do Đ&ocirc;ng A Books tổ chức, &ocirc;ng Đỗ Ho&agrave;ng Sơn - Gi&aacute;m đốc C&ocirc;ng ty s&aacute;ch Long Minh cho biết &ocirc;ng rất buồn v&igrave; khi đi khảo s&aacute;t tại c&aacute;c nh&agrave; s&aacute;ch thấy rất &iacute;t s&aacute;ch khoa học cho cả người lớn v&agrave; trẻ em.</p>\r\n', 'banner khoa học.jpg', '2023-11-27', 0, 4),
(7, 'Liên tục tái bản sách lịch sử cho thiếu nhi', '<h2>Theo t&aacute;c giả KTS Đo&agrave;n Bắc, trong th&aacute;ng 3 n&agrave;y NXB Kim Đồng sẽ t&aacute;i bản cuốn Tổ quốc nơi đầu s&oacute;ng - cuốn s&aacute;ch được coi l&agrave; &ldquo;vỡ l&ograve;ng&rdquo; về biển đảo cho trẻ. Cuốn s&aacute;ch mới được ra mắt hồi cuối th&aacute;ng 1 v&agrave; đ&atilde; mau ch&oacute;ng &ldquo;ch&aacute;y&rdquo; tr&ecirc;n c&aacute;c kệ s&aacute;ch.</h2>\r\n\r\n<p>Đ&acirc;y l&agrave; t&aacute;c phẩm được bi&ecirc;n soạn như một cuốn lịch sử phổ th&ocirc;ng cho trẻ em, trong đ&oacute; chứa những c&acirc;u chuyện biển đảo từ truyền thuyết, trong cổ sử đến sử hiện đại. Theo &ocirc;ng Bắc, việc t&aacute;c phẩm mau ch&oacute;ng được t&aacute;i bản cho thấy nhu cầu s&aacute;ch lịch sử của trẻ em c&oacute; thật.</p>\r\n\r\n<p>C&ugrave;ng với việc t&aacute;i bản&nbsp;<em>Tổ quốc nơi đầu s&oacute;ng</em>, trong đợt n&agrave;y, NXB Kim Đồng cũng đồng loạt t&aacute;i bản nhiều đầu s&aacute;ch lịch sử cho thiếu nhi kh&aacute;c như&nbsp;<em>Đội thiếu ni&ecirc;n t&igrave;nh b&aacute;o B&aacute;t Sắt, Đội thiếu ni&ecirc;n du k&iacute;ch Đ&igrave;nh Bảng, Đội thiếu ni&ecirc;n du k&iacute;ch th&agrave;nh Huế&nbsp;</em>v&agrave; tiểu thuyết lịch sử&nbsp;<em>Huyền Tr&acirc;n C&ocirc;ng ch&uacute;a</em>. Đ&acirc;y đều l&agrave; những cuốn s&aacute;ch gi&uacute;p c&aacute;c em hiểu biết lịch sử đ&atilde; được t&aacute;i bản nhiều lần. Chẳng hạn, đ&acirc;y l&agrave; lần xuất bản thứ 5 của&nbsp;<em>Huyền Tr&acirc;n C&ocirc;ng ch&uacute;a</em>, lần xuất bản thứ 8 của<em>&nbsp;Đội thiếu ni&ecirc;n t&igrave;nh b&aacute;o B&aacute;t Sắt</em>.</p>\r\n', 'Việt Nam Sử Lược.jpg', '2023-11-26', 0, 3);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

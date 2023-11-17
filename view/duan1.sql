-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2023 lúc 08:09 AM
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
(1, 'hihi', 1, 1, '2023-11-15'),
(2, 'noidung', 1, 1, '2023-11-15'),
(3, 'noidung', 2, 2, '2023-11-15'),
(4, 'noidung', 1, 2, '2023-11-15'),
(5, 'noidung', 3, 2, '2023-11-15'),
(6, 'noidung', 4, 1, '2023-11-15'),
(7, 'noidung', 1, 2, '2023-11-15'),
(8, 'noidung', 4, 2, '2023-11-15'),
(9, 'noidung', 5, 1, '2023-11-15'),
(10, 'noidung', 5, 2, '2023-11-15'),
(11, 'noidung', 4, 2, '2023-11-15'),
(12, 'noidung', 4, 1, '2023-11-15'),
(13, 'noidung', 3, 1, '2023-11-15'),
(14, 'noidung', 3, 1, '2023-11-15'),
(15, 'noidung', 2, 1, '2023-11-15'),
(16, 'noidung', 2, 2, '2023-11-15'),
(17, 'noidung', 4, 1, '2023-11-15'),
(18, 'noidung', 2, 2, '2023-11-15'),
(19, '123', 1, 1, '2023-11-15'),
(20, '123', 1, 1, '2023-11-15');

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
(1, 'noidung', 'tải xuống.png', 0),
(2, 'Khoa học', 'tải xuống (1).jfif', 0),
(3, 'Kinh doanh', '4b7c037158f13312857b6d201802771e.jpg', 0),
(4, 'Truyện tranh ', 'tải xuống.png', 0),
(5, 'Doraemon', '4b7c037158f13312857b6d201802771e.jpg', 0),
(6, 'Conan', 'tải xuống (2).jfif', 0),
(7, 'Dragonbal suober', 'tải xuống.png', 0),
(8, 'Tom and jerry ', 'tải xuống.png', 0),
(9, 'shin cau be but chi', '', 1),
(10, '7 vien ngoc rong a moi sua', '', 1),
(11, 'cổ trang', 'tải xuống.jfif', 0);

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
  `sdt_khach_hang` varchar(11) NOT NULL,
  `dia_chi_khach_hang` text NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten_khach_hang`, `ten_dang_nhap`, `mat_khau`, `img_khach_hang`, `email_khach_hang`, `sdt_khach_hang`, `dia_chi_khach_hang`, `trang_thai`) VALUES
(1, 'khach hang 1', '1', '1', 'macdinh.png', '1', '1', '1', 0),
(2, 'khach hang 2', '2', '2', 'macdinh.png', '2', '2', '2', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id` int(11) NOT NULL,
  `ma_khuyen_mai` varchar(255) NOT NULL,
  `phan_tram_phuyen_mai` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL DEFAULT current_timestamp(),
  `ngay_ket_thuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id`, `ma_khuyen_mai`, `phan_tram_phuyen_mai`, `ngay_bat_dau`, `ngay_ket_thuc`) VALUES
(1, '12345', 10, '2023-11-15', '2023-11-19'),
(2, '54321', 20, '2023-11-15', '2023-11-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logo`
--

INSERT INTO `logo` (`id`, `img`) VALUES
(1, 'macdinh.png');

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
(2, 'Nguyễn Thế Anh', 'nta', '202cb962ac59075b964b07152d234b70', 'macdinh.png', 'nta@gmail.com', '0348022004', 0, 2);

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
(1, 'san pham 1', 100000, 'macdinh.png', '<p>khong c&oacute; m&ocirc; tả</p>\r\n', 12, 0, 0, 'tải xuống.png', 'macdinh.png', 'tải xuống.jfif', 0, 5),
(2, 'san pham2', 123000, '4b7c037158f13312857b6d201802771e.jpg', '<p>khong c&oacute;</p>\r\n', 12, 0, 0, 'tải xuống.png', 'tải xuống.jfif', '4b7c037158f13312857b6d201802771e.jpg', 0, 5),
(3, 'doraemon', 1200, 'tải xuống.jfif', '<p>sản phẩm doraemon</p>\r\n', 15, 0, 0, 'tải xuống.png', 'macdinh.png', '4b7c037158f13312857b6d201802771e.jpg', 0, 5),
(4, 'doraemon tập 1 ', 12000, 'tải xuống.jfif', '<p>add_sanpham($tensanpham, $giasanpham, $anhdaidien, $mota, $soluongsanpham, $anh1, $anh2, $anh3, $iddm)</p>\r\n\r\n<p>add_sanpham($tensanpham, $giasanpham, $anhdaidien, $mota, $soluongsanpham, $anh1, $anh2, $anh3, $iddm)</p>\r\n\r\n<p>add_sanpham($tensanpham, $giasanpham, $anhdaidien, $mota, $soluongsanpham, $anh1, $anh2, $anh3, $iddm)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>add_sanpham($tensanpham, $giasanpham, $anhdaidien, $mota, $soluongsanpham, $anh1, $anh2, $anh3, $iddm)</p>\r\n', 123, 0, 0, 'tải xuống.png', 'macdinh.png', '4b7c037158f13312857b6d201802771e.jpg', 0, 5),
(5, 'do re mon', 120000, '4b7c037158f13312857b6d201802771e.jpg', '<p>&nbsp;</p>\r\n\r\n<p>heheheheeh</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n', 123, 0, 0, 'tải xuống.png', 'macdinh.png', 'tải xuống.jfif', 0, 5);

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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

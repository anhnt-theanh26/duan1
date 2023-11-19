-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2023 lúc 04:28 AM
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
(1, 'banner 1 new update', 'tải xuống.png', '', 1),
(2, 'banner 2', '4b7c037158f13312857b6d201802771e.jpg', '', 1),
(3, 'banner 3', 'tải xuống.png', '', 0),
(5, 'banner 5', 'tải xuống.jfif', '', 0);

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
(3, 'noidung', 2, 2, '2023-11-15'),
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
(28, '<=3', 2, 3, '2023-11-18'),
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
(70, '<3', 21, 4, '2023-11-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `id_hd` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Tin học', 'tải xuống (2).jfif', 0),
(2, 'Khoa học', 'tải xuống.jfif', 0),
(3, 'Kinh doanh', '4b7c037158f13312857b6d201802771e.jpg', 0),
(4, 'Truyện tranh ', 'tải xuống (1).jfif', 0),
(5, 'Doraemon', 'tải xuống (2).jfif', 0),
(6, 'Conan', 'macdinh.png', 0),
(7, 'Dragonbal', 'tải xuống.jfif', 0),
(8, 'Tom and jerry', 'tải xuống.png', 0),
(9, 'shin cau be but chi', 'tải xuống (2).jfif', 0),
(10, '7 vien ngoc rong a moi sua', 'tải xuống.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_kh` int(11) NOT NULL,
  `id_km` int(11) NOT NULL,
  `ngay_dat` date NOT NULL DEFAULT current_timestamp(),
  `tong_tien` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'khach hang 1', 'kh1', 'd41d8cd98f00b204e9800998ecf8427e', 'macdinh.png', '12345@gmail.com', '1', '1', 0),
(2, 'khach hang 2', 'kh2', 'd41d8cd98f00b204e9800998ecf8427e', 'macdinh.png', '12345@gmail.com', '2', '2', 0),
(3, 'khách hàng3', 'kh3', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '12345@gmail.com', '1', '1', 0),
(4, 'khách hàng 4', 'kh4', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '1@gmail.com', '0123456789', '1', 0),
(5, 'khách hàng5', 'kh5', '202cb962ac59075b964b07152d234b70', 'macdinh.png', '1@gmail.com', '1', '1', 0);

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
(2, '20%', 20, '2023-11-15', '2023-11-20', 0),
(3, '20%', 20, '2023-11-01', '2023-12-16', 0),
(4, '20%', 20, '2023-11-30', '2023-11-01', 0);

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
(1, 'tải xuống.png');

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
(1, 'san pham 1', 100000, 'macdinh.png', 'khong có mô tả', 12, 0, 0, 'macdinh.png', 'macdinh.png', 'macdinh.png', 0, 5),
(2, 'san pham2', 123000, '4b7c037158f13312857b6d201802771e.jpg', 'khong có', 12, 0, 0, '4b7c037158f13312857b6d201802771e.jpg', '4b7c037158f13312857b6d201802771e.jpg', '4b7c037158f13312857b6d201802771e.jpg', 0, 1),
(12, 'Kinh tế vĩ mô', 99000, 'tải xuống.jfif', '<p>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a></p>\r\n', 54, 0, 0, 'tải xuống.jfif', 'tải xuống (1).jfif', 'tải xuống (2).jfif', 0, 2),
(13, 'Chiến tranh tiền tệ', 98500, 'tải xuống.png', '<p>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a></p>\r\n', 90, 0, 0, 'tải xuống.png', 'tải xuống.jfif', 'tải xuống (2).jfif', 0, 2);
INSERT INTO `sanpham` (`id`, `ten_san_pham`, `gia_san_pham`, `img_dai_dien`, `mo_ta_san_pham`, `so_luong`, `da_ban`, `luot_xem`, `img_san_pham1`, `img_san_pham2`, `img_san_pham3`, `trang_thai`, `iddm`) VALUES
(14, 'Từ tốt đến vĩ đại', 78000, 'tải xuống (1).jfif', '<p>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a></p>\r\n', 97, 0, 0, 'tải xuống (2).jfif', 'tải xuống (3).jfif', 'tải xuống.jfif', 0, 2),
(15, 'Kinh tế học đổi mới', 59000, 'tải xuống.png', '<p>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a>Phải tr&aacute;i đ&uacute;ng sai<a href=\"https://danhgiatot.vn/sach-chinh-tri\" target=\"_blank\"><img alt=\"Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a><a href=\"https://danhgiatot.vn\" target=\"_blank\"><img alt=\"This article is referenced content from https://danhgiatot.vn - Top 8 cuốn sách chính trị hay và có tầm ảnh hưởng lớn nhất\" src=\"https://danhgiatot.vn/px.gif?utm_source=dmca_copy&amp;utm_medium=Top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t&amp;utm_campaign=https://danhgiatot.vn/sach-chinh-tri&amp;utm_content=B%E1%BA%A1n%20quan%20t%C3%A2m%20%C4%91%E1%BA%BFn%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20v%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20mu%E1%BB%91n%20c%C3%B3%20m%E1%BB%99t%20c%C3%A1i%20nh%C3%ACn%20kh%C3%A1i%20qu%C3%A1t,%20to%C3%A0n%20di%E1%BB%87n%20v%E1%BB%81%20c%C3%A1c%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20ch%C3%ADnh%20tr%E1%BB%8B%20v%C3%A0%20x%C3%A3%20h%E1%BB%99i%20tr%C3%AAn%20th%E1%BA%BF%20gi%E1%BB%9Bi.%20Sau%20%C4%91%C3%A2y%20l%C3%A0%20top%208%20cu%E1%BB%91n%20s%C3%A1ch%20ch%C3%ADnh%20tr%E1%BB%8B%20hay%20v%C3%A0%20c%C3%B3%20t%E1%BA%A7m%20%E1%BA%A3nh%20h%C6%B0%E1%BB%9Fng%20l%E1%BB%9Bn%20nh%E1%BA%A5t%20%C4%91%C6%B0%E1%BB%A3c%20r%E1%BA%A5t%20nhi%E1%BB%81u%20ng%C6%B0%E1%BB%9Di%20y%C3%AAu%20th%C3%ADch.%20%5B%E2%80%A6%5D%0A\" style=\"height:1px; width:1px\" /></a></p>\r\n', 57, 0, 0, 'tải xuống.jfif', 'tải xuống.png', 'macdinh.png', 0, 2),
(16, 'Đại Việt Sử Ký Toàn Thư', 150000, 'tải xuống.png', '<ul>\r\n	<li>Đại Việt&nbsp;<strong>Sử</strong>&nbsp;K&yacute; To&agrave;n Thư</li>\r\n	<li>Đại Việt&nbsp;<strong>Sử</strong>&nbsp;K&yacute; To&agrave;n Thư</li>\r\n	<li>Đại Việt&nbsp;<strong>Sử</strong>&nbsp;K&yacute; To&agrave;n Thư</li>\r\n	<li>Đại Việt&nbsp;<strong>Sử</strong>&nbsp;K&yacute; To&agrave;n Thư</li>\r\n	<li>Đại Việt&nbsp;<strong>Sử</strong>&nbsp;K&yacute; To&agrave;n Thư</li>\r\n	<li>Đại Việt&nbsp;<strong>Sử</strong>&nbsp;K&yacute; To&agrave;n Thư</li>\r\n</ul>\r\n', 132, 0, 0, 'tải xuống.jfif', 'tải xuống.png', 'tải xuống (1).jfif', 0, 3),
(17, 'Sapiens: Lược Sử Về Loài Người.', 200000, 'tải xuống.jfif', '<ul>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n	<li>Sapiens: Lược&nbsp;<strong>Sử Về</strong>&nbsp;Lo&agrave;i Người.</li>\r\n</ul>\r\n', 123, 0, 0, 'tải xuống.jfif', 'tải xuống.jfif', 'tải xuống.jfif', 0, 3),
(18, 'Lịch Sử Vạn Vật.', 320000, 'tải xuống.png', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n	<li><strong>Lịch Sử</strong>&nbsp;Vạn Vật.</li>\r\n</ul>\r\n', 111, 0, 0, 'tải xuống.png', 'tải xuống.png', 'tải xuống.png', 0, 3),
(19, 'Dầu Mỏ, Tiền Bạc Và Quyền Lực.', 255000, 'tải xuống.jfif', '<ul>\r\n	<li>Dầu Mỏ, Tiền Bạc V&agrave; Quyền Lực.</li>\r\n	<li>Dầu Mỏ, Tiền Bạc V&agrave; Quyền Lực.</li>\r\n	<li>Dầu Mỏ, Tiền Bạc V&agrave; Quyền Lực.</li>\r\n	<li>Dầu Mỏ, Tiền Bạc V&agrave; Quyền Lực.</li>\r\n	<li>Dầu Mỏ, Tiền Bạc V&agrave; Quyền Lực.</li>\r\n</ul>\r\n', 123, 0, 0, 'tải xuống.jfif', 'tải xuống.jfif', 'tải xuống.jfif', 0, 3),
(20, 'Văn Minh Phương Tây Và Phần Còn Lại Của Thế Giới.', 159500, 'tải xuống.png', '<ul>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n	<li>Văn Minh Phương T&acirc;y V&agrave; Phần C&ograve;n Lại Của Thế Giới.</li>\r\n</ul>\r\n', 121, 0, 0, 'tải xuống.png', 'tải xuống.png', 'tải xuống.png', 0, 3),
(21, 'KHOA HỌC KHÁM PHÁ - CUỘC CHIẾN LỖ ĐEN', 155000, 'tải xuống.png', '<ul>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-cuoc-chien-lo-den\">KHOA HỌC KH&Aacute;M PH&Aacute; - CUỘC CHIẾN LỖ ĐEN</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-cuoc-chien-lo-den\">KHOA HỌC KH&Aacute;M PH&Aacute; - CUỘC CHIẾN LỖ ĐEN</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-cuoc-chien-lo-den\">KHOA HỌC KH&Aacute;M PH&Aacute; - CUỘC CHIẾN LỖ ĐEN</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-cuoc-chien-lo-den\">KHOA HỌC KH&Aacute;M PH&Aacute; - CUỘC CHIẾN LỖ ĐEN</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-cuoc-chien-lo-den\">KHOA HỌC KH&Aacute;M PH&Aacute; - CUỘC CHIẾN LỖ ĐEN</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-cuoc-chien-lo-den\">KHOA HỌC KH&Aacute;M PH&Aacute; - CUỘC CHIẾN LỖ ĐEN</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 111, 0, 0, 'tải xuống.jfif', 'tải xuống.png', 'tải xuống (3).jfif', 0, 4),
(22, 'BẢN THIẾT KẾ VĨ ĐẠI', 230000, 'tải xuống.png', '<ul>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#ban-thiet-ke-vi-dai\">BẢN THIẾT KẾ VĨ ĐẠI</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 111, 0, 0, 'tải xuống.png', 'tải xuống.png', 'tải xuống.jfif', 0, 4),
(23, 'KHOA HỌC KHÁM PHÁ - HỖN ĐỘN VÀ HÀI HÒA', 123000, 'tải xuống.png', '<ul>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#khoa-hoc-kham-pha-hon-don-va-hai-hoa\">KHOA HỌC KH&Aacute;M PH&Aacute; - HỖN ĐỘN V&Agrave; H&Agrave;I H&Ograve;A</a></li>\r\n</ul>\r\n', 123, 0, 0, 'tải xuống.jfif', 'tải xuống (3).jfif', 'tải xuống (1).jfif', 0, 4),
(24, ' TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY', 320000, 'tải xuống.png', '<ul>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#tri-thuc-ve-van-vat-mot-the-gioi-truc-quan-chua-tung-thay\">TRI THỨC VỀ VẠN VẬT - MỘT THẾ GIỚI TRỰC QUAN CHƯA TỪNG THẤY</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 112, 0, 0, 'tải xuống.png', 'tải xuống.jfif', 'tải xuống.png', 0, 4),
(25, '6 PHÁT MINH LÀM NÊN THỜI ĐẠI', 250000, 'tải xuống.png', '<ul>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li><a href=\"https://newshop.vn/tin-tuc/diem-danh-10-cuon-sach-ve-khoa-hoc-xuat-sac-nhat-ma-ban-nen-doc-id984.html#6-phat-minh-lam-nen-thoi-dai\">6 PH&Aacute;T MINH L&Agrave;M N&Ecirc;N THỜI ĐẠI</a></li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 112, 0, 0, 'tải xuống (1).jfif', 'macdinh.png', 'tải xuống (2).jfif', 0, 4);

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
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

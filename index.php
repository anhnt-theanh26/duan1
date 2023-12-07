<?php
session_start();
ob_start();

include 'model/binhluan.php';
include 'model/danhmuc.php';
include 'model/hoadon.php';
include 'model/khachhang.php';
include 'model/khuyenmai.php';
include 'model/logo_banner.php';
include 'model/nguoidung.php';
include 'model/pdo.php';
include 'model/sanpham.php';
include 'model/taikhoan.php';
include 'model/thongke.php';
include 'model/tintuc.php';

include 'controller/binhluan.php';
include 'controller/danhmuc.php';
include 'controller/hoadon.php';
include 'controller/khachhang.php';
include 'controller/khuyenmai.php';
include 'controller/logo_banner.php';
include 'controller/nguoidung.php';
include 'controller/sanpham.php';
include 'controller/taikhoan.php';
include 'controller/thongke.php';
include 'controller/tintuc.php';

$danhmuc = loadall_danhmuc();
$logo = select_logo();
$admin = loadall_admin();
$banner = loadall_banner();
include 'view/khachhang/header.php';
if (isset($_GET['act']) && ($_GET['act']) != "") {
    $act = $_GET['act'];
    switch ($act) {
        case 'home':
            home();
            break;

        case 'loadallsanpham':
            loadallsanpham();
            break;

        case 'chitietsanpham':
            chitietsanpham();
            break;

        case 'danhmuc':
            danhmuc_khachhang();
            break;

        case 'search':
            search();
            break;

        case 'tintuc':
            tintuc_khachhang();
            break;

        case 'chitiettintuc':
            chitiettintuc();
            break;

        case 'dangnhap-dangky':
            include 'view/khachhang/taikhoan/log-singin.php';
            break;

        case 'dangxuat':
            dangxuat_khachhang();
            break;

        case 'dangnhaptaikhoan':
            dangnhaptaikhoan();
            break;

        case 'dangkytaikhoan':
            dangkytaikhoan();
            break;

        case 'cart':
            cart();
            break;

        case 'delcart':
            delcart();
            break;

        case 'taikhoan':
            taikhoan();
            break;

        case 'chitiethoadon':
            chitiethoadon_khachhang();
            break;

        case 'thanhtoan':
            thanhtoan();
            break;

        case 'huydonhang':
            huydonhang();
            break;

        case 'doithongtin':
            doithongtin();
            break;

        case 'nhanvien':
            nhanvien();
            break;
    }
} else {
    $tintuc = select_new();
    $danhmuc = loadall_danhmuc();
    $sanpham = loadall_sanpham_home();
    include 'view/khachhang/home.php';
}
include 'view/khachhang/footer.php';

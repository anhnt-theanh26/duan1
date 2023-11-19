<?php
session_start();
ob_start();




include '../../model/binhluan.php';
include '../../model/danhmuc.php';
include '../../model/hoadon.php';
include '../../model/khachhang.php';
include '../../model/khuyenmai.php';
include '../../model/logo_banner.php';
include '../../model/nguoidung.php';
include '../../model/pdo.php';
include '../../model/sanpham.php';
include '../../model/taikhoan.php';
include '../../model/thongke.php';
include '../../model/tintuc.php';

include '../../controller/binhluan.php';
include '../../controller/danhmuc.php';
include '../../controller/hoadon.php';
include '../../controller/khachhang.php';
include '../../controller/khuyenmai.php';
include '../../controller/logo_banner.php';
include '../../controller/nguoidung.php';
include '../../controller/sanpham.php';
include '../../controller/taikhoan.php';
include '../../controller/thongke.php';
include '../../controller/tintuc.php';

include 'header.php';

// $danhmuc = loadall_danhmuc();


if (isset($_SESSION['user']) && ($_SESSION['user'])) {
    extract($_SESSION['user']);
    if ($vai_tro == 1) {
        if (isset($_GET['act']) && ($_GET['act']) != '') {
            $act = $_GET['act'];
            switch ($act) {
                case 'home':
                    include 'home.php';
                    break;

                    //danh mục
                case 'danhmuc':
                    danhmuc();
                    break;

                case 'themdanhmuc':
                    themdanhmuc();
                    break;

                case 'suadanhmuc':
                    suadanhmuc();
                    break;

                case 'updatedm':
                    updatedm();
                    break;

                case 'xoadanhmuc':
                    xoadanhmuc();
                    break;

                case 'danhmucxoa':
                    danhmucxoa();
                    break;

                case 'khoiphucdanhmuc':
                    khoiphucdanhmuc();
                    break;

                case 'xoacungdanhmuc':
                    xoacungdanhmuc();
                    break;

                    // sản phẩm
                case 'sanpham':
                    sanpham();
                    break;

                case 'sanphamcungdanhmuc':
                    sanphamcungdanhmuc();
                    break;

                case 'themsanpham':
                    themsanpham();
                    break;


                case 'suasanpham':
                    suasanpham();
                    break;


                case 'xoamemsanpham':
                    xoamemsanpham();
                    break;

                case 'sanphamxoamem':
                    sanphamxoamem();
                    break;

                case 'khoiphucsanpham':
                    khoiphucsanpham();
                    break;

                case 'xoasanpham':
                    xoasanpham();
                    break;

                    // bình luận
                case 'binhluan':
                    binhluan();
                    break;

                case 'addbinhluan':
                    addbinhluan();
                    break;

                case 'binhluansanpham':
                    binhluansanpham();
                    break;

                case 'suabinhluan':
                    suabinhluan();
                    break;

                case 'updatebl':
                    updatebl();
                    break;

                case 'xoabinhluan':
                    xoabinhluan();
                    break;

                    //tin tức
                case 'tintuc':
                    tintuc();
                    break;

                case 'themtintuc':
                    themtintuc();
                    break;

                case 'suatintuc':
                    suatintuc();
                    break;

                case 'updatetintuc':
                    updatetintuc();
                    break;

                case 'xoamemtintuc':
                    xoamemtintuc();
                    break;

                case 'tintucxoamem':
                    tintucxoamem();
                    break;

                case 'khoiphuctintuc':
                    khoiphuctintuc();
                    break;

                case 'xoacungtintuc':
                    xoacungtintuc();
                    break;


                    // banner
                case 'banner':
                    banner();
                    break;

                case 'suabanner':
                    suabanner();
                    break;

                case 'updatebanner':
                    updatebanner();
                    break;

                case 'thembanner':
                    thembanner();
                    break;

                case 'xoamembanner':
                    xoamembanner();
                    break;

                case 'bannerxoamem':
                    bannerxoamem();
                    break;

                case 'xoacungbanner':
                    xoacungbanner();
                    break;

                case 'restorebanner':
                    restorebanner();
                    break;

                    //logo 
                case 'logo':
                    logo();
                    break;

                case 'sualogo':
                    sualogo();
                    break;

                case 'updatelogo':
                    updatelogo();
                    break;

                    //người dùng
                case 'nguoidung':
                    nguoidung();
                    break;

                case 'themnguoidung':
                    themnguoidung();
                    break;

                case 'suanguoidung':
                    suanguoidung();
                    break;

                case 'updatenguoidung':
                    updatenguoidung();
                    break;

                case 'xoamemnguoidung':
                    xoamemnguoidung();
                    break;

                case 'nguoidungxoamem':
                    nguoidungxoamem();
                    break;

                case 'restorenguoidung':
                    restorenguoidung();
                    break;

                case 'xoacungnguoidung':
                    xoacungnguoidung();
                    break;


                    // khách hàng
                case 'khachhang':
                    khachhang();
                    break;


                case 'themkhachhang':
                    themkhachhang();
                    break;

                case 'suakhachhang':
                    suakhachhang();
                    break;

                case 'updatekhachhang':
                    updatekhachhang();
                    break;

                case 'xoamemkhachhang':
                    xoamemkhachhang();
                    break;


                case 'khachhangxoamem':
                    khachhangxoamem();
                    break;

                case 'restorekhachhang':
                    restorekhachhang();
                    break;

                case 'xoacungkhachhang':
                    xoacungkhachhang();
                    break;

                    // đơn hàng
                case 'hoadon':
                    hoadon();
                    break;

                case 'chitiethoadon':
                    chitiethoadon();
                    break;

                case 'xacnhandonhang':
                    xacnhandonhang();
                    break;


                case 'dangchuanbi':
                    dangchuanbi();
                    break;

                case 'chuanbixong':
                    chuanbixong();
                    break;

                case 'donhangdanggiao':
                    donhangdanggiao();
                    break;

                case 'giaohangthanhcong':
                    giaohangthanhcong();
                    break;

                case 'donhangdagiao':
                    donhangdagiao();
                    break;

                case 'chitiethoadontungkhachhang':
                    chitiethoadontungkhachhang();
                    break;
                    // khuyến mại
                case 'khuyenmai':
                    khuyenmai();
                    break;

                case 'themkhuyenmai':
                    themkhuyenmai();
                    break;

                case 'suakhuyenmai':
                    suakhuyenmai();
                    break;

                case 'updatekhuyenmai':
                    updatekhuyenmai();
                    break;

                case 'xoamemkhuyenmai':
                    xoamemkhuyenmai();
                    break;

                case 'xoacungkhuyenmai':
                    xoacungkhuyenmai();
                    break;

                case 'restorekhuyenmai':
                    restorekhuyenmai();
                    break;

                case 'khuyenmaixoamem':
                    khuyenmaixoamem();
                    break;

                case 'khuyenmaichuahethan':
                    khuyenmaichuahethan();
                    break;

                    //đăng nhập
                case 'dangxuat':
                    dang_xuat();
                    break;
                default:
                    include 'home.php';
            }
        } else {
            include 'home.php';
        }
    } else if ($vai_tro != 1) {
        if (isset($_GET['act']) && ($_GET['act']) != '') {
            $act = $_GET['act'];
            switch ($act) {
                case 'home':
                    include 'home.php';
                    break;

                    //danh mục
                case 'danhmuc':
                    danhmuc();
                    break;

                case 'themdanhmuc':
                    themdanhmuc();
                    break;

                case 'suadanhmuc':
                    suadanhmuc();
                    break;

                case 'updatedm':
                    updatedm();
                    break;

                case 'xoadanhmuc':
                    xoadanhmuc();
                    break;

                case 'danhmucxoa':
                    danhmucxoa();
                    break;

                case 'khoiphucdanhmuc':
                    khoiphucdanhmuc();
                    break;

                case 'xoacungdanhmuc':
                    xoacungdanhmuc();
                    break;

                    // sản phẩm
                case 'sanpham':
                    sanpham();
                    break;

                case 'sanphamcungdanhmuc':
                    sanphamcungdanhmuc();
                    break;

                case 'themsanpham':
                    themsanpham();
                    break;


                case 'suasanpham':
                    suasanpham();
                    break;


                case 'xoamemsanpham':
                    xoamemsanpham();
                    break;

                case 'sanphamxoamem':
                    sanphamxoamem();
                    break;

                case 'khoiphucsanpham':
                    khoiphucsanpham();
                    break;

                case 'xoasanpham':
                    xoasanpham();
                    break;

                    // bình luận
                case 'binhluan':
                    binhluan();
                    break;

                case 'addbinhluan':
                    addbinhluan();
                    break;

                case 'binhluansanpham':
                    binhluansanpham();
                    break;

                case 'suabinhluan':
                    suabinhluan();
                    break;

                case 'updatebl':
                    updatebl();
                    break;

                case 'xoabinhluan':
                    xoabinhluan();
                    break;

                    //tin tức
                case 'tintuc':
                    tintuc();
                    break;

                case 'themtintuc':
                    themtintuc();
                    break;

                case 'suatintuc':
                    suatintuc();
                    break;

                case 'updatetintuc':
                    updatetintuc();
                    break;

                case 'xoamemtintuc':
                    xoamemtintuc();
                    break;

                case 'tintucxoamem':
                    tintucxoamem();
                    break;

                case 'khoiphuctintuc':
                    khoiphuctintuc();
                    break;

                case 'xoacungtintuc':
                    xoacungtintuc();
                    break;


                    // banner
                case 'banner':
                    banner();
                    break;

                case 'suabanner':
                    suabanner();
                    break;

                case 'updatebanner':
                    updatebanner();
                    break;

                case 'thembanner':
                    thembanner();
                    break;

                case 'xoamembanner':
                    xoamembanner();
                    break;

                case 'bannerxoamem':
                    bannerxoamem();
                    break;

                case 'xoacungbanner':
                    xoacungbanner();
                    break;

                case 'restorebanner':
                    restorebanner();
                    break;

                    //logo 
                case 'logo':
                    logo();
                    break;

                case 'sualogo':
                    sualogo();
                    break;

                case 'updatelogo':
                    updatelogo();
                    break;

                    //người dùng
                case 'suanguoidung':
                    suanguoidung();
                    break;

                case 'updatenguoidung':
                    updatenguoidung();
                    break;
                    // khách hàng

                    // đơn hàng
                case 'hoadon':
                    hoadon();
                    break;

                case 'chitiethoadon':
                    chitiethoadon();
                    break;

                case 'xacnhandonhang':
                    xacnhandonhang();
                    break;


                case 'dangchuanbi':
                    dangchuanbi();
                    break;

                case 'chuanbixong':
                    chuanbixong();
                    break;

                case 'donhangdanggiao':
                    donhangdanggiao();
                    break;

                case 'giaohangthanhcong':
                    giaohangthanhcong();
                    break;

                case 'donhangdagiao':
                    donhangdagiao();
                    break;

                case 'chitiethoadontungkhachhang':
                    chitiethoadontungkhachhang();
                    break;
                    // khuyến mại
                case 'khuyenmai':
                    khuyenmai();
                    break;

                case 'themkhuyenmai':
                    themkhuyenmai();
                    break;

                case 'suakhuyenmai':
                    suakhuyenmai();
                    break;

                case 'updatekhuyenmai':
                    updatekhuyenmai();
                    break;

                case 'xoamemkhuyenmai':
                    xoamemkhuyenmai();
                    break;

                case 'xoacungkhuyenmai':
                    xoacungkhuyenmai();
                    break;

                case 'restorekhuyenmai':
                    restorekhuyenmai();
                    break;

                case 'khuyenmaixoamem':
                    khuyenmaixoamem();
                    break;

                case 'khuyenmaichuahethan':
                    khuyenmaichuahethan();
                    break;

                    //đăng nhập
                case 'dangxuat':
                    dang_xuat();
                    break;
                default:
                    include 'home.php';
            }
        } else {
            include 'home.php';
        }
    } else {
        $thongbao = 'dang nhap that bai! tai khoan khong ton tai';
        include 'taikhoan/dangnhap.php';
    }
} else {
    include 'taikhoan/dangnhap.php';
}





include 'footer.php';
ob_end_flush();

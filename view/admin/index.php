<?php
session_start();
ob_start();




include '../../model/binhluan.php';
include '../../model/danhmuc.php';
include '../../model/khachhang.php';
include '../../model/logo_banner.php';
include '../../model/pdo.php';
include '../../model/sanpham.php';
include '../../model/taikhoan.php';
include '../../model/thongke.php';
include '../../model/tintuc.php';

include 'header.php';


if (isset($_GET['act']) && ($_GET['act']) != '') {
    $act = $_GET['act'];
    switch ($act) {
        case 'home':
            include 'home.php';
            break;

            //danh mục
        case 'danhmuc':
            $danhmuc = loadall_danhmuc();
            include 'danhmuc/list.php';
            break;

        case 'themdanhmuc':
            
            include 'danhmuc/add.php';
            break;

        case 'suadanhmuc':
            $id = $_GET['id'];
            if (isset($_GET['id']) && ($_GET['id']) > 0) {
                $suadm = loadone_danhmuc($_GET['id']);
            }
            // if (isset($_POST['suadm']) && ($_POST['suadm'])) {
            //     $id = $_POST['id'];
            //     $tendanhmuc = $_POST['tendanhmuc'];
            //     if($tendanhmuc != ""){
            //         fix_danhmuc($id, $name);
            //         $thongbao = 'sửa thành công';
            //         // header('location: index.php?act=suadanhmuc&&id=$id');
            //     }else{
            //         $thongbao = 'sửa thất bại';
            //     }
            // }
            include 'danhmuc/update.php';
            break;

        case 'updatedm':
            if (isset($_POST['suadm']) && ($_POST['suadm'])) {
                $id = $_POST['id'];
                $name = $_POST['tendanhmuc'];
                if($name != ""){
                    fix_danhmuc($id, $name);
                    $thongbao = 'sửa thành công';
                }else{
                    $thongbao = 'sửa thất bại';
                }
                header('location: index.php?act=suadanhmuc&&id='.$id);
            }
            // include 'danhmuc/update.php';
            break;

        case 'xoadanhmuc':
            include 'danhmuc/list.php';
            break;

        case 'danhmucxoa':
            include 'danhmuc/delete.php';
            break;

            // sản phẩm
        case 'sanpham':
            include 'sanpham/list.php';
            break;


        case 'themsanpham':
            include 'sanpham/add.php';
            break;


        case 'suasanpham':
            include 'sanpham/update.php';
            break;


            // case 'xoacungsanpham':
            //     include 'sanpham/xoacung.php';
            //     break;


        case 'xoamemsanpham':
            include 'sanpham/xoamem.php';
            break;

            // bình luận
        case 'binhluan':
            include 'binhluan/list.php';
            break;


        case 'binhluansanpham':
            include 'binhluan/binhluansanpham.php';
            break;

            //tin tức
        case 'tintuc':
            include 'tintuc/list.php';
            break;

        case 'themtintuc':
            include 'tintuc/add.php';
            break;

        case 'suatintuc':
            include 'tintuc/update.php';
            break;

        case 'xoatintuc':
            include 'tintuc/xoamem.php';
            break;

            //người dùng
        case 'nguoidung':
            include 'nguoidung/list.php';
            break;


        case 'themnguoidung':
            include 'home.php';
            break;

        case 'suanguoidung':
            include 'home.php';
            break;


        case 'xoanguoidung':
            include 'home.php';
            break;

            // khách hàng
        case 'khachhang':
            include 'khachhang/list.php';
            break;


        case 'themkhachhang':
            include 'home.php';
            break;

        case 'suakhachhang':
            include 'home.php';
            break;


        case 'xoakhachhang':
            include 'home.php';
            break;

            // đơn hàng
        case 'donhang':
            include 'donhang/list.php';
            break;

        case 'themdonhang':
            include 'donhang/add.php';
            break;

        case 'suadonhang':
            include 'donhang/update.php';
            break;

        case 'xoamemdonhang':
            include 'donhang/xoamem.php';
            break;

            //logo 
        case 'logo':
            include 'logo/list.php';
            break;

        case 'sualogo':
            include 'logo/update.php';
            break;

            //tài khoản
        case 'dangnhap':
            include 'taikhoan/dangnhap.php';
            break;
        default:
            include 'home.php';
    }
} else {
    include 'home.php';
}







include 'footer.php';
ob_end_flush();

// if (isset($_SESSION['user']) && ($_SESSION['user'])) {
//     extract($_SESSION['user']);
//     if ($vaitro == 1) {
        
//     } else if($vaitro == 2) {
        
//     }else{
//         $thongbao = 'dang nhap that bai! tai khoan khong ton tai';
//         include 'dangnhap.php';
//     }
// } else {
//     include 'dangnhap.php';
// }
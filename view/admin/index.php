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

$danhmuc = loadall_danhmuc();


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
                    $danhmuc = loadall_danhmuc();
                    include 'danhmuc/list.php';
                    break;

                case 'themdanhmuc':
                    if (isset($_POST['themsanpham']) && ($_POST['themsanpham'])) {
                        $tenloai = $_POST['tendanhmuc'];
                        insert_danhmuc($tenloai);
                        $thongbao = 'them danh muc thanh cong';
                        // header("location: index.php?act=themdanhmuc");
                    }
                    include 'danhmuc/add.php';
                    break;

                case 'suadanhmuc':
                    $id = $_GET['id'];
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $suadm = loadone_danhmuc($_GET['id']);
                    }
                    include 'danhmuc/update.php';
                    break;

                case 'updatedm':
                    if (isset($_POST['suadm']) && ($_POST['suadm'])) {
                        $id = $_POST['id'];
                        $name = $_POST['tendanhmuc'];
                        if ($name != "") {
                            fix_danhmuc($id, $name);
                            $thongbao = 'sửa thành công';
                            header('location: index.php?act=suadanhmuc&&id=' . $id);
                        } else {
                            $thongbao = 'sửa thất bại';
                        }
                    }
                    include 'danhmuc/update.php';
                    break;

                case 'xoadanhmuc':
                    if (isset($_GET['id']) && $_GET['id'] > 0) {
                        $id = $_GET['id'];
                        delete_mem($id);
                        header("location: index.php?act=danhmuc");
                    }
                    break;

                case 'danhmucxoa':
                    $danhmuc = loadall_danhmuc_xoamem();
                    include 'danhmuc/delete.php';
                    break;

                case 'khoiphucdanhmuc':
                    if (isset($_GET['id']) && $_GET['id'] > 0) {
                        $id = $_GET['id'];
                        restore_danhmuc($id);
                        $danhmuc = loadall_danhmuc_xoamem();
                        header("location: index.php?act=danhmucxoa");
                    }
                    include 'danhmuc/delete.php';
                    break;

                case 'xoacungdanhmuc':
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $id = $_GET['id'];
                        delete_danhmuc($id);
                        header("location: index.php?act=danhmucxoa");
                    }
                    include 'danhmuc/delete.php';
                    break;

                    // sản phẩm
                case 'sanpham':
                    $sanpham = loadall_sanpham($keyw = "", $iddm = 0);
                    include 'sanpham/list.php';
                    break;

                case 'sanphamcungdanhmuc':
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $id = $_GET['id'];
                        $sanpham = loadallsp_cungdanhmuc($id);
                    }
                    include 'sanpham/list.php';
                    break;

                case 'themsanpham':
                    if (isset($_POST['addsanpham']) && ($_POST['addsanpham'])) {
                        $tensanpham = $_POST['tensanpham'];
                        $giasanpham = $_POST['giasanpham'];
                        $soluongsanpham = $_POST['soluongsanpham'];
                        $iddm = $_POST['iddm'];
                        $mota = $_POST['mota'];
                        $target_dir = '../../view/img/';
                        $anhdaidien = $_FILES['anhdaidien']['name'];
                        $target_file = $target_dir . basename($anhdaidien);
                        move_uploaded_file($_FILES['anhdaidien']['tmp_name'], $target_file);

                        $anh1 = $_FILES['anh1']['name'];
                        $target_file1 = $target_dir . basename($anh1);
                        move_uploaded_file($_FILES['anh1']['tmp_name'], $target_file1);

                        $anh2 = $_FILES['anh2']['name'];
                        $target_file2 = $target_dir . basename($anh2);
                        move_uploaded_file($_FILES['anh2']['tmp_name'], $target_file2);

                        $anh3 = $_FILES['anh3']['name'];
                        $target_file3 = $target_dir . basename($anh3);
                        move_uploaded_file($_FILES['anh3']['tmp_name'], $target_file3);

                        if ($tensanpham != '' && $giasanpham > 0 && $anhdaidien != '' && $mota != '' && $soluongsanpham > 0 && $anh1 != '' && $anh2 != '' && $anh3 != '') {
                            add_sanpham($tensanpham, $giasanpham, $anhdaidien, $mota, $soluongsanpham, $anh1, $anh2, $anh3, $iddm);
                            $thongbao = 'thêm sản phẩm thành công';
                        } else {
                            $thongbao = 'thất bại';
                        }
                    }
                    include 'sanpham/add.php';
                    break;

                    // case '':


                case 'suasanpham':
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $sanpham = loadone_sanpham($_GET['id']);
                    }
                    if (isset($_POST['updatesanpham']) && ($_POST['updatesanpham'])) {
                        $id = $_POST['id'];
                        $iddm = $_POST['iddm'];
                        $tensanpham = $_POST['tensanpham'];
                        $giasanpham = $_POST['giasanpham'];
                        $soluongsanpham = $_POST['soluongsanpham'];
                        $mota = $_POST['mota'];

                        $target_dir = '../../view/img/';
                        $anhdaidien = $_FILES['anhdaidien']['name'];
                        $target_file = $target_dir . basename($anhdaidien);
                        move_uploaded_file($_FILES['anhdaidien']['tmp_name'], $target_file);

                        $anh1 = $_FILES['anh1']['name'];
                        $target_file1 = $target_dir . basename($anh1);
                        move_uploaded_file($_FILES['anh1']['tmp_name'], $target_file1);

                        $anh2 = $_FILES['anh2']['name'];
                        $target_file2 = $target_dir . basename($anh2);
                        move_uploaded_file($_FILES['anh2']['tmp_name'], $target_file2);

                        $anh3 = $_FILES['anh3']['name'];
                        $target_file3 = $target_dir . basename($anh3);
                        move_uploaded_file($_FILES['anh3']['tmp_name'], $target_file3);

                        if ($tensanpham != "" && $giasanpham > 0 && $soluongsanpham > 0) {
                            update_sanpham($tensanpham, $giasanpham, $anhdaidien, $mota, $soluongsanpham, $anh1, $anh2, $anh3, $iddm, $id);
                            header("location: index.php?act=suasanpham&&id=$id");
                        } else {
                            $thongbao = 'sua san pham that bai';
                        }
                    }
                    include 'sanpham/update.php';
                    break;


                case 'xoamemsanpham':
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $id = $_GET['id'];
                        soft_delete_sanpham($id);
                        header("location: index.php?act=sanpham");
                    }
                    include 'sanpham/xoamem.php';
                    break;

                case 'sanphamxoamem':
                    $sanpham = loadall_sanpham_soft($keyw = "", $iddm = 0);
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $id = $_GET['id'];
                        restore_sanpham($id);
                        header("location: index.php?act=sanphamxoamem");
                    }
                    include 'sanpham/xoamem.php';
                    break;
                case 'khoiphucsanpham':
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $id = $_GET['id'];
                        restore_sanpham($id);
                        $sanpham = loadall_sanpham_soft($keyw = "", $iddm = 0);
                        header("location: index.php?act=sanphamxoamem");
                    }
                    include 'sanpham/xoamem.php';
                    break;

                case 'xoasanpham':
                    if (isset($_GET['id']) && ($_GET['id'])) {
                        hard_delete_sanpham($id);
                        header("location: index.php?act=sanpham");
                    }
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
                case 'dangxuat':
                    if (isset($_SESSION['user']) && ($_SESSION['user'])) {
                        dangxuat();
                    }
                    include 'taikhoan/dangnhap.php';
                    break;
                default:
                    include 'home.php';
            }
        } else {
            include 'home.php';
        }
    } else if ($vai_tro == 2) {
        if (isset($_GET['act']) && ($_GET['act']) != '') {
            $act = $_GET['act'];
            switch ($act) {
                case 'dangxuat':
                    if (isset($_SESSION['user']) && ($_SESSION['user'])) {
                        dangxuat();
                    }
                    include 'taikhoan/dangnhap.php';
                    break;
            }
        }
    } else {
        $thongbao = 'dang nhap that bai! tai khoan khong ton tai';
        include 'dangnhap.php';
    }
} else {
    include 'taikhoan/dangnhap.php';
}





include 'footer.php';
ob_end_flush();

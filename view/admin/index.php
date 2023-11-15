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
                        $target_dir = '../../view/img/';
                        $img_danh_muc = $_FILES['img_danh_muc']['name'];
                        $target_file = $target_dir . basename($img_danh_muc);
                        move_uploaded_file($_FILES['img_danh_muc']['tmp_name'], $target_file);
                        if($tenloai != "" && $img_danh_muc != ""){
                            insert_danhmuc($tenloai, $img_danh_muc);
                        }
                        $thongbao = 'them danh muc thanh cong';
                        // header("location: index.php?act=themdanhmuc");
                    }
                    include 'danhmuc/add.php';
                    break;

                case 'suadanhmuc':
                    if (isset($_GET['id']) && ($_GET['id']) > 0) {
                        $id = $_GET['id'];
                        $suadm = loadone_danhmuc($id);
                    }
                    include 'danhmuc/update.php';
                    break;

                case 'updatedm':
                    if (isset($_POST['suadm']) && ($_POST['suadm'])) {
                        $id = $_POST['id'];
                        $name = $_POST['tendanhmuc'];

                        $target_dir = '../../view/img/';
                        $img_danh_muc = $_FILES['img_danh_muc']['name'];
                        $target_file = $target_dir . basename($img_danh_muc);
                        move_uploaded_file($_FILES['img_danh_muc']['tmp_name'], $target_file);

                        if ($name != "") {
                            fix_danhmuc($id, $name, $img_danh_muc);
                            $thongbao = 'sửa thành công';
                            $suadm = loadone_danhmuc($id);
                            // header('location: index.php?act=suadanhmuc&&id=' . $id);
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
                    $binhluan = load_so_binh_luan();
                    include 'binhluan/list.php';
                    break;

                case 'addbinhluan':
                    $khachhang = loadall_khachhang();
                    $sanpham = sanpham();
                    if(isset($_POST['thembinhluan']) && ($_POST['thembinhluan'])){
                        $noidung = $_POST['noidung'];
                        $idsp = $_POST['idsp'];
                        $idkh = $_POST['idkh'];
                        if($noidung != ""){
                            insert_binhluan($noidung, $idsp, $idkh);
                            $thongbao = 'thêm bình luận thành công';
                            $thongbao = "nội dung: $noidung; idsp: $idsp; idkh: $idkh";
                        }else{
                            $thongbao = 'thêm bình luận thất bại';
                        }
                    }
                    include 'binhluan/add.php';
                    break;

                case 'binhluansanpham':
                    if(isset($_GET['idsp']) && ($_GET['idsp']) > 0){
                        $id = $_GET['idsp'];
                        $binhluan = load_binhluan($id);
                    }
                    include 'binhluan/binhluansanpham.php';
                    break;

                case 'suabinhluan':
                    if(isset($_GET['idbl']) && $_GET['idbl'] != 0){
                        $id = $_GET['idbl'];
                        $binhluan = loadone_binhluan($id);
                    }
                    include 'binhluan/update.php';
                    break;

                case 'updatebl':
                    if(isset($_POST['suabl']) && ($_POST['suabl'])){
                        $id = $_POST['id'];
                        $noidung = $_POST['noidung'];
                        update_binhluan($id, $noidung);
                        if ($noidung != "") {
                            update_binhluan($id, $noidung);
                            $binhluan = loadone_binhluan($id);
                            $thongbao = 'sửa thành công';
                        } else {
                            $thongbao = 'sửa thất bại';
                        }
                        // header("location: index.php?act=updatebl&&idbl=$id");
                    }
                    include 'binhluan/update.php';
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
        include 'taikhoan/dangnhap.php';
    }
} else {
    include 'taikhoan/dangnhap.php';
}





include 'footer.php';
ob_end_flush();

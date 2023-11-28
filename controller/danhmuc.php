<?php

function danhmuc()
{
    $danhmuc = loadall_danhmuc();
    include 'danhmuc/list.php';
}

function themdanhmuc()
{
    if (isset($_POST['themsanpham']) && ($_POST['themsanpham'])) {
        $tenloai = $_POST['tendanhmuc'];
        $target_dir = '../../view/img/';
        $img_danh_muc = $_FILES['img_danh_muc']['name'];
        $target_file = $target_dir . basename($img_danh_muc);
        move_uploaded_file($_FILES['img_danh_muc']['tmp_name'], $target_file);
        if ($tenloai != "" && $img_danh_muc != "") {
            insert_danhmuc($tenloai, $img_danh_muc);
            $thongbao = 'thêm danh mục thành công';
        } else {
            $thongbao = 'thêm danh mục thất bại';
        }
        // header("location: index.php?act=themdanhmuc");
    }
    include 'danhmuc/add.php';
}

function suadanhmuc()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $suadm = loadone_danhmuc($id);
    }
    include 'danhmuc/update.php';
}

function updatedm()
{
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
            $suadm = loadone_danhmuc($id);
            $thongbao = 'sửa thất bại';
        }
    }
    include 'danhmuc/update.php';
}

function xoadanhmuc()
{
    if (isset($_GET['id']) && $_GET['id'] > 0) {
        $id = $_GET['id'];
        delete_mem($id);
        header("location: index.php?act=danhmuc");
    }
}

function danhmucxoa()
{
    $danhmuc = loadall_danhmuc_xoamem();
    include 'danhmuc/delete.php';
}

function khoiphucdanhmuc()
{
    if (isset($_GET['id']) && $_GET['id'] > 0) {
        $id = $_GET['id'];
        restore_danhmuc($id);
        $danhmuc = loadall_danhmuc_xoamem();
        header("location: index.php?act=danhmucxoa");
    }
    include 'danhmuc/delete.php';
}

function xoacungdanhmuc()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        delete_danhmuc($id);
        header("location: index.php?act=danhmucxoa");
    }
    include 'danhmuc/delete.php';
}


function danhmuc_khachhang()
{
    $banner = loadall_banner();
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $danhmuc = loadall_danhmuc();
        $sanpham = loadallsp_cungdanhmuc($id);
    }
    if (isset($_POST['loc'])) {
        $tk = $_POST['tk'];
        $id = $_POST['id'];
        $sanpham = loc_san_pham($tk, $id);
    }
    include 'view/khachhang/sanpham/sanpham.php';
}

function search()
{
    if (isset($_POST['timkiem'])) {
        $tk = $_POST['keyw'];
        $iddm = 0;
        $sanpham = loadall_sanpham($tk, $iddm);
    }
    $tintuc = select_new();
    $banner = loadall_banner();
    $danhmuc = loadall_danhmuc();
    include 'view/khachhang/home.php';
}

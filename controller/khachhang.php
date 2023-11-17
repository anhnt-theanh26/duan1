<?php
function khachhang()
{
    $khachhang = loadall_khachhang();
    include 'khachhang/list.php';
}

function themnguoidung()
{
    if (isset($_POST['add']) && ($_POST['add'])) {
        $ten = $_POST['ten'];
        $tendangnhap = $_POST['tendangnhap'];
        $matkhau = md5($_POST['matkhau']);
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $diachi = $_POST['diachi'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($ten != "" && $tendangnhap != "" && $matkhau != "" && $email != "" && $sdt != "" && $diachi != "") {
            add_khachhang($ten, $tendangnhap, $matkhau, $email, $sdt, $diachi, $img);
            $thongbao = 'thêm khách hàng thành công';
        } else {
            $thongbao = ' thêm thất bại';
        }
    }
    include 'khachhang/add.php';
}

function suakhachhang()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $khachhang = loadone_khachhang($id);
    }
    include 'khachhang/update.php';
}

function updatekhachhang()
{
    if (isset($_POST['suakh'])) {
        $id = $_POST['id'];
        $ten = $_POST['ten'];
        $tendangnhap = $_POST['tendangnhap'];
        $matkhau = md5($_POST['matkhau']);
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $diachi = $_POST['diachi'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($ten != "" && $tendangnhap != "" && $matkhau != "" && $email != "" && $sdt != "" && $diachi != "") {
            update_khachhang($id, $ten, $tendangnhap, $matkhau, $email, $sdt, $diachi, $img);

            $thongbao = 'sửa khách hàng thành công';
        } else {
            $thongbao = ' sửa thất bại';
        }
    }
    $khachhang = loadone_khachhang($id);
    include 'khachhang/update.php';
}

function xoamemkhachhang()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xoamem_khachhang($id);
    }
    $khachhang = loadall_khachhang();
    include 'khachhang/list.php';
}

function khachhangxoamem()
{
    $khachhang = loadall_khachhang_xoamem();
    include 'khachhang/xoamem.php';
}

function restorekhachhang()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_khachhang($id);
    }
    $khachhang = loadall_khachhang_xoamem();
    include 'khachhang/xoamem.php';
}

function xoacungkhachhang()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xoacung_khachhang($id);
    }
    $khachhang = loadall_khachhang_xoamem();
    include 'khachhang/xoamem.php';
}

<?php
function dang_xuat_admin()
{
    if (isset($_SESSION['admin']) && ($_SESSION['admin'])) {
        unset($_SESSION['admin']);
    }
    include 'taikhoan/dangnhap.php';
}

function taikhoan()
{
    if (isset($_SESSION['user'])) {
        $id = $_SESSION['user']['id'];
        $binhluan = load_binhluan_khach_hang($_SESSION['user']['id']);
    }
    if (isset($_GET['idbl']) && ($_GET['idbl']) > 0) {
        $id = $_GET['idbl'];
        delete_binhluan($id);
        header("location: index.php?act=taikhoan");
    }
    $hoadon = hoa_don_khach_hang($_SESSION['user']['id']);
    include 'view/khachhang/taikhoan/taikhoan.php';
}

function nhanvien()
{
    $nhanvien = loadall_nguoidung();
    include 'view/khachhang/nhanvien/nhanvien.php';
}

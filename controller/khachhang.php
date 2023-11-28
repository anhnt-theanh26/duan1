<?php
function khachhang()
{
    $khachhang = loadall_khachhang();
    include 'khachhang/list.php';
}

function themkhachhang()
{
    if (isset($_POST['add']) && ($_POST['add'])) {
        $ten = $_POST['ten'];
        $tendangnhap = $_POST['tendangnhap'];
        $matkhau = $_POST['matkhau'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $diachi = $_POST['diachi'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($ten != "" && $tendangnhap != "" && $matkhau != "" && $email != "" && $sdt != "" && $diachi != "") {
            add_khachhang($ten, $tendangnhap, md5($matkhau), $email, $sdt, $diachi, $img);
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
        $matkhau = $_POST['matkhau'];
        $matkhaucu = $_POST['matkhaucu'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $diachi = $_POST['diachi'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($ten != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $diachi != "" && $matkhau != "") {
            update_khachhang($id, $ten, $tendangnhap, md5($matkhau), $email, $sdt, $diachi, $img);
            $thongbao = 'sửa khách hàng thành công';
        } else if ($ten != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $diachi != "" && $matkhau == "") {
            update_khachhang($id, $ten, $tendangnhap, $matkhaucu, $email, $sdt, $diachi, $img);
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


function dangnhaptaikhoan()
{
    if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {
        $tendangnhap = $_POST['tendangnhap'];
        $matkhau = md5($_POST['matkhau']);
        $dangnhap = dang_nhap_khach_hang($tendangnhap, $matkhau);
        if (is_array($dangnhap)) {
            $_SESSION['user'] = $dangnhap;
            header("location: index.php?act=home");
        } else {
            $thongbao = 'dang nhap that bai! tai khoan khong ton tai';
        }
    }
    include 'view/khachhang/taikhoan/dangnhap.php';
}

function dangkytaikhoan()
{
    if (isset($_POST['dangky']) && ($_POST['dangky'])) {
        $ten = $_POST['ten'];
        $tendangnhap = $_POST['tendangnhap'];
        $matkhau = $_POST['matkhau'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $diachi = $_POST['diachi'];
        if ($ten != "" && $tendangnhap != "" && $matkhau != "" && $email != "" && $sdt != "" && $diachi != "") {
            insert_taikhoan($ten, $tendangnhap, md5($matkhau), $email, $sdt, $diachi);
            $thongbao = 'Đăng ký thành công';
        } else {
            $thongbao = 'không để trống các cột để đăng ký';
        }
    }
    include 'view/khachhang/taikhoan/dangky.php';
}

function doithongtin()
{
    if (isset($_POST['capnhaptaikhoan']) && ($_POST['capnhaptaikhoan'])) {
        $id = $_POST['id'];
        $ten = $_POST['ten'];
        $tendangnhap = $_POST['tendangnhap'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $diachi = $_POST['diachi'];
        $matkhau = $_POST['matkhau'];
        $matkhaucu = $_POST['matkhaucu'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($ten != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $diachi != "" && $matkhau != "") {
            update_khachhang($id, $ten, $tendangnhap, md5($matkhau), $email, $sdt, $diachi, $img);
            $dangnhap = dang_nhap_khach_hang($tendangnhap, md5($matkhau));
            if (is_array($dangnhap)) {
                $_SESSION['user'] = $dangnhap;
                $thongbao = 'sửa thông tin thành công';
            }
        } else if ($ten != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $diachi != "" && $matkhau == "") {
            update_khachhang($id, $ten, $tendangnhap, $matkhaucu, $email, $sdt, $diachi, $img);
            $dangnhap = dang_nhap_khach_hang($tendangnhap, $matkhaucu);
            if (is_array($dangnhap)) {
                $_SESSION['user'] = $dangnhap;
                $thongbao = 'sửa thông tin thành công';
            }
        } else {
            $thongbao = ' sửa thông tin thất bại';
        }
    }
    // include 'taikhoan/taikhoan.php';
    header("location: index.php?act=taikhoan");
}

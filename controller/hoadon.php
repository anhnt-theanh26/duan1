<?php

function hoadon()
{
    $hoadon = cho_xac_nhan();
    include 'donhang/list.php';
}

function chitiethoadon()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $hoadon = chi_tiet_hoa_don($id);
    }
    include 'donhang/chitietdonhang.php';
}


function xacnhandonhang()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xac_nhan_don_hang($id);
    }
    $hoadon = cho_xac_nhan();
    include 'donhang/list.php';
}

function dangchuanbi()
{
    $hoadon = dang_chuan_bi();
    include 'donhang/dangchuanbi.php';
}

function chuanbixong()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        chuan_bi_xong_don_hang($id);
    }
    $hoadon = dang_chuan_bi();
    include 'donhang/dangchuanbi.php';
}

function donhangdanggiao()
{
    $hoadon = dang_giao();
    include 'donhang/danggiao.php';
}


function giaohangthanhcong()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        da_giao_don_hang($id);
    }
    $hoadon = dang_giao();
    include 'donhang/danggiao.php';
}

function donhangdagiao()
{
    $hoadon = da_giao();
    include 'donhang/dagiao.php';
}

function chitiethoadontungkhachhang()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $hoadon = hoa_don_tung_khach_hang($id);
    }
    include 'donhang/chitietdonhang.php';
}


function addcart()
{
    if (isset($_POST['addtocart']) && ($_POST['addtocart'])) {
        $id = $_POST['id'];
        $name = $_POST['name'];
        $price = $_POST['price'];
        $img = $_POST['img'];
        $iddm = $_POST['iddm'];

        if (isset($_POST['soluong']) && ($_POST['soluong']) > 0) {
            $soluong = $_POST['soluong'];
        } else {
            $soluong = 1;
        }

        if (checktrungsp($id) >= 0) {
            $vitrisptrung = checktrungsp($id);
            updateslsp($vitrisptrung, $soluong);
        } else {
            $item = array($id, $name, $img, $price, $soluong, $iddm);
            array_push($_SESSION['giohang'], $item);
        }
        // header("location: " . $_SERVER['HTTP_REFERER']);
        // $thongbao = 'them vao gio hang';
        // header('location: index.php?act=cart');
    }
    header("location: " . $_SERVER['HTTP_REFERER']);
}

function cart()
{
    $khuyenmai = loadall_khuyenmai_conhan();
    include 'sanpham/cart.php';
}


function delcart()
{
    if (isset($_SESSION['giohang'])) {
        unset($_SESSION['giohang']);
    }
    header("location: index.php?act=cart");
}

function delprocart()
{
    if (isset($_GET['id']) && ($_GET['id']) >= 0) {
        $id = $_GET['id'];
        array_splice($_SESSION['giohang'], $id, 1);
    }
    header("location: index.php?act=cart");
}

function chitiethoadon_khachhang()
{
    if (isset($_GET['id']) && ($_GET['id'])) {
        $id = $_GET['id'];
        $hoadon = chi_tiet_hoa_don($id);
    }
    include 'taikhoan/donhang.php';
}

function thanhtoan()
{
    if (isset($_POST['dathang']) && ($_POST['dathang'])) {
        $idkh = $_POST['idkh'];
        $khuyenmai = $_POST['khuyenmai'];
        $tongtien = $_POST['tongtien'];
        $tenkhachhang = $_POST['tenkhachhang'];
        $sdt = $_POST['sdt'];
        $email = $_POST['email'];
        $diachi = $_POST['diachi'];
        if ($tenkhachhang != "" && $sdt != "" && $email != "" && $diachi != "") {
            $idhd = insert_hoadon($idkh, $tongtien, $diachi, $email, $tenkhachhang, $sdt);
            // $thongbao = "idkh = $idkh; tổng tiền = $tongtien; khuyến mại = $khuyenmai; sdt = $sdt; email = $email; địa chỉ = $diachi </br> id hóa đơn = $idhd";
            if (isset($_SESSION['giohang']) && count($_SESSION['giohang']) > 0) {
                foreach ($_SESSION['giohang'] as $item) {
                    $giakhuyenmai = $item[3] - ($item[3] * $khuyenmai) / 100;
                    $thanhtien = $giakhuyenmai * $item[4];
                    insert_hoadon_chitiet($idhd, $item[0], $item[4], $giakhuyenmai, $thanhtien);
                    update_so_luong_da_ban($item[0], $item[4]);
                }
                unset($_SESSION['giohang']);
            }
        }
    }
    header("location: index.php?act=cart");
    // include 'sanpham/cart.php';
}

function huydonhang()
{
    if (isset($_GET['iddh']) && ($_GET['iddh']) > 0) {
        $id = $_GET['iddh'];
        huy_don_hang($id);
    }
    include 'taikhoan/taikhoan.php';
}

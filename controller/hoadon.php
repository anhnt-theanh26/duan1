<?php

function hoadon()
{
    $loc = 0;
    $hoadon = loc_hoa_don($loc);
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
    $loc = 0;
    $hoadon = loc_hoa_don($loc);
    include 'donhang/list.php';
}

function dangchuanbi()
{
    $loc = 1;
    $hoadon = loc_hoa_don($loc);
    include 'donhang/dangchuanbi.php';
}

function chuanbixong()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        chuan_bi_xong_don_hang($id);
    }
    $loc = 1;
    $hoadon = loc_hoa_don($loc);
    include 'donhang/dangchuanbi.php';
}

function donhangdanggiao()
{
    $loc = 2;
    $hoadon = loc_hoa_don($loc);
    include 'donhang/danggiao.php';
}


function giaohangthanhcong()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        da_giao_don_hang($id);
    }
    $loc = 2;
    $hoadon = loc_hoa_don($loc);
    include 'donhang/danggiao.php';
}

function lochoadon()
{
    if (isset($_POST['loc']) && $_POST['loc']) {
        $id = $_POST['id'];
        $hoadon = loc_hoa_don($id);
    }
    include 'donhang/list.php';
}

function donhangdagiao()
{
    $loc = 3;
    $hoadon = loc_hoa_don($loc);
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
    if (!empty($_SESSION['giohang'])) {
        $cart = $_SESSION['giohang'];
        $idpro = array_column($cart, 'id');
        // var_dump($idpro);
        $idList = implode(',', $idpro);
        $dataDB = loadone_sanpham_cart($idList);
        // var_dump($dataDB);
    }
    $khuyenmaiconhan = loadall_khuyenmai_conhan();
    include 'view/khachhang/sanpham/cart.php';
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
    include 'view/khachhang/taikhoan/donhang.php';
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
            $idhd = insert_hoadon($idkh, $tongtien, $diachi, $email, $tenkhachhang, $sdt, $khuyenmai);
            if (isset($_SESSION['giohang']) && count($_SESSION['giohang']) > 0) {
                foreach ($_SESSION['giohang'] as $item) {
                    $giakhuyenmai = $item['price'] - ($item['price'] * $khuyenmai) / 100;
                    $thanhtien = $giakhuyenmai * $item['quantity'];
                    insert_hoadon_chitiet($idhd, $item['id'], $item['quantity'], $giakhuyenmai, $thanhtien);
                    update_so_luong_da_ban($item['id'], $item['quantity']);
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
    if (isset($_GET['iddh']) && is_numeric($_GET['iddh']) && ($_GET['iddh'] > 0)) {
        $id = $_GET['iddh'];
        $data = load_so_luong_san_pham_huy($id);
        foreach ($data as $item) {
            extract($item);
            update_so_luong_da_ban_khachhang_huy($id_sp, $so_luong);
        }
        huy_don_hang($_GET['iddh']);
    } else {
        $thongbao = "đơn hàng không tồn tại";
    }
    header("location: index.php?act=taikhoan");
}

function comfirm()
{
    if (isset($_POST['nhan']) && $_POST['nhan']) {
        $id = $_POST['id'];
        da_giao_don_hang($id);
        $hoadon = chi_tiet_hoa_don($id);
        header("location: index.php?act=chitiethoadon&&id=$id");
    }
}

function xoadonhang()
{
    if (isset($_GET['id']) && is_numeric($_GET['id']) && ($_GET['id'] > 0)) {
        $id = $_GET['id'];
        $data = load_so_luong_san_pham_huy($id);
        foreach ($data as $item) {
            extract($item);
            update_so_luong_da_ban_khachhang_huy($id_sp, $so_luong);
        }
        huy_don_hang($_GET['id']);
    } else {
        $thongbao = "đơn hàng không tồn tại";
    }
    $loc = 2;
    $hoadon = loc_hoa_don($loc);
    include 'donhang/danggiao.php';
}

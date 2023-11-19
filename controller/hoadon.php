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

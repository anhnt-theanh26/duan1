<?php

function khuyenmai()
{
    $khuyenmai = loadall_khuyenmai();
    include 'khuyenmai/list.php';
}

function themkhuyenmai()
{
    if (isset($_POST['addkm']) && ($_POST['addkm'])) {
        $makm = $_POST['makm'];
        $phantram = $_POST['phantram'];
        $batdau = $_POST['batdau'];
        $ketthuc = $_POST['ketthuc'];
        if ($makm != "" && $phantram > 0) {
            themdear($makm, $phantram, $batdau, $ketthuc);
            $thongbao = "mã khuyến mại: $makm; phần trăm khuyến mại: $phantram; start: $batdau; end: $ketthuc";
        } else {
            $thongbao = 'thất bại';
        }
    }
    include 'khuyenmai/add.php';
}

function suakhuyenmai()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $khuyenmai = loadone_khuyenmai($id);
    }
    include 'khuyenmai/update.php';
}

function updatekhuyenmai()
{
    if (isset($_POST['suakhuyenmai']) && ($_POST['suakhuyenmai'])) {
        $id = $_POST['id'];
        $makm = $_POST['makm'];
        $phantram = $_POST['phantram'];
        $batdau = $_POST['batdau'];
        $ketthuc = $_POST['ketthuc'];
        if ($makm != "" && $phantram > 0) {
            update_khach_hang($id, $makm, $phantram, $batdau, $ketthuc);
            $thongbao = 'sửa thành công';
        } else {
            $thongbao = 'sửa thất bại';
        }
        $khuyenmai = loadone_khuyenmai($id);
    }
    include 'khuyenmai/update.php';
}

function xoamemkhuyenmai()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xoa_mem_khuyen_mai($id);
    }
    $khuyenmai = loadall_khuyenmai();
    include 'khuyenmai/list.php';
}

function xoacungkhuyenmai()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xoa_cung_khuyen_mai($id);
    }
    $khuyenmai = loadall_khuyenmai_xoamem();
    include 'khuyenmai/xoamem.php';
}

function restorekhuyenmai()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_khuyen_mai($id);
    }
    $khuyenmai = loadall_khuyenmai_xoamem();
    include 'khuyenmai/xoamem.php';
}

function khuyenmaixoamem()
{
    $khuyenmai = loadall_khuyenmai_xoamem();
    include 'khuyenmai/xoamem.php';
}

function khuyenmaichuahethan()
{
    $khuyenmai = loadall_khuyenmai_conhan();
    include 'khuyenmai/chuahethan.php';
}

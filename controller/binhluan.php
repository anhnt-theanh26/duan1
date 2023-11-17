<?php

function binhluan()
{
    $binhluan = load_so_binh_luan();
    include 'binhluan/list.php';
}

function addbinhluan()
{
    $khachhang = loadall_khachhang();
    $sanpham = san_pham();
    if (isset($_POST['thembinhluan']) && ($_POST['thembinhluan'])) {
        $noidung = $_POST['noidung'];
        $idsp = $_POST['idsp'];
        $idkh = $_POST['idkh'];
        if ($noidung != "") {
            insert_binhluan($noidung, $idsp, $idkh);
            $thongbao = 'thêm bình luận thành công';
            // $thongbao = "nội dung: $noidung; idsp: $idsp; idkh: $idkh";
        } else {
            $thongbao = 'thêm bình luận thất bại';
        }
    }
    include 'binhluan/add.php';
}

function binhluansanpham()
{
    if (isset($_GET['idsp']) && ($_GET['idsp']) > 0) {
        $id = $_GET['idsp'];
        $binhluan = load_binhluan($id);
    }
    include 'binhluan/binhluansanpham.php';
}

function suabinhluan()
{
    if (isset($_GET['idbl']) && $_GET['idbl'] > 0) {
        $id = $_GET['idbl'];
        $binhluan = loadone_binhluan($id);
    }
    include 'binhluan/update.php';
}

function updatebl()
{
    if (isset($_POST['suabl']) && ($_POST['suabl'])) {
        $id = $_POST['id'];
        $noidung = $_POST['noidung'];
        update_binhluan($id, $noidung);
        if ($noidung != "") {
            update_binhluan($id, $noidung);
            $binhluan = loadone_binhluan($id);
            $thongbao = 'sửa thành công';
        } else {
            $binhluan = loadone_binhluan($id);
            $thongbao = 'sửa thất bại';
        }
    }
    include 'binhluan/update.php';
}

function xoabinhluan()
{
    if (isset($_GET['idbl']) && ($_GET['idbl']) > 0) {
        $idbl = $_GET['idbl'];
        $idsp = $_GET['idsp'];
        delete_binhluan($idbl);
        header("location: index.php?act=binhluansanpham&&idsp=$idsp");
    }
}

<?php

function sanpham()
{
    $sanpham = san_pham();
    include 'sanpham/list.php';
}

function sanphamcungdanhmuc()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $sanpham = loadallsp_cungdanhmuc($id);
    }
    include 'sanpham/list.php';
}

function themsanpham()
{
    $danhmuc = loadall_danhmuc();
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
}

function suasanpham()
{
    $danhmuc = loadall_danhmuc();
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
}


function xoamemsanpham()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        soft_delete_sanpham($id);
        header("location: index.php?act=sanpham");
    }
    include 'sanpham/xoamem.php';
}

function sanphamxoamem()
{
    $sanpham = loadall_sanpham_soft($keyw = "", $iddm = 0);
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_sanpham($id);
        header("location: index.php?act=sanphamxoamem");
    }
    include 'sanpham/xoamem.php';
}


function khoiphucsanpham()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_sanpham($id);
        $sanpham = loadall_sanpham_soft($keyw = "", $iddm = 0);
        header("location: index.php?act=sanphamxoamem");
    }
    include 'sanpham/xoamem.php';
}

function xoasanpham()
{
    if (isset($_GET['id']) && ($_GET['id'])) {
        $id = $_GET['id'];
        hard_delete_sanpham($id);
        header("location: index.php?act=sanphamxoamem");
    }
}

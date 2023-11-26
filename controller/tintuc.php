<?php

function tintuc()
{
    $tintuc = load_tin_tuc();
    include 'tintuc/list.php';
}

function themtintuc()
{
    $danhmuc = loadall_danhmuc();
    if (isset($_POST['addtintuc']) && ($_POST['addtintuc'])) {
        $tieude = $_POST['tieude'];
        $noidung = $_POST['mota'];
        $iddm = $_POST['iddm'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        if ($tieude != "" && $noidung != "") {
            move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
            add_new($tieude, $noidung, $iddm, $img);
            $thongbao = 'thêm thành công tin tức';
        } else {
            $thongbao = 'thêm tin tức thất bại';
        }
    }
    include 'tintuc/add.php';
}

function suatintuc()
{
    if (isset($_GET['id']) && ($_GET['id']) != 0) {
        $id = $_GET['id'];
        $danhmuc = loadall_danhmuc();
        $tintuc = loadone_tin_tuc($id);
    }
    include 'tintuc/update.php';
}

function updatetintuc()
{
    if (isset($_POST['suanews']) && ($_POST['suanews']) != "") {
        $id = $_POST['id'];
        $tieude = $_POST['tieude'];
        $noidung = $_POST['mota'];
        $iddm = $_POST['iddm'];
        $target_dir = '../../view/img/';
        $img = $_FILES['img']['name'];
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($tieude != "" && $noidung != "") {
            update_news($id, $tieude, $noidung, $img, $iddm);
            $thongbao = 'sửa tin tức thành công';
            $tintuc = loadone_tin_tuc($id);
            $danhmuc = loadall_danhmuc();
        } else {
            $tintuc = loadone_tin_tuc($id);
            $danhmuc = loadall_danhmuc();
            $thongbao = 'sửa tin tức thất bại';
        }
    }
    include 'tintuc/update.php';
}

function xoamemtintuc()
{
    if (isset($_GET['id']) && ($_GET['id']) != 0) {
        $id = $_GET['id'];
        xoa_mem_news($id);
        header("location: index.php?act=tintuc");
    }
}

function tintucxoamem()
{
    $tintuc = load_tin_tuc_xoa_mem();
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $tintuc = restore_new($id);
        header("index.php?act=tintucxoamem");
    }
    include 'tintuc/xoamem.php';
}

function khoiphuctintuc()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_new($id);
        $tintuc = load_tin_tuc_xoa_mem();
        header("index.php?act=khoiphuctintuc");
    }
    include 'tintuc/xoamem.php';
}

function xoacungtintuc()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xoa_cung_news($id);
        $tintuc = load_tin_tuc_xoa_mem();
        header("index.php?act=khoiphuctintuc");
    }
    include 'tintuc/xoamem.php';
}


// khách hàng
function tintuc_khachhang()
{
    $tintuc = loadall_tin_tuc();
    include 'tintuc/tintuc.php';
}

function chitiettintuc(){
    if (isset($_GET['id']) && ($_GET['id']) != 0) {
        $id = $_GET['id'];
    }
    $tintuc = select_new();
    $danhmuc = loadall_danhmuc();
    $chitiettintuc = loadone_tin_tuc($id);
    include 'tintuc/chitiettintuc.php';
}

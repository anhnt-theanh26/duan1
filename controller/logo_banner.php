<?php

function banner()
{
    $banner = loadall_banner();
    include 'banner/list.php';
}

function suabanner()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $banner = loadone_banner($id);
    }
    include 'banner/update.php';
}

function updatebanner()
{
    if (isset($_POST['suabn']) && ($_POST['suabn'])) {
        $id = $_POST['id'];
        $tenbanner = $_POST['tenbanner'];
        $linkbanner = $_POST['linkbanner'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($tenbanner != "") {
            update_banner($id, $tenbanner, $linkbanner, $img);
            $banner = loadone_banner($id);
            $thongbao = 'update banner thành công';
        } else {
            $banner = loadone_banner($id);
            $thongbao = 'update thất bại';
        }
    }
    include 'banner/update.php';
}

function thembanner()
{
    if (isset($_POST['addbanner']) && ($_POST['addbanner'])) {
        $tenbanner = $_POST['tenbanner'];
        $link = $_POST['link'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($img != "") {
            add_banner($tenbanner, $img, $link);
            $thongbao = 'thêm banner thành công';
        } else {
            $thongbao = 'thêm thất bại';
        }
    }
    include 'banner/add.php';
}

function xoamembanner()
{
    if (isset($_GET['id']) && ($_GET['id'])) {
        $id = $_GET['id'];
        xoa_mem_banner($id);
        $banner = loadall_banner();
    }
    include 'banner/list.php';
}

function bannerxoamem()
{
    $banner = loadall_banner_xoa_mem();
    include 'banner/xoamem.php';
}

function xoacungbanner()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        delete_banner($id);
        $banner = loadall_banner_xoa_mem();
    }
    include 'banner/xoamem.php';
}

function restorebanner()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_banner($id);
        $banner = loadall_banner_xoa_mem();
    }
    include 'banner/xoamem.php';
}

function logo()
{
    $logo = select_logo();
    include 'logo/list.php';
}

function sualogo()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        $logo = select_logo_id($id);
    }
    include 'logo/update.php';
}

function updatelogo()
{
    if (isset($_POST['sualg']) && ($_POST['sualg']) > 0) {
        $id = $_POST['id'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        update_logo($id, $img);
        if ($img != '') {
            $thongbao = 'update logo thành công';
        } else {
            $thongbao = 'update logo thất bại';
        }
    }
    $logo = select_logo_id($id);
    include 'logo/update.php';
}

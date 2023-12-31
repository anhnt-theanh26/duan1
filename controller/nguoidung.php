<?php

function nguoidung()
{
    $nguoidung = loadall_nguoidung();
    include 'nguoidung/list.php';
}

function themnguoidung()
{
    if (isset($_POST['add']) && ($_POST['add'])) {
        $tennguoidung = $_POST['tennguoidung'];
        $tendangnhap = $_POST['tendangnhap'];
        $matkhau = $_POST['matkhau'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $vaitro = $_POST['vaitro'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        if ($tennguoidung != "" && $tendangnhap != "" && $matkhau != "" && $email != "" && $sdt != "" && $vaitro != "") {
            add_nguoi_dung($tennguoidung, $tendangnhap, $matkhau, $email, $sdt, $vaitro, $img);
            $thongbao = 'thêm người dùng thành công';
        } else {
            $thongbao = 'điền đầy đủ thông tin';
        }
    }
    include 'nguoidung/add.php';
}


function suanguoidung()
{
    if (isset($_GET['id']) && ($_GET['id'])) {
        $id = $_GET['id'];
        $nguoidung = loadone_nguoidung($id);
    }
    include 'nguoidung/update.php';
}

function updatenguoidung()
{
    if (isset($_POST['add']) && ($_POST['add'])) {
        $id = $_POST['id'];
        $tennguoidung = $_POST['tennguoidung'];
        $tendangnhap = $_POST['tendangnhap'];
        $matkhaucu = $_POST['matkhaucu'];
        $matkhau = $_POST['matkhau'];
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $vaitro = $_POST['vaitro'];
        $img = $_FILES['img']['name'];
        $target_dir = '../../view/img/';
        $target_file = $target_dir . basename($img);
        move_uploaded_file($_FILES['img']['tmp_name'], $target_file);
        $idnd = $_SESSION['admin']['id'];

        if ($tennguoidung != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $vaitro != "" && $matkhau != "") {
            update_nguoidung($id, $tennguoidung, $tendangnhap, md5($matkhau), $email, $sdt, $vaitro, $img);
            if ($idnd == $id) {
                $dangnhap = dangnhap($tendangnhap, md5($matkhau));
                if (is_array($dangnhap)) {
                    $_SESSION['admin'] = $dangnhap;
                }
            }
            $thongbao = 'update người dùng thành công';
        } else if ($tennguoidung != "" && $tendangnhap != "" && $email != "" && $sdt != "" && $vaitro != "" && $matkhau == "") {
            update_nguoidung($id, $tennguoidung, $tendangnhap, $matkhaucu, $email, $sdt, $vaitro, $img);
            if ($idnd == $id) {
                $dangnhap = dangnhap($tendangnhap, $matkhaucu);
                if (is_array($dangnhap)) {
                    $_SESSION['admin'] = $dangnhap;
                }
            }
            $thongbao = 'update người dùng thành công';
        } else {
            $thongbao = 'điền đầy đủ thông tin';
        }
    }
    $nguoidung = loadone_nguoidung($id);
    include 'nguoidung/update.php';
}

function xoamemnguoidung()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        xoa_mem_nguoi_dung($id);
        $nguoidung = loadall_nguoidung();
    }
    include 'nguoidung/list.php';
}

function nguoidungxoamem()
{
    $nguoidung = loadall_nguoidung_xoamem();
    include 'nguoidung/xoamem.php';
}

function restorenguoidung()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        restore_nguoidung($id);
    }
    $nguoidung = loadall_nguoidung_xoamem();
    include 'nguoidung/xoamem.php';
}

function xoacungnguoidung()
{
    if (isset($_GET['id']) && ($_GET['id']) > 0) {
        $id = $_GET['id'];
        delete_nguoidung($id);
    }
    $nguoidung = loadall_nguoidung_xoamem();
    include 'nguoidung/xoamem.php';
}

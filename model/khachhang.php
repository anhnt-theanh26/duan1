<?php

// load khach hang
function loadall_khachhang()
{
    $sql = "SELECT * FROM khachhang WHERE trang_thai = '0';";
    $listkh = pdo_query($sql);
    return $listkh;
}

// load khach hang de sua
function loadone_khachhang($id)
{
    $sql = "SELECT * FROM khachhang where id = '$id'";
    $kh = pdo_query_one($sql);
    return $kh;
}

// sua khach hang
function update_khachhang($id, $ten, $tendangnhap, $matkhau, $email, $sdt, $diachi, $img)
{
    $sql = "UPDATE khachhang SET ten_khach_hang = '$ten', ten_dang_nhap = '$tendangnhap', mat_khau = '$matkhau' , email_khach_hang = '$email', sdt_khach_hang = '$sdt', dia_chi_khach_hang = '$diachi' ";
    if ($img != "") {
        $sql .= ", img_khach_hang = '$img' ";
    }
    $sql .= "WHERE id = '$id';";
    pdo_execute($sql);
}

function loadall_khachhang_xoamem()
{
    $sql = "SELECT * FROM khachhang WHERE trang_thai = '1';";
    $listkh = pdo_query($sql);
    return $listkh;
}

function xoamem_khachhang($id)
{
    $sql = "UPDATE khachhang SET trang_thai = '1' WHERE id = '$id';";
    pdo_execute($sql);
}

function xoacung_khachhang($id)
{
    $sql = "DELETE FROM khachhang WHERE id = '$id';";
    pdo_execute($sql);
}

function restore_khachhang($id)
{
    $sql = "UPDATE khachhang SET trang_thai = '0' WHERE id = '$id';";
    pdo_execute($sql);
}

function add_khachhang($ten, $tendangnhap, $matkhau, $email, $sdt, $diachi, $img)
{
    if ($img != "") {
        $sql = "INSERT INTO 
    khachhang(ten_khach_hang, ten_dang_nhap, mat_khau, email_khach_hang, sdt_khach_hang, dia_chi_khach_hang, img_khach_hang) 
    VALUES('$ten', '$tendangnhap', '$matkhau', '$email', '$sdt', '$diachi', '$img');";
    } else {
        $sql = "INSERT INTO 
    khachhang(ten_khach_hang, ten_dang_nhap, mat_khau, email_khach_hang, sdt_khach_hang, dia_chi_khach_hang) 
    VALUES('$ten', '$tendangnhap', '$matkhau', '$email', '$sdt', '$diachi');";
    }
    pdo_execute($sql);
}

function dang_nhap_khach_hang($tendangnhap, $matkhau){
    $sql = "SELECT * FROM khachhang WHERE ten_dang_nhap = '$tendangnhap' AND mat_khau = '$matkhau' AND trang_thai = '0';";
    $listkh = pdo_query_one($sql);
    return $listkh;
}


<?php

function loadall_khuyenmai()
{
    $sql = "SELECT * FROM khuyenmai WHERE trang_thai = '0';";
    $khuyenmai = pdo_query($sql);
    return $khuyenmai;
}

function loadall_khuyenmai_xoamem()
{
    $sql = "SELECT * FROM khuyenmai WHERE trang_thai = '1';";
    $khuyenmai = pdo_query($sql);
    return $khuyenmai;
}

function loadall_khuyenmai_conhan()
{

    $date = getdate();
    $ngayhomnay = $date['year'] . '/' . $date['mon'] . '/' . $date['mday'];
    $sql = "SELECT * FROM khuyenmai WHERE ngay_bat_dau <= '$ngayhomnay' AND ngay_ket_thuc >= '$ngayhomnay' AND trang_thai = '0';";
    // $sql = "SELECT * FROM khuyenmai WHERE ngay_ket_thuc - ngay_bat_dau >= 0 AND trang_thai = '0';";
    $khuyenmai = pdo_query($sql);
    return $khuyenmai;
}

function loadone_khuyenmai($id)
{
    $sql = "SELECT * FROM khuyenmai WHERE id = '$id';";
    $khuyenmai = pdo_query_one($sql);
    return $khuyenmai;
}

function update_khach_hang($id, $makm, $phantram, $batdau, $ketthuc)
{
    $sql = "UPDATE khuyenmai SET ma_khuyen_mai = '$makm', phan_tram_phuyen_mai = '$phantram', ngay_bat_dau = '$batdau', ngay_ket_thuc = '$ketthuc' WHERE id = '$id';";
    pdo_execute($sql);
}

function xoa_mem_khuyen_mai($id)
{
    $sql = "UPDATE khuyenmai SET trang_thai = '1' WHERE id = '$id';";
    pdo_execute($sql);
}

function restore_khuyen_mai($id)
{
    $sql = "UPDATE khuyenmai SET trang_thai = '0' WHERE id = '$id';";
    pdo_execute($sql);
}

function xoa_cung_khuyen_mai($id)
{
    $sql = "DELETE FROM khuyenmai WHERE id = '$id';";
    pdo_execute($sql);
}

function themdear($makm, $phantram, $batdau, $ketthuc)
{
    $sql = "INSERT INTO khuyenmai(ma_khuyen_mai, phan_tram_phuyen_mai, ngay_bat_dau, ngay_ket_thuc) 
    VALUES('$makm', '$phantram', '$batdau', '$ketthuc');";
    pdo_execute($sql);
}

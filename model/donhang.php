<?php

function dathang($idsp, $idkh, $soluong, $gia, $tongtien)
{
    $sql = "INSERT INTO donhang(id_sp, id_kh, so_luong, gia, tong_tien) VALUES('$idsp', '$idkh', '$soluong', '$gia', '$tongtien');";
    pdo_execute($sql);
}
function update_so_luong_da_ban($idsp, $soluong)
{
    $sql = "UPDATE sanpham SET da_ban = da_ban + '$soluong' WHERE id = '$idsp';";
    pdo_execute($sql);
}

function don_hang()
{
    $sql = "SELECT * FROM donhang WHERE 1;";
    $donhang = pdo_query($sql);
    return $donhang;
}

function don_hang_dat(){
    $sql = "SELECT donhang.id as id, sanpham.ten_san_pham as tensp, khachhang.ten_khach_hang as tenkh, sanpham.gia_san_pham, donhang.tong_tien, donhang.ngay_dat, donhang.so_luong FROM donhang JOIN sanpham on donhang.id_sp = sanpham.id JOIN khachhang on khachhang.id = donhang.id_kh;";
    $donhang = pdo_query($sql);
    return $donhang;
}
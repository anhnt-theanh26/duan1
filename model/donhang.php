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

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


// chờ xác nhận đơn hàng
function cho_xac_nhan()
{
    $sql = "SELECT hoadon.id, khachhang.ten_khach_hang, hoadon.ngay_dat, hoadon.tong_tien, hoadon.dia_chi, hoadon.sdt FROM hoadon JOIN khachhang on hoadon.id_kh=khachhang.id WHERE hoadon.trang_thai = '0';";
    $donhang = pdo_query($sql);
    return $donhang;
}

// đon hàng đã xác nhận 
function dang_chuan_bi()
{
    $sql = "SELECT hoadon.id, khachhang.ten_khach_hang, hoadon.ngay_dat, hoadon.tong_tien, hoadon.dia_chi, hoadon.sdt FROM hoadon JOIN khachhang on hoadon.id_kh=khachhang.id WHERE hoadon.trang_thai = '1';";
    $donhang = pdo_query($sql);
    return $donhang;
}

// đơn hàng đang giao
function dang_giao()
{
    $sql = "SELECT hoadon.id, khachhang.ten_khach_hang, hoadon.ngay_dat, hoadon.tong_tien, hoadon.dia_chi, hoadon.sdt FROM hoadon JOIN khachhang on hoadon.id_kh=khachhang.id WHERE hoadon.trang_thai = '2';";
    $donhang = pdo_query($sql);
    return $donhang;
}

function da_giao()
{
    $sql = "SELECT hoadon.id, khachhang.ten_khach_hang, hoadon.ngay_dat, hoadon.tong_tien, hoadon.dia_chi, hoadon.sdt FROM hoadon JOIN khachhang on hoadon.id_kh=khachhang.id WHERE hoadon.trang_thai = '3';";
    $donhang = pdo_query($sql);
    return $donhang;
}

// xác nhận đơn hàng
function xac_nhan_don_hang($id)
{
    $sql = "UPDATE hoadon SET trang_thai = '1' WHERE id = '$id';";
    pdo_execute($sql);
}

// chuẩn bị đơn hàng
function chuan_bi_xong_don_hang($id)
{
    $sql = "UPDATE hoadon SET trang_thai = '2' WHERE id = '$id';";
    pdo_execute($sql);
}

// đã giao thành công
function da_giao_don_hang($id)
{
    $sql = "UPDATE hoadon SET trang_thai = '3' WHERE id = '$id';";
    pdo_execute($sql);
}

// chi tiết hóa đơn của từng khách hàng
function hoa_don_tung_khach_hang($id){
    $sql = "SELECT  chitiethoadon.id, sanpham.ten_san_pham, sanpham.gia_san_pham, chitiethoadon.so_luong, chitiethoadon.thanh_tien FROM hoadon JOIN khachhang on hoadon.id_kh = khachhang.id JOIN chitiethoadon on chitiethoadon.id_hd = hoadon.id JOIN sanpham on chitiethoadon.id_sp = sanpham.id WHERE hoadon.id_kh = '$id';";
    $hoadon = pdo_query($sql);
    return $hoadon;
}

function chi_tiet_hoa_don($id){
    $sql = "SELECT chitiethoadon.id, sanpham.ten_san_pham, chitiethoadon.so_luong, sanpham.gia_san_pham, chitiethoadon.thanh_tien FROM chitiethoadon JOIN sanpham on chitiethoadon.id_sp = sanpham.id JOIN hoadon on chitiethoadon.id_hd = hoadon.id WHERE hoadon.id = '$id';";
    $donhang = pdo_query($sql);
    return $donhang;
}
function don_hang_dat(){
    $sql = "SELECT donhang.id as id, sanpham.ten_san_pham as tensp, khachhang.ten_khach_hang as tenkh, sanpham.gia_san_pham, donhang.tong_tien, donhang.ngay_dat, donhang.so_luong FROM donhang JOIN sanpham on donhang.id_sp = sanpham.id JOIN khachhang on khachhang.id = donhang.id_kh WHERE donhang.trang_thai = '0';";
    $donhang = pdo_query($sql);
    return $donhang;
}

function don_hang_da_giao(){
    $sql = "SELECT donhang.id as id, sanpham.ten_san_pham as tensp, khachhang.ten_khach_hang as tenkh, sanpham.gia_san_pham, donhang.tong_tien, donhang.ngay_dat, donhang.so_luong FROM donhang JOIN sanpham on donhang.id_sp = sanpham.id JOIN khachhang on khachhang.id = donhang.id_kh WHERE donhang.trang_thai = '1';";
    $donhang = pdo_query($sql);
    return $donhang;
}
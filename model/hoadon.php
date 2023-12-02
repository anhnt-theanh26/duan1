<?php
// tạo hóa đơn
function insert_hoadon($idkh, $tongtien, $diachi, $email, $tenkhachhang, $sdt, $khuyenmai)
{
    $conn = pdo_get_connection();
    $date = getdate();
    $ngayhomnay = $date['year'] . '/' . $date['mon'] . '/' . $date['mday'];
    $sql = "INSERT INTO hoadon(id_kh, tong_tien, dia_chi, email, ten_kh, sdt, ngay_dat, khuyen_mai) 
    VALUES('$idkh', '$tongtien', '$diachi', '$email', '$tenkhachhang', '$sdt', '$ngayhomnay', '$khuyenmai');";
    $conn->exec($sql);
    $last_id = $conn->lastInsertId();
    return $last_id;
}
//tạo chi tiết hóa đơn
function insert_hoadon_chitiet($idhd, $idsp, $soluong, $giakhuyenmai, $thanhtien)
{
    $sql = "INSERT INTO chitiethoadon(id_hd, id_sp, so_luong, don_gia, thanh_tien) 
    VALUES('$idhd', '$idsp', '$soluong', '$giakhuyenmai', '$thanhtien');";
    pdo_execute($sql);
}
// update khi đặt hàng
function update_so_luong_da_ban($idsp, $soluong)
{
    $sql = "UPDATE sanpham SET so_luong = so_luong - $soluong, da_ban = da_ban + $soluong WHERE id = '$idsp'";
    pdo_execute($sql);
}

// lọc hóa đơn
function loc_hoa_don($id)
{
    $sql = "SELECT * FROM hoadon WHERE hoadon.trang_thai = '$id' ORDER BY id DESC;";
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
function hoa_don_khach_hang($id)
{
    $sql = "SELECT hoadon.id, hoadon.ten_kh, hoadon.ngay_dat, hoadon.tong_tien, hoadon.dia_chi, hoadon.sdt, hoadon.trang_thai FROM hoadon JOIN khachhang on hoadon.id_kh=khachhang.id WHERE hoadon.id_kh = '$id' ORDER BY hoadon.id DESC;";
    $hoadon = pdo_query($sql);
    return $hoadon;
}
// chi tiết hóa đơn của từng khách hàng
function hoa_don_tung_khach_hang($id)
{
    $sql = "SELECT chitiethoadon.id, sanpham.ten_san_pham, sanpham.gia_san_pham, chitiethoadon.so_luong, chitiethoadon.thanh_tien FROM hoadon JOIN khachhang on hoadon.id_kh = khachhang.id JOIN chitiethoadon on chitiethoadon.id_hd = hoadon.id JOIN sanpham on chitiethoadon.id_sp = sanpham.id WHERE hoadon.id_kh = '$id';";
    $hoadon = pdo_query($sql);
    return $hoadon;
}

function chi_tiet_hoa_don($id)
{
    $sql = "SELECT chitiethoadon.id, sanpham.id as idsp, sanpham.iddm as iddm, sanpham.ten_san_pham, hoadon.trang_thai, hoadon.ngay_dat, chitiethoadon.so_luong, hoadon.ten_kh, hoadon.dia_chi, hoadon.sdt, hoadon.email, chitiethoadon.don_gia, chitiethoadon.thanh_tien 
    FROM chitiethoadon 
    JOIN sanpham on chitiethoadon.id_sp = sanpham.id 
    JOIN hoadon on chitiethoadon.id_hd = hoadon.id 
    WHERE hoadon.id = '$id' ORDER BY chitiethoadon.id DESC;";
    $donhang = pdo_query($sql);
    return $donhang;
}
function don_hang_dat()
{
    $sql = "SELECT donhang.id as id, sanpham.ten_san_pham as tensp, khachhang.ten_khach_hang as tenkh, sanpham.gia_san_pham, donhang.tong_tien, donhang.ngay_dat, donhang.so_luong FROM donhang JOIN sanpham on donhang.id_sp = sanpham.id JOIN khachhang on khachhang.id = donhang.id_kh WHERE donhang.trang_thai = '0';";
    $donhang = pdo_query($sql);
    return $donhang;
}

function don_hang_da_giao()
{
    $sql = "SELECT donhang.id as id, sanpham.ten_san_pham as tensp, khachhang.ten_khach_hang as tenkh, sanpham.gia_san_pham, donhang.tong_tien, donhang.ngay_dat, donhang.so_luong FROM donhang JOIN sanpham on donhang.id_sp = sanpham.id JOIN khachhang on khachhang.id = donhang.id_kh WHERE donhang.trang_thai = '1';";
    $donhang = pdo_query($sql);
    return $donhang;
}

function huy_don_hang($id)
{
    $sql = "DELETE FROM hoadon WHERE id = '$id';";
    $sql1 = "DELETE FROM chitiethoadon WHERE id_hd = '$id';";
    pdo_execute($sql);
    pdo_execute($sql1);
}

// load số lượng sản phẩm và id của hóa đơn khi hủy
function load_so_luong_san_pham_huy($id)
{
    $sql = "SELECT chitiethoadon.id_sp, chitiethoadon.so_luong FROM chitiethoadon WHERE chitiethoadon.id_hd = '$id';";
    $donhang = pdo_query($sql);
    return $donhang;
}

// function update_so_luong_san_pham_khach_hang_huy($id_sp, $so_luong)
// {
//     $sql = "UPDATE sanpham SET so_luong = so_luong + $so_luong, da_ban = da_ban - $so_luong WHERE id = '$id_sp';";
//     pdo_execute($sql);
// }
function update_so_luong_da_ban_khachhang_huy($id_sp, $so_luong)
{
    $sql = "UPDATE sanpham SET so_luong = so_luong + $so_luong, da_ban = da_ban - $so_luong WHERE id = '$id_sp';";
    pdo_execute($sql);
}

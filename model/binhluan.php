<?php
// load binh luan cua san pham
function load_binhluan($id)
{
    $sql = "SELECT binhluan.id as idbl, sanpham.id as idsp, binhluan.noi_dung, binhluan.ngay_binh_luan, khachhang.ten_khach_hang 
    FROM `binhluan` 
    JOIN sanpham on binhluan.id_sp=sanpham.id 
    JOIN khachhang on khachhang.id = binhluan.id_kh 
    WHERE sanpham.id = '$id';";
    $binhluan = pdo_query($sql);
    return $binhluan;
}
// load so binh luan cua san pham đã sưar
function load_so_binh_luan()
{
    // $sql = "SELECT *,count(binhluan.id) as sobinhluan, sanpham.id, sanpham.ten_san_pham, sanpham.iddm from sanpham join binhluan on sanpham.id=binhluan.id_sp group by sanpham.id;";
    $sql = "SELECT count(binhluan.id) as sobinhluan, sanpham.img_dai_dien, sanpham.id as idsp, sanpham.ten_san_pham from sanpham join binhluan on sanpham.id=binhluan.id_sp group by sanpham.id;";
    $binhluan = pdo_query($sql);
    return $binhluan;
}
//them binh luan
function insert_binhluan($noidung, $idsp, $idkh)
{
    $sql = "INSERT into binhluan(noi_dung, id_sp, id_kh) VALUES('$noidung', '$idsp', '$idkh');";
    pdo_execute($sql);
}

function loadone_binhluan($id)
{
    $sql = "SELECT * FROM binhluan where id = '$id';";
    $binhluan = pdo_query_one($sql);
    return $binhluan;
}

function update_binhluan($id, $noidung)
{
    $sql = "UPDATE binhluan SET noi_dung = '$noidung' WHERE id = '$id'";
    pdo_execute($sql);
}
function binhluannews($id)
{
    $sql = "SELECT 
	news.id as idn,
    binhluannews.id as idbl, 
    taikhoan.user as user,
    binhluannews.noidung as noidung, 
    taikhoan.img as img, 
    binhluannews.ngaybinhluan as date
    from binhluannews 
    JOIN news on binhluannews.idn=news.id 
    JOIN taikhoan on binhluannews.iduser=taikhoan.id 
    WHERE news.id = $id" . ' ORDER BY binhluannews.id DESC';
    $binhluan = pdo_query($sql);
    return $binhluan;
}

// xoa binh luan
function delete_binhluan($id)
{
    $sql = "DELETE from binhluan where id = '$id';";
    pdo_execute($sql);
}

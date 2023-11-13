<?php
// load binh luan cua san pham
function load_binhluan($id){
    $sql = "SELECT binhluan.id as idbl, sanpham.id as idsp, binhluan.noidung, binhluan.ngaybinhluan, taikhoan.user 
    FROM `binhluan` 
    JOIN sanpham on binhluan.idpro=sanpham.id 
    JOIN taikhoan on taikhoan.id = binhluan.iduser 
    WHERE sanpham.id = $id;";
    $binhluan = pdo_query($sql);
    return $binhluan;
}
// load so binh luan cua san pham
function load_so_binh_luan(){
    $sql = "SELECT *,count(binhluan.id) as sobinhluan, sanpham.id, sanpham.name, sanpham.iddm from sanpham join binhluan on sanpham.id=binhluan.idpro group by sanpham.id;";
    // $sql = "SELECT COUNT(binhluan.idpro) as sobl, sanpham.id FROM `binhluan` JOIN sanpham on binhluan.idpro=sanpham.id JOIN taikhoan on taikhoan.id = binhluan.iduser WHERE sanpham.id = 1;";
    $binhluan = pdo_query($sql);
    return $binhluan;
}
//them binh luan
function insert_binhluan($noidung, $iduser, $idn){
    $sql = "INSERT into binhluannews(noidung, iduser, idn) values('$noidung', '$iduser', '$idn')";
    pdo_execute($sql);
}

function binhluannews($id){
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
    WHERE news.id = $id".' ORDER BY binhluannews.id DESC';
    $binhluan = pdo_query($sql);
    return $binhluan;
}

// xoa binh luan
function delete_binhluan($id){
    $sql = "DELETE from binhluan where id = '$id';";
    pdo_execute($sql);
}

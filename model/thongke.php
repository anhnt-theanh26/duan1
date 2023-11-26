<?php
// thong ke
function loadall_sanpham_thongke()
{
    $sql = "SELECT dm.id, dm.name, count(*) soluong, min(price) gia_min, max(price) gia_max, avg(price) gia_avg 
    from danhmuc as dm 
    join sanpham as sp on dm.id=sp.iddm 
    group by dm.id, dm.name 
    order by 'soluong' desc;";
    return pdo_query($sql);
}

function thong_ke()
{
    $sql = "SELECT sanpham.id, sanpham.ten_san_pham, chitiethoadon.don_gia, 
    SUM(chitiethoadon.so_luong) so_luong_da_ban, 
    SUM(chitiethoadon.thanh_tien) thanh_tien 
    FROM chitiethoadon 
    JOIN sanpham on chitiethoadon.id_sp = sanpham.id 
    GROUP BY id_sp ORDER BY SUM(chitiethoadon.thanh_tien) DESC;";
    return pdo_query($sql);
}

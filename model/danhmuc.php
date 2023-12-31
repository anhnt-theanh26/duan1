<?php
// load danh muc
function loadall_danhmuc()
{
    $sql = "select * from danhmuc where trang_thai = '0' order by id desc";
    $listdanhmuc = pdo_query($sql);
    return $listdanhmuc;
}
// //load ten danh muc
// function load_name_danhmuc($iddm){
//     $sql = "select * from danhmuc where id=".$iddm;
//     $danhmuc = pdo_query_one($sql);
//     extract($danhmuc);
//     return $name;
// }

// load danh muc xoa mem
function loadall_danhmuc_xoamem()
{
    $sql = "select * from danhmuc where trang_thai = '1' order by id desc";
    $listdanhmuc = pdo_query($sql);
    return $listdanhmuc;
}

// them danh muc 
function insert_danhmuc($tenloai, $img_danh_muc)
{
    $sql = "insert into danhmuc(ten_danh_muc, img_danh_muc) values ('$tenloai', '$img_danh_muc')";
    pdo_execute($sql);
}

// load one danh muc de sua
function loadone_danhmuc($id)
{
    $sql = "select * from danhmuc where id = '$id'";
    $danhmuc = pdo_query_one($sql);
    return $danhmuc;
}

// xoa danh muc
function delete_danhmuc($id)
{
    $sql = "delete from danhmuc where id = '$id'";
    pdo_execute($sql);
}

// xoa mem
function delete_mem($id)
{
    $sql = "update danhmuc set trang_thai = '1' where id = '$id'";
    pdo_execute($sql);
}

// khoi phuc danh muc
function restore_danhmuc($id)
{
    $sql = "update danhmuc set trang_thai = '0' where id = '$id'";
    pdo_execute($sql);
}

// sua danh muc
function fix_danhmuc($id, $name, $img_danh_muc)
{
    $sql = "update danhmuc set ten_danh_muc = '$name' ";
    if ($img_danh_muc != "") {
        $sql .= ",img_danh_muc = '$img_danh_muc'";
    }
    $sql .= " where id = '$id'";
    pdo_execute($sql);
}

<?php
// load danh muc
function loadall_danhmuc(){
    $sql = "select * from danhmuc order by id desc";
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

// them danh muc 
function insert_danhmuc($tenloai){
    $sql = "insert into danhmuc(name) values ('$tenloai')";
    pdo_execute($sql);
}

// load one danh muc de sua
function loadone_danhmuc($id){
    $sql = "select * from danhmuc where id = '$id'";
    $danhmuc = pdo_query_one($sql);
    return $danhmuc;
}

// xoa danh muc
function delete_danhmuc($id){
    $sql = "delete from danhmuc where id = '$id'";
    pdo_execute($sql);
}
// sua danh muc
function fix_danhmuc($id, $name){
    $sql = "update danhmuc set ten_danh_muc = '$name' where id = '$id'";
    pdo_execute($sql);
}

?>
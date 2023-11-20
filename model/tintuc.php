<?php
//
function select_new()
{
    $sql = "SELECT danhmuc.ten_danh_muc, danhmuc.id as iddm, tintuc.tieu_de, tintuc.img_tin_tuc, tintuc.ngay_dang, tintuc.id as idtt FROM tintuc JOIN danhmuc ON tintuc.iddm=danhmuc.id WHERE tintuc.trang_thai = '0' ORDER BY `tintuc`.`img_tin_tuc` ASC LIMIT 0,3";
    $list = pdo_query($sql);
    return $list;
}
// select danhmuc.name, taikhoan.user, news.title, news.text, news.img from news JOIN taikhoan on news.iduser = taikhoan.id join danhmuc on news.iddm=danhmuc.id where news.id =
// select * from news JOIN taikhoan on news.iduser = taikhoan.id join danhmuc on news.iddm=danhmuc.id AND news.id = '$id'
function chitietnew($id)
{
    $sql = "select *, taikhoan.user as name, news.id as idn, danhmuc.name as namedm, danhmuc.id as iddm from news JOIN taikhoan on news.iduser = taikhoan.id join danhmuc on news.iddm=danhmuc.id where news.id = '$id'";
    $news = pdo_query_one($sql);
    return $news;
}

// đã sửa
function loadone_tin_tuc($id)
{
    $sql = "SELECT * FROM tintuc WHERE trang_thai = '0' and id = '$id';";
    $tintuc = pdo_query_one($sql);
    return $tintuc;
}
//đã sửa
function update_news($id, $tieude, $noidung, $img, $iddm)
{
    $sql = "UPDATE tintuc SET tieu_de = '$tieude', noi_dung = '$noidung', iddm = '$iddm'";
    if ($img != "") {
        $sql .= ", img_tin_tuc = '$img'";
    }
    $sql .= " WHERE id = '$id';";
    pdo_execute($sql);
}
//đã sửa
function xoa_mem_news($id)
{
    $sql = "UPDATE tintuc SET trang_thai = '1' WHERE id = '$id';";
    pdo_execute($sql);
}


// đã sửa
function load_tin_tuc()
{
    $sql = "SELECT * FROM tintuc WHERE trang_thai = '0';";
    $tintuc = pdo_query($sql);
    return $tintuc;
}
// đã sửa
function add_new($tieude, $noidung, $iddm, $img)
{
    $sql = "INSERT INTO tintuc(tieu_de, noi_dung, iddm, img_tin_tuc) VALUES('$tieude', '$noidung', '$iddm', '$img');";
    pdo_execute($sql);
}
function load_tin_tuc_xoa_mem()
{
    $sql = "SELECT * FROM tintuc WHERE trang_thai = '1';";
    $tintuc = pdo_query($sql);
    return $tintuc;
}
function restore_new($id)
{
    $sql = "UPDATE tintuc SET trang_thai = '0' WHERE id = '$id';";
    pdo_execute($sql);
}

function xoa_cung_news($id)
{
    $sql = "DELETE FROM tintuc WHERE id = '$id';";
    pdo_execute($sql);
}

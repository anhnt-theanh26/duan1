<?php

function select_logo()
{
    $sql = "select * from logo where 1";
    return pdo_query_one($sql);
}

function select_logo_id($id)
{
    $sql = "select * from logo where id = '$id'";
    return pdo_query_one($sql);
}

function update_logo($id, $gioithieu, $diachi, $sdt, $email, $img)
{
    $sql = "UPDATE logo SET gioi_thieu = '$gioithieu', dia_chi = '$diachi', sdt = '$sdt', email = '$email' ";
    if ($img != "") {
        $sql .= ", img='$img'";
    }
    $sql .= " WHERE id = '$id';";
    pdo_execute($sql);
}

// banner
function loadall_banner()
{
    $sql = "SELECT * FROM banner WHERE trang_thai = '0';";
    $banner = pdo_query($sql);
    return $banner;
}

function loadall_banner_xoa_mem()
{
    $sql = "SELECT * FROM banner WHERE trang_thai = '1';";
    $banner = pdo_query($sql);
    return $banner;
}

function delete_banner($id)
{
    $sql = "DELETE from banner where id = '$id';";
    pdo_execute($sql);
}

function loadone_banner($id)
{
    $sql = "SELECT * FROM banner WHERE id = '$id';";
    $banner = pdo_query_one($sql);
    return $banner;
}

function update_banner($id, $tenbanner, $linkbanner, $img)
{
    $sql = "UPDATE banner SET ten_banner = '$tenbanner', link = '$linkbanner'";
    if ($img != "") {
        $sql .= ", img_banner = '$img'";
    }
    $sql .= " WHERE id = '$id';";
    pdo_execute($sql);
}

function add_banner($tenbanner, $img, $link)
{
    $sql = "INSERT INTO banner(ten_banner, img_banner, link) VALUES('$tenbanner', '$img', '$link');";
    pdo_execute($sql);
}

function xoa_mem_banner($id)
{
    $sql = "UPDATE banner SET trang_thai = '1' WHERE id = '$id';";
    pdo_execute($sql);
}

function restore_banner($id)
{
    $sql = "UPDATE banner SET trang_thai = '0' WHERE id = '$id';";
    pdo_execute($sql);
}

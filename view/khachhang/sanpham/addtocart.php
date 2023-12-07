<?php
session_start();
if (!isset($_SESSION['giohang'])) {
    $_SESSION['giohang'];
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $price = $_POST['price'];

    $index = false;
    if (!empty($_SESSION['giohang'])) {
        $index = array_search($id, array_column($_SESSION['giohang'], 'id'));
    }
    if ($index !== false) {
        $_SESSION['giohang'][$index]['quantity'] += 1;
    } else {
        $product = [
            'id' => $id,
            'name' => $name,
            'price' => $price,
            'quantity' => 1,
        ];
        $_SESSION['giohang'][] = $product;
    }
    echo count($_SESSION['giohang']);
} else {
    echo 'yeeu cau khong hop le';
}
?>
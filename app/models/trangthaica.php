<?php
function loadId_san(){
    $sql = "SELECT id_san from tb_san";
    return pdo_query($sql);
}
function loadId_ca($ten_ca){
    $sql = "SELECT id_ca from tb_ca_san where ten_ca = '$ten_ca'";
    return pdo_query($sql);
}
    function trang_thai_ca($id_san){
        $sql = "SELECT tb_san.id_san, tb_ca_san.ten_ca, tb_trang_thai.trang_thai,tb_ca_san.id_ca, tb_trang_thai.id FROM tb_trang_thai_ca
        join tb_san on tb_trang_thai_ca.id_san = tb_san.id_san
        join tb_ca_san on tb_trang_thai_ca.id_ca = tb_ca_san.id_ca
        join tb_trang_thai on tb_trang_thai_ca.id_trang_thai= tb_trang_thai.id
        WHERE tb_san.id_san = '$id_san'";
        return pdo_query($sql);
    }
    function them_trang_thai_ca($id_ca, $id_san){
        $sql = "INSERT into tb_trang_thai_ca values ('NULL', '1', '$id_ca', '$id_san')";
        pdo_execute($sql);
    }

    function loadIdsan($ten_san){
        $sql = "SELECT id_san from tb_san where ten_san= '$ten_san'";
        return pdo_query($sql);
    }

?>
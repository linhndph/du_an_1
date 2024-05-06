<?php
function loadAllDatSan($id_san){
    $sql= "SELECT tb_san.ten_san, tb_bien_the.gia,tb_bien_the.ten_bien_the FROM tb_dat_san 
    join tb_san on tb_dat_san.id_san = tb_san.id_san 
    join tb_bien_the on tb_dat_san.id_bien_the= tb_bien_the.id_bien_the
    where tb_san.id_san= '$id_san' ";
     $listdatsan = pdo_query($sql);
    // var_dump($listdatsan);
    //  die();
     return $listdatsan;
     
}

function update_datsan($id_ctdatsan,$trang_thaihd){
    $sql= "update chi_tiet_dat_san set  trang_thaihd='".$trang_thaihd."' where id_ctdatsan=".$id_ctdatsan;
    pdo_execute($sql);

}
function update_trangthaica($id_san,$id_ca,$id_trang_thai){
    $sql="UPDATE tb_trang_thai_ca
    SET id_trang_thai = $id_trang_thai
    WHERE id_ca = $id_ca AND id_san = $id_san;";
    pdo_execute($sql);

}




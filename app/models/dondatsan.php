<?php 
function insert_hoa_don($ma_dat_san, $tong_don_hang, $id_tk,$ten_kh,$sdt_kh ,$email,$dia_chi_kh,$ten_san,$ca_san,$trang_thaihd,$ngay_su_dung){
    $sql = "INSERT INTO `chi_tiet_dat_san`(`ma_dat_san`, `tong_don_hang`,`id_tai_khoan` ,`ten_kh`, `sdt_kh`,`email`,`dia_chi_kh`,`ten_san`,`ca_san`,`trang_thaihd`,`ngay_su_dung`) 
    VALUES ('$ma_dat_san', '$tong_don_hang','$id_tk' ,'$ten_kh', '$sdt_kh','$email','$dia_chi_kh','$ten_san','$ca_san','$trang_thaihd','$ngay_su_dung');";
    pdo_execute($sql);
    
}
function load_billdatsan(){
    $sql="select * from chi_tiet_dat_san join tb_tai_khoan on chi_tiet_dat_san.id_tai_khoan= tb_tai_khoan.id_tai_khoan";
    $bill= pdo_query($sql);
    return $bill;

}
function loadone_billdatsan($id_tai_khoan){
    $sql= "select * from chi_tiet_dat_san join tb_tai_khoan on chi_tiet_dat_san.id_tai_khoan= tb_tai_khoan.id_tai_khoan where chi_tiet_dat_san.id_tai_khoan='$id_tai_khoan'";
    $billsan= pdo_query($sql);
    return $billsan;

}

function loadone_billdatsan1($id_tai_khoan){
    $sql= "select * from chi_tiet_dat_san join tb_tai_khoan on chi_tiet_dat_san.id_tai_khoan= tb_tai_khoan.id_tai_khoan where chi_tiet_dat_san.id_tai_khoan='$id_tai_khoan' order by id_ctdatsan desc limit 1 ";
    $billsan= pdo_query($sql);
    return $billsan;

}
function Load_Oneev($id, $sp){
    $one = $sp;
    $sql = "SELECT * FROM $one WHERE id_ctdatsan = '$id'";
    return  pdo_query_one($sql);
    
}
function delete_datsan($id_ctdatsan){
    $sql="DELETE FROM chi_tiet_dat_san where id_ctdatsan= $id_ctdatsan and trang_thaihd like N'%hờ%'";
    pdo_execute($sql);
    
}

function delete_datsanhd123($id_ctdatsan){
    $sql="SELECT * FROM chi_tiet_dat_san where id_ctdatsan= $id_ctdatsan and trang_thaihd like N'%hờ%'";
    // die($sql);
    
    
    return pdo_query($sql);
    
}
?>
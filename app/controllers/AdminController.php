<?php 
include "../views/Admin/layout/header.php";
?>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
<?php 
include "../views/Admin/layout/nav3.php";
?>
 
<?php 
include "../views/Admin/layout/boxleft.php";
?>
<div class="content-wrapper">
<?php

if (isset($_GET['act']) && ($_GET['act']!= "")) {
    $act = $_GET['act'];
    switch ($act) {
        //Quản lý biến thể
        case 'dsbienthe':
            include '../views/Admin/quanlybienthe/danhsachbienthe.php';
            break;

        case 'thembienthe':
                include '../views/Admin/quanlybienthe/add.php';
                break;

        case 'suabienthe':
            include '../views/Admin/quanlybienthe/update.php';
            break;

        case 'xoabienthe':
                include '../views/Admin/quanlybienthe/danhsachbienthe.php';
                break;

        //Quản lý bình luận
        case 'dsbinhluan':
            include '../views/Admin/quanlybinhluan/danhsachbinhluan.php';
            break;

        case 'xoabinhluan':
            include '../views/Admin/quanlybinhluan/danhsachbinhluan.php';
            break;

        //Quản lý ca sân
        case 'dscasan':
            include '../views/Admin/quanlycasan/danhsachcasan.php';
            break;

        case 'themcasan':
            include '../views/Admin/quanlycasan/add.php';
            break;

        case 'suacasan':
            include '../views/Admin/quanlycasan/update.php';
            break;

        case 'xoacasan':
            include '../views/Admin/quanlycasan/danhsachcasan.php';
            break;
        
        //Quản lý danh mục
        case 'dsdanhmuc':
            include '../views/Admin/quanlydanhmuc/danhsachdanhmuc.php';
            break;

        case 'themdanhmuc':
            include '../views/Admin/quanlydanhmuc/add.php';
            break;

        case 'suadanhmuc':
            include '../views/Admin/quanlydanhmuc/update.php';
            break;

        case 'xoadanhmuc':
            include '../views/Admin/quanlydanhmuc/delete.php';
            break;

        //Quản lý đặt sân
        case 'dsdatsan':
            include '../views/Admin/quanlydatsan/danhsachdatsan.php';
            break;

        //Quản lý khuyến mãi
        case 'dskhuyenmai':
            include '../views/Admin/quanlykhuyenmai/danhsachkhuyenmai.php';
            break;

        case 'themkhuyenmai':
            include '../views/Admin/quanlykhuyenmai/add.php';
            break;

        case 'suakhuyenmai':
            include '../views/Admin/quanlykhuyenmai/update.php';
            break;

        case 'xoakhuyenmai':
            include '../views/Admin/quanlykhuyenmai/delete.php';
             break;

        //Quản lý liên hệ
        case 'dslienhe':
            include '../views/Admin/quanlylienhe/danhsachlienhe.php';
            break;

        case 'xoalienhe':
            include '../views/Admin/quanlylienhe/delete.php';
            break;

        //Quản lý sân:
        case 'dssan':
            include '../views/Admin/quanlysan/danhsachsan.php';
            break;

        case 'themsan':
            include '../views/Admin/quanlysan/add.php';
            break;

        case 'suasan':
            include '../views/Admin/quanlysan/update.php';
            break;

        case 'xoasan':
            include '../views/Admin/quanlysan/delete.php';
            break;

        //Quản lý tài khoản
        // case '':
        //     include '../views/Admin/quanlysan/danhsachsan.php';
        //     break;

        //Quản lý tin tức
        case 'dstintuc':
            include '../views/Admin/quanlytintuc/danhsachtintuc.php';
            break;

        case 'themtintuc':
            include '../views/Admin/quanlytintuc/add.php';
            break;

        case 'suatintuc':
            include '../views/Admin/quanlytintuc/update.php';
            break;

        case 'xoatintuc':
            include '../views/Admin/quanlytintuc/delete.php';
            break;



        default:
            include "../views/Admin/layout/noidung.php";
            break;
    }
}
else{
    include "../views/Admin/layout/noidung.php";
}

?>
  </div>


<?php 
include "../views/Admin/layout/footer.php";
?>
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<?php 
include "../views/Admin/layout/linkjs.php";
?>
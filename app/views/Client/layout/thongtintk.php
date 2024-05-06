<style>
       .tt{
        font-size: 24px;
        font-weight: 600;
        font-family: Arial, Helvetica, sans-serif;
        color: #FF4500;
    }
    .form{
        display: flex;
        
    }
    .a{
        background-color: #FF4500;
        border-color: #FF4500;
        color: #fff;
        border-radius: 5px;
    }
    .a:hover{
        background-color: brown;
    }
 
</style>
<div class="sidebar-about">
    <?php
    
    $taikhoan = loadone_tk($_SESSION['id_tai_khoan']);
                
                $hinhpath = "../views/Admin/quanlytaikhoan/anhtaikhoan/" .  $taikhoan['img_tai_khoan'];
                // var_dump($hinhpath);
                if (is_file($hinhpath)) {
                    $hinhpath = "<img src= '" . $hinhpath . "' width='100px' height='100px'>";
                } else {
                    $hinhpath = "No file img!";
                }
                echo '<div class="title">
                '.$hinhpath.'
            </div>
            <div class="title">
            <p class="tt">Tên tài khoản:</p>
                '.$taikhoan['ten_tai_khoan'].'
            </div>
            <div class="title">
            <p class="tt">SĐT:</p>
                '.$taikhoan['sdt'].'
            </div>
            <div class="title">
            <p class="tt">Email:</p>
                '.$taikhoan['email'].'
            </div>
            <div class="title">
            <p class="tt">Địa chỉ:</p>
                '.$taikhoan['address'].'
            </div>';
           
            if($_SESSION['id_chuc_vu']==1){
                echo ' <div class="title">
                <a href="../controllers/AdminController.php">Đăng nhập vào trang quản trị</a>
            </div>';
            }
           
            else{

            }
            
    ?>
     <div class="title">
<div class="form">

     <form action="ClientController.php?act=xemhoadon" method="POST">
            <input  class="a"  type="submit" name="xemdondatsan" value="Xem hóa đơn ">
        </form><br>
</div>
    <div class="form">
    <form action="ClientController.php?act=dangxuat" method="POST">
            <input class="a" style="margin-top:20px; " type="submit" name="dangxuat" value="Đăng xuất">
        </form>
        <br>
        <form action="ClientController.php?act=suataikhoan" method="POST">
            <input class="a" type="submit" style="margin-top:20px;margin-left:35px;" type="submit" name="suataikhoan" value="Sửa thông tin ">
        </form>
    </div>
     <!-- <a href="">Đăng Xuất</a> -->
    </div>
</div>
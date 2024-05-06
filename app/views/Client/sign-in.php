<style>
      .capnhap{
            background-color: #FF4500;
            width: 100px;
            height: 50px;
            border-radius: 5px;
            border-color: #FF4500;
            color: #fff;

        }
        .capnhap:hover{
            background-color: brown;
        }
</style>
<form action="ClientController.php?act=login" method="POST" enctype="multipart/form-data">
    <div class="sign-in-area pt-100 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="user-all-form">
                        <div class="contact-form">
                            <div class="section-title text-center">
                                <span class="sp-color">Đăng nhập</span>
                                <h2> Nhập tài khoản của bạn!</h2>
                            </div>
                            
                                <div class="row">
                                    <div class="col-lg-12 ">
                                        <div class="form-group">
                                            <input type="text" name="user" id="name" class="form-control" required
                                                data-error="Please enter your Username or Email"
                                                placeholder="Username or Email">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <input class="form-control" type="password" name="pass"
                                                placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-sm-6 form-condition">
                                        
                                    </div>
                                    <div class="col-lg-6 col-sm-6">
                                        <a class="forget" href="ClientController.php?act=quenmk">Quên mật khẩu?</a>
                                    </div>
                                    <div class="col-lg-12 col-md-12 text-center">
                                        <input type="submit" class="capnhap" value="Đăng nhập" name="login">
                                           
                                        <?php
                                            // var_dump($_SESSION['thongbao']);
                                        if (isset($_SESSION['thongbao'])) {
                                          echo '<div class="title" style="color:red; font-size:20px">' .$_SESSION['thongbao'] . '</div>';
                                          unset($_SESSION['thongbao']);
                                         }
                                         ?>
                                    </div>
                                    <div class="col-12">
                                        <p class="account-desc">
                                            Chưa có tài khoản
                                            <a href="ClientController.php?act=dangky">Đăng ký</a>
                                        </p>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>


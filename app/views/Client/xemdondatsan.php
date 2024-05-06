
<style>
    .divto {
        display: flex;
    }

    .sign-in-area {
        margin-left: 100px;
        margin-top: 50px;
    }

    .input {

        margin-left: 80px;
        margin-top: 10px;
        margin-bottom: 10px;
        padding: 5px 100px 5px 100px;
    }
  

    .btn {
        margin-left: 240px;
        background-color: #FF4500;
        border-color: #FF4500;
        color: #fff;
        border-radius: 5px;

    }
    .row1{
        max-width: 1440px;
    }
    .c{
        padding-left: 120px;
        padding-top: 30px;
    }
</style>
<div class="divto">
    <div class="sign-in-area pt-100 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="user-all-form">
                        <div class="contact-form" style="width:600px;">
                            <div class="section-title text-center">
                                <span class="sp-color">Đặt sân</span>
                                <h2>Thông tin sân cần đặt</h2>
                            </div>

                            <div class="row">
                                <?php

                                if (isset($_SESSION['dondatsan']) && (count($_SESSION['dondatsan']) > 0)) {
                                    echo '<table>
                    <tr>
                    <th style="width: 8%">STT</th>
                    <th style="width: 20%">Tên sân</th>
                    <th style="width: 15%">Giá sân</th>
                    <th style="width: 25%">Thể loại</th>
                    <th style="width: 30%">Ngày sử dụng sân</th>
                    <th style="width: 30%">Ca</th>
                </tr>
                    ';
                                    $i = 0;
                                    $tong = 0;
                                    foreach ($_SESSION['dondatsan'] as $item) {
                                        $tong += $item[2];
                                        echo '
                        <tr>
                        <td>' . ($i + 1) . '</td>
                        <td>' . $item[1] . '</td>
                        <td>' . $item[2] . '</td>
                        <td>' . $item[3] . '</td>
                        <td>' . $item[4] . '</td>
                        <td>' . $item[5] . '</td>
                        <td><a href="ClientController.php?act=huydon&i=' . $i . '">Xóa</a> </td>
                    </tr>
                        ';
                                        $i++;
                                    }
                                    echo "<tr>
                    <td clospan='5'></td>
                    <td>Tổng tiền : </td>
                    <td>$tong</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    </tr>";
                                    echo '</table>
                    

                    
                    ';
                                }
                                ?>
                            </div>
                            <a  class="c" href="ClientController.php?act=san">Thay đổi sân </a>  <a class="c"
                                href="ClientController.php?act=huydon">Xóa đơn </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="sign-in-area pt-100 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="user-all-form">
                        <div class="contact-form" style="width:600px;">
                            <div class="section-title text-center">
                                <span class="sp-color">Thanh toán</span>
                                <h2>Thông tin đặt sân</h2>
                            </div>

                            <div class="row">
                                <form action="ClientController.php?act=thanhtoan" method="post">
                                    
                                    <input type="hidden" name="tong_don_hang" value="<?php echo $tong ?>">
                                    <table>
                                        <input class="input" type="hidden"
                                            value="<?php $bill = loadone_tk($_SESSION['id_tai_khoan']);
                                            if (isset($bill) && ($bill > 0))
                                                echo $bill['id_tai_khoan']; ?>"
                                            name="id" placeholder="id">
                                        <tr>
                                            <td><input class="input" type="text"
                                                    value="<?php if (isset($bill) && ($bill > 0))
                                                        echo $bill['ten_tai_khoan']; ?>"
                                                    name="hoten" placeholder="Nhập họ tên"></td>
                                        </tr>
                                        <tr>
                                            <td><input class="input" type="text"
                                                    value="<?php if (isset($bill) && ($bill > 0))
                                                        echo $bill['address']; ?>"
                                                    name="diachi" placeholder="Nhập địa chỉ"></td>
                                        </tr>
                                        <tr>
                                            <td><input class="input" type="text"
                                                    value="<?php if (isset($bill) && ($bill > 0))
                                                        echo $bill['email']; ?>"
                                                    name="email" placeholder="Nhập email"></td>
                                        </tr>
                                        <tr>
                                            <td><input class="input" type="text"
                                                    value="<?php if (isset($bill) && ($bill > 0))
                                                        echo $bill['sdt']; ?>"
                                                    name="sdt" placeholder="Nhập số điện thoại"></td>
                                        </tr>
                                        <tr>
                                            <td><input class="input" type="hidden" value="<?php foreach ($_SESSION['dondatsan'] as $item) {
                                                echo $item[1];
                                                break;

                                            } ?>" name="ten_san" placeholder="Nhập số điện thoại"></td>
                                        </tr>
                                        <tr>
                                            <td><input class="input" type="hidden"
                                                    value="<?php foreach ($_SESSION['dondatsan'] as $item) {
                                                echo $item[4];
                                                break;

                                            } ?>"
                                                    name="ngay_su_dung" placeholder=""></td>
                                        </tr>
                                        <tr>
                                            <td><input class="input" type="hidden"
                                                    value="<?php foreach ($_SESSION['dondatsan'] as $item) {
                                                echo $item[5];
                                                break;

                                            } ?>"
                                                    name="ca_san" placeholder="Nhập số điện thoại"></td>
                                        </tr>
                                        
                                            <td><input class="btn" type="submit" name="thanhtoan" value="Thanh toán">
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
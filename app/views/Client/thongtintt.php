<script>
 <?php if (isset($_GET['full'])) {
        ?>
        alert("chỉ được đặt 1 khoá học")
    <?php } ?>
</script>
<style>
     .input {

margin-left: 110px;
margin-top: 10px;
margin-bottom: 10px;
padding: 5px 100px 5px 100px;
}

::placeholder {
text-align: center;
}

#pttt {
text-align: center;
}

.btn {
margin-left: 240px;
background-color: red;
border-color: black;

}
img{
margin-left: 170px;
}
table{
text-align: center;
}
.button{
margin-top: 20px;
margin-left: 190px;
background-color: #FF4500;
border-radius: 5px;
border-color: #FF4500;
}
.button:hover{
background-color: brown;
}
.button>a{
text-decoration: none;
padding-top: 10px;
width: 200px;
height: 50px;
color: #fff;
}
</style>
<div class="sign-in-area pt-100 pb-70">
    <div class="container">
    
            <div class="col-lg-12">
                <div class="user-all-form">
                    <div class="contact-form">
                        <div class="section-title text-center">
                            <span class="sp-color">POLY SOCCER</span>
                            <h2>Thông tin thanh toán </h2>
                        </div>

                        <div class="row">


                            <table>
                                <tr>
                                    <th>Ngân hàng : Ngân hàng quân đội MB Bank</th>
                                </tr>
                                <tr>
                                    <th>STK: 5555566688668</th>
                                </tr>
                                <tr>
                                    <th>Tên: POLY SOCCER</th>
                                </tr>
                                <tr>
                                    <img src="../views/Admin/quanlyhethong/32aabbb74997e0c9b986.jpg" alt="" style="width:280px;height:280px">
                                </tr>
                              
                                <tr>
                                <th>Nội dung chuyển khoản:</th>
                                </tr>
                                     <?php
                                    $billsan=loadone_billdatsan1($_SESSION['id_tai_khoan']);
                                    
                                    foreach($billsan as $code){
                                        extract($code);
                                        echo '
                                        <br><tr><td> '.$ma_dat_san.'</td></tr>
                                        ';
                                    }
                                     ?>
                                
                            </table>

                        </div>
                        <button class="button"><a href="ClientController.php?act=xemhoadon&id_tai_khoan=<?$_SESSION['id_tai_khoan'] ?>">Đã thanh toán</a></button>    

                    </div>
                </div>
            </div>
           
    
    </div>
</div>
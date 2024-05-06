
<style>
    .timkiem{
        display: flex;
        
    }
.timkiem1>input{
    padding: 5px 50px 5px 5px;
}
.timkiem1>button{
    padding: 5px 5px 5px 5px;
   
}
.timkiem1{
    margin-left:3px;
}
.timkiem2{
    margin-left:600px;
}
.timkiem2>select{
    padding: 6px 150px 6px 5px;
}
.timkiem2>button{
    padding: 5px 5px 5px 5px;
   
}

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
.section-title{
    padding-top: 50px;
    padding-bottom: 30px;
}


</style>


<div class="blog-details-area pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
         
                        <div class="section-title text-center">
                            <span class="sp-color">POLY SOCCER</span>
                            <h2>Hóa đơn sân</h2>
                        </div>
          
                <table class="table table-striped projects">
        <thead  >
                <tr >
                      <th style="width: 10%">
                          Stt
                      </th>
                      <th style="width: 10%">
                          Mã đặt sân
                      </th>
                      <th style="width: 10%">
                          Tên sân
                      </th>
                      <th style="width: 10%">
                          Ca sân
                      </th>
                    
                      <th style="width: 10%">
                          Tên Người Đặt
                      </th>
                      <th style="width: 10%">
                          Tên Tài Khoản
                      </th>
                      <th style="width: 10%">
                          Số điện thoại
                      </th>
                      <th style="width: 10%">
                          Email
                      </th>
                     
                      
                      <th style="width: 10%" class="text-center">
                          Trạng thái
                      </th>
                     
                      <th style="width: 10%">
                      Ngày sử dụng
                      </th>
                      <th></th>
                  </tr>
              </thead>
              <tbody>
                 <?php 
               
                 $dem=0;
                 foreach($billsan as $hd){
                    extract($hd);
                 ?>
                 <tr>
                      <td>
                      <?php echo $id_ctdatsan ?>
                      </td>
                      <td>
                          <a>
                              <?php echo $ma_dat_san ?>
                          </a>                     
                      </td>
                      <td>
                          <a>
                          <?php echo $ten_san ?>
                          </a>                     
                      </td>
                      <td>
                          <a>
                          <?php echo $ca_san ?>
                          </a>                     
                      </td>
                      <td>
                          <a>
                          <?php echo $ten_kh ?>
                          </a>                     
                      </td>
                      <td>
                          <a>
                          <?php echo $ten_tai_khoan ?>
                          </a>                     
                      </td>
                      <td class="project_progress">
                       <!-- mô tả -->
                       <?php echo $sdt_kh ?>
                      </td>
                      <td>
                          <a>
                          <?php echo $email ?>
                          </a>                     
                      </td>
                      
                     
                     
                      
                      <td class="project-state">
                          <span id="result" ><?php echo $trang_thaihd?></span>
                      </td>
                      <td class="project-state">
                          <span ><?php echo $ngay_su_dung?></span>
                      </td>
                      <td class="project-state">
                        <?php
                         $biu="chi_tiet_dat_san";
                         $trangthai="Chờ xử lý";
                         $ca=loadId_ca($ca_san);
                         $san=loadIdsan($ten_san);
                        $idca="";
                        $idsan="";
                        foreach($ca as $c){
                            extract($c);
                            $idca.=$id_ca;
                        }
                        foreach($san as $s){
                            extract($s);
                            $idsan.=$id_san;
                        }
                    $j=1;
                            foreach($bill as $h){
                                if ($j>$dem) {
                                    $adu = Load_Oneev($h['id_ctdatsan'], $biu);
                                    if($adu['trang_thaihd']=="$trangthai"){
                                       ?>
                                       <a class="btn btn-danger btn-sm" href="ClientController.php?act=xoadsdatsan&id_ctdatsan=<?php echo $adu['id_ctdatsan']?>&id_san=<?= $idca ?>&id_ca=<?= $idsan?>">
                                          hủy
                                       </a>
                                       <?php
                                       }  break;
                                }
                            
                        $j++;
                            }
                      ?>
                      </td>
               
                    </tr>
                    <?php  $dem++; }?>
              </tbody>
          </table>
            </div>
        </div>
    </div>
</div>
<script>
   <?php
   
   if (isset($_GET['err']) && $_GET['err']){        
   ?>
   alert('Không thể hủy sân vui lòng reset lại trang');
   <?php
  
    }
   
   ?>
</script>


                            

    
               
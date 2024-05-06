<h2>Danh sách đặt sân:</h2>
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
</style>
<div  class="timkiem">



</div>
    <table class="table table-striped projects">
        <thead>
                <tr>
                      <th style="width: 1%">
                          Stt
                      </th>
                      <th style="width: 15%">
                          Mã đặt sân
                      </th>
                      <th style="width: 15%">
                          Tên sân
                      </th>
                      <th style="width: 15%">
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
                      <th style="width: 20%">
                      </th>
                  </tr>
              </thead>
              <tbody>
                 <?php 
                  
                 foreach($bill as $hd){
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
                          <span class="badge badge-success"><?php echo $trang_thaihd?></span>
                      </td>
                      <td class="project-actions text-right">
                        <?php
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
                       

                        
                        
                            echo '
                            <a class="btn btn-info btn-sm" href="AdminController.php?act=xacnhandatsan&id_ctdatsan='.$id_ctdatsan.'&id_ca='.$idca.'&id_san='.$idsan.'">
                              <i class="fas fa-pencil-alt">
                              </i>
                            Xác nhận
                          </a>
                          <a class="btn btn-danger btn-sm" href="AdminController.php?act=xoadsdatsan&id_ctdatsan='.$id_ctdatsan.'&id_ca='.$idca.'&id_san='.$idsan.'">
                          <i class="bi bi-check-circle-fill"></i>
                              Cập nhật trạng thái
                          </a>
                            ';
                        
                        ?>
                      
                          
                      </td>
                  </tr>
                    <?php
                
                // foreach($trt as $tr){
                //     extract($tr);
                //     if($id_trang_thai==2){
                        
                //     }
        
                // }
                
                
                } ?>
              </tbody>
          </table> 
          <?php
         
          ?>           
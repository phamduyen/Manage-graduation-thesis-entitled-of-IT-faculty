<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cập nhật thông tin SV</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <div style="background-color: #337ab7; color: white"class="jumbotron">
 	<div class="row">
 		<div class="col-md-2">
 			<img width="150px" height="150px" alt="" src="images/logokhoa.png">
 		</div>
 		<div class="" style="align: center">
  			<h2>TRƯỜNG ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC ĐÀ NẴNG</h2>   
  			<h4>KHOA CÔNG NGHỆ NGHỆ THÔNG TIN<h4>   
    		<p>HỆ THỐNG QUẢN LÝ THỰC HIỆN ĐỀ TÀI TỐT NGHIỆP </p>	    		
  		</div>
    </div>
  </div>
</div><!-- container1 -->
	<div class="container">
		<div class="link">
					<nav class="navbar navbar-inverse">
					  <div class="container-fluid">
					    <div class="navbar-header">
					      <a class="navbar-brand" href="#">ADMIN</a>
					    </div>
					    <ul class="nav navbar-nav">
					       <li><a href="#">THÔNG BÁO</a></li>					      
					         <li ><a href="#">ĐỀ TÀI</a></li> 
					      <li class="active" ><a href="#">CẬP NHẬT CÁ NHÂN</a></li>					     
					      <li><a href="#">KẾT QUẢ</a></li>
					    </ul>
					    <ul class="nav navbar-nav navbar-right">
					    	<li><p style="margin-top:15px;color:white"><span class="glyphicon glyphicon-user"></span>SV: Huỳnh Hữu Hưng</p></li><!-- xuất thông tin người dung ở chỗ nay-->
					      	<li><a href="" action = "#"> |Đăng xuất</a></li>
					    </ul>
					  </div>
					</nav>
		</div> <!-- menu -->
	</div><!-- container -menu -->
<div class="container">

	<div class="row">
		<div class="col-md-12">
		<div class="well">
			<h4>CẬP NHẬT THÔNG TIN CÁ NHÂN</h4>
	              <form class="form-horizontal" action="#">
	                  <div class="form-group">
	                      <label class="control-label col-xs-2">MSSV (*)</label>
	                      <div class="col-xs-10">
	                          <input class="form-control" id="disabledInput" name="mssv" type="text" placeholder="MSSV" disabled>
	                      </div>
	                  </div>
	                 <div class="form-group">
	                      <label class="control-label col-xs-2">Tên SV (*):</label>
		                      <div class="col-xs-6">
		                          <input type="text" class="form-control" name="tenSv" placeholder="Tên SV" disabled="disabled">
		                      </div> 
		              </div> 
		              <div class="form-group">
	                      <label class="control-label col-xs-2">Ngày sinh (*):</label>
		                      <div class="col-xs-6">
		                          <input type="date" class="form-control" name="ngaySinh">
		                      </div> 
		                 </div>                    
		                 <div class="form-group">
		                      <label class="control-label col-xs-2">Lớp (*) </label>
						 <div class="col-md-5">
							<p name = "lop">12T4</p>
						 </div>
					</div>
	                  <div class="form-group">
	                      <label class="control-label col-xs-2">Email</label>
	                      <div class="col-xs-10">
	                          <input type="email" class="form-control" name="email" placeholder="Email">
	                      </div>   
	                  </div>
	                  <div class="form-group">
	                      <label class="control-label col-xs-2">SĐT</label>
	                      <div class="col-xs-10">
	                          <input type="text" class="form-control" name="sdt" placeholder="Số điện thoại">
	                      </div>   
	                  </div>
	                    <div class="form-group">
	                      <label class="control-label col-xs-2">Địa Chỉ</label>
	                      <div class="col-xs-10">
	                          <input type="text" class="form-control" name="diaChi" placeholder="Địa chỉ">
	                      </div>   
	                  </div>
	                  	<button class="btn btn-default" id="GV_Nhapbtn">Cập Nhật</button>
						<button class="btn btn-default" id="GV_Huybtn">Hủy</button>  
	              </form>             
	          </div>
		</div>				
	</div>				
</div><!-- content - container -->

</body>
</html>
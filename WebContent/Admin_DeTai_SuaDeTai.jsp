<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa đề tài</title>
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
					      <li ><a href="#">THÔNG BÁO</a></li>
					        <li><a href="#">SINH VIÊN</a></li> 
					      <li><a href="#">GIÁO VIÊN</a></li>
					      <li class="active"><a href="#">ĐỀ TÀI</a></li>
					      <li><a href="#">ĐĂNG KÍ</a></li>
					    </ul>
					    <ul class="nav navbar-nav navbar-right">
					    	<li><p style="margin-top:15px;color:white"><span class="glyphicon glyphicon-user"></span>: Admin</p></li><!-- xuất thông tin người dung ở chỗ nay-->
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
					<h4>SỬA ĐỀ TÀI</h4>
				
				<!-- Do du lieu tai day  -->
					<form class="form-horizontal" action="">
						<div class="form-group">
                        <label class="control-label col-xs-2">Mã đề tài </label>
                        <div class="col-xs-5">
                            <input class="form-control" id="disabledInput" name="mdt" type="text"  disabled>
                        </div>
                    	</div>

               
					<div class="form-group">
				
                    <label class="control-label col-md-2">Chuyên ngành </label>
                    <div class="col-md-5">
                    <select class="form-control">
                	  <option >--------------Chọn chuyên ngành--------------</option>
					  <option >Công nghệ phần mềm</option>
					  <option>Hệ thống nhúng</option>
					  <option>Mạng</option>
					  <option>Hệ thống thông tin</option>
					 
					</select>
					</div>
                 </div>
             
                 
                 <div class="form-group">
                    <label class="control-label col-md-2">GVHD </label>
                    <div class="col-md-5">
                    <select class="form-control">
                	  <option >-----------------Chọn GVHD-----------------</option>
					 
					</select>
					</div>
                 </div>
                 
                 <div class="form-group">
                 	<label class="control-label col-md-2">Tên đề tài </label>
                 	<div class="col-xs-10">
                            <textarea class="form-control" rows="3" name="tenDt"></textarea>
                        </div>  
                 </div>
                 </form>
                
				<button class="btn btn-default" id="GV_Nhapbtn">Sửa</button>
				<button class="btn btn-default" id="GV_Huybtn">Hủy</button>
					
				</div>
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sinh viên phản hồi</title>
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
					      <li class="active"><a href="#">THÔNG BÁO</a></li>
					         <li><a href="#">SINH VIÊN</a></li> 
					      <li><a href="#">GIÁO VIÊN</a></li>
					      <li><a href="#">ĐỀ TÀI</a></li>
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
			<div class="col-md-3">
				<div class="well">
				<h4 class="title" style="text-align:center;padding-bottom:10px;">DANH MỤC MENU</h4>
				<ul class="nav">
            		<li><a href="" >Thông báo chung</a></li>
            		<li  style="background-color:#99FFFF"><a href="">Sinh viên phản hồi</a></li>
            		<li><a href="">Tạo thông báo</a></li>
            	</ul>
				</div>
			</div>
			<div class="col-md-9">
				<div class="well">
				
					<h4>Phản hồi sinh viên</h4>
				
				<!-- Do du lieu tai day  -->
					<form action="">
					<div class="panel panel-default">
					<table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Tên SV</th>
                            <th>MSSV</th>
                            <th>Nội dung</th>
                            <th>GVHD</th>
                            <th>Ngày lập</th>
                            <th>Xác Nhận</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<td>Phạm Thị Duyên</td>
                    	<td>12345</td>
                    	<td>Nhập sai điểm</td>
                    	<td>Hữu Hưng</td>
                    	<td>12/2/2102</td>
                    	<td><input type="checkbox" id="inlineCheckbox2" value="" name="xacNhan"></td>
                    
                    </tbody>
                    </table>
                    </div>	
                    </form>	
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CÁC BÀI BÁO CÁO</title>
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
					      <a class="navbar-brand" href="#">GIÁO VIÊN HƯỚNG DẪN</a>
					    </div>
					    <ul class="nav navbar-nav">
					      <li><a href="#">THÔNG BÁO</a></li>
					      <li><a href="#">QUẢN LÝ SINH VIÊN</a></li>
					      <li class="active"><a href="#">QUẢN LÝ ĐỀ TÀI</a></li>
					      
					    </ul>
					    <ul class="nav navbar-nav navbar-right">
					    	<li><p style="margin-top:15px;color:white"><span class="glyphicon glyphicon-user"></span> GVHD: Huỳnh Hữu Hưng</p></li><!-- xuất thông tin người dung ở chỗ nay-->
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
            		<li><a href="" >Danh sách đề tài</a></li>
            		<li ><a  href="">Đánh giá quá trình</a></li>
            		<li><a href="">Nhập điểm bảo vệ</a></li>
            		<li style="background-color:#99FFFF"><a href="">Quản lí báo cáo</a></li>
            		</ul>
            	       	           	
			</div>
		</div>
			
		<div class="col-md-9">
			<div class="well" style="height:400px">
				<div class="col-md-9"></div>
					<div class="input-group panel panel-default">
					<input type="text" class="form-control" name="tkDeTai" placeholder="Tìm kiếm đề tài...">
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Tìm
							</button>
						
						</div>
					</div>
					<center><h3 style="margin-bottom:40px">CÁC BÀI BÁO CÁO</h3></center>
					
				
					<div class="row">
					<div id="menu">
 						<ul>
 							<li><a href="#">Lần 1</a></li>
 							<li><a href="#">Lần 2</a></li>
 							<li><a href="#">Lần 3</a></li>
 							<li><a href="#">Lần 4</a></li>
 							<li><a href="#">Sản Phẩm</a></li>
 						</ul>
					</div>
					
					</div>
					
					<br/>
					
					<div class="row">
					<div class="panel panel-default">
						<table class="table table-bordered" >
							<thead>
								<tr>
									<th>STT</th>
									<th>Tên Đề Tài</th>
									<th>Hình Thức</th>
									<th>Sinh Viên Thực Hiện</th>
									<th>Đã nộp</th>
									<th>Link tải</th>
									
								</tr>
							</thead>
							
							<tbody>
								<tr>
									<td>1</td>
									<td>Xây dựng mô hình nhà thông minh</td>
									<td>Nhóm</td>
									<td>Phạm Thị Duyên<br/>
										Huỳnh Nguyên Hải</td>
									<td><input type="checkbox" id="inlineCheckbox2" value="" name="xacNhan"></td>
									<td><div style=" text-decoration:underline"><a href="">Tải về</a></td>

									
								</tr>
								<tr>
									<td>2</td>
									<td>Xe tự cân bằng</td>
									<td>Cá nhân</td>
									<td>Nguyễn Đức Kiệt</td>
									<td><input type="checkbox" id="inlineCheckbox2" value="" name="xacNhan"></td>
									<td><div style=" text-decoration:underline"><a href="">Tải về</a></td>
									
								</tr>
							</tbody>
						</table>
					</div>
					</div>
					
					</div>
					</div>
					
					
					
			</div>
		</div>
	</div>
	</div>			
			
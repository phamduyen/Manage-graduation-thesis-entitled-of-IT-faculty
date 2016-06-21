<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sinh viên</title>
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
					      <a class="navbar-brand" href="#">SINH VIÊN </a>
					    </div>
					    <ul class="nav navbar-nav">
					      <li><a href="#">THÔNG BÁO</a></li>
					      <li><a class="active" href="#">ĐĂNG KÍ ĐỀ TÀI</a></li>
					      <li class="active"><a  href="#"> KẾT QUẢ</a></li>
					      <li><a href="#">PHẢN HỒI</a></li>
					      
					    </ul>
					    <ul class="nav navbar-nav navbar-right">
					    	<li><p style="margin-top:15px;color:white"><span class="glyphicon glyphicon-user"></span> Sinh viên: Huỳnh Hữu Hưng</p></li><!-- xuất thông tin người dung ở chỗ nay-->
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
				<div class="content-centre">
				<form action="">
					<h4>ĐĂNG KÍ ĐỀ TÀI</h4>
				<!-- Do du lieu tai day  -->
					<div class="panel panel-default">
						<div class="panel  panel-primary">
						  <!-- Default panel contents -->
						  <div class="panel-heading">Danh sách đề tài đăng kí</div>
						
						  <div class="table-responsive">          
							  <table class="table">
							    <thead>
							      <tr>
							        <th>Mã Đề Tài</th>
							        <th>Tên đài</th>
							        <th>CN</th>
							        <th>GVHD</th>
							        <th>Đăng kí</th>
							      </tr>
							    </thead>
							    <tbody>
							      <tr>
							        <td>001</td>
							        <td>Quản ly đề tài tốt nghiệp</td>
							        <td>Công nghệ phần mền</td>
							        <td>Huỳnh hữu hưng</td>
							        <td><a href="#"><span class="glyphicon glyphicon-hand-right"></span> </a></td>
							       </tr>
							    </tbody>
							  </table>
							  </div>
							</div>
					</div>					
					<!-- Paging -->
					
					<nav>
					  <ul class="pagination">
					    <li class=""><a href="" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					   
			    			<li class="active"><a href=""><%=1 %> <span class="sr-only">(current)</span></a></li>			
					    		
					    <li><a href="" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
					  </ul>
					</nav>		
					<!-- End Paging -->
					</form>	<!-- đóng form -->
				</div>
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
</body>
</html>
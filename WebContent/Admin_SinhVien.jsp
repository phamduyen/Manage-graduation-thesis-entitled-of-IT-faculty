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
					      <a class="navbar-brand" href="#">ADMIN</a>
					    </div>
					    <ul class="nav navbar-nav">
					       <li><a href="#">THÔNG BÁO</a></li>
					      
					      
					     
					       <li class="active"><a href="#">SINH VIÊN</a></li> 
					      
					      <li ><a href="#">GIÁO VIÊN</a></li>
					     
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

			<div class="col-md-12">
				<div class="well">
				
					<h4>DANH SÁCH SINH VIÊN</h4>
					<div class="input-group panel panel-default">
					<input type="text" class="form-control" placeholder="Tìm kiếm...">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default">
							Tìm
						</button>
				
					</div>
					<!-- /btn-group -->
					<!-- <span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
					</span> -->
				</div>
				
				<!-- Do du lieu tai day  -->
				
				<form action="">
					<div class="panel panel-default">
						<table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên đề tài</th>
                            <th>Hình thức</th>
                            <th>SV thực hiện</th>
                            <th>GV1</th>
                            <th>GV2</th>
                            <th>GV3</th>
                            <th>Xóa</th>
                            <th>Sửa</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<tr>
                    		<td>1</td>
                    		<td>Đề tai 1</td>
                    		<td>Nhóm</td>
                    		<td>CNPM</td>
                    		<td></td>
                    		<td></td>
                    		<td></td>
                       		<td><input type="image" name="del_Btn" src="images/recyclebin-512.png" class="image-btn"  alt="Submit"></td>
                    		<td><input type="image" name="edit_Btn" src="images/edit.png" class="image-btn"  alt="Submit"> </td>
                    	</tr>
                    	
                    </tbody>
               	 </table>
					</div>		
					</form>
					
					<!-- Paging -->
					
					<nav>
					  <ul class="pagination">
					    <li class=""><a href="" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					   
			    			<li class="active"><a href=""><%=1 %> <span class="sr-only">(current)</span></a></li>
			    						
					    		
					    <li><a href="" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
					     
					  </ul>
					 
					</nav>		
					<!-- End Paging -->
					<button class="btn btn-default" id="themSv">Thêm Sinh viên </button>
						
					
				</div>
				
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
	
</body>
</html>
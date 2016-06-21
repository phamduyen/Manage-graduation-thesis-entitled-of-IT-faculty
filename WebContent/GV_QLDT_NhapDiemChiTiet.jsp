<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NHẬP ĐIỂM BẢO VỆ TỐT NGHIỆP</title>
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
            			<li><a  href="">Đánh giá quá trình</a></li>
            			<li style="background-color:#99FFFF"><a href="">Nhập điểm bảo vệ</a></li>
            			<li><a href="">Quản lí báo cáo</a></li>
            			</ul>
            	       	           	
			</div>
		</div>
		<div class="col-md-9">
			<div class="well" style="height:500px">
			<center><h3>NHẬP ĐIỂM BẢO VỆ TỐT NGHIỆP</h3></center>
			
						<div class="panel-body">
					
							<h4 style="line-height:20px">
								<div class="row" style="margin-top:30px">
								
								<b style="color:black"><div class="col-md-3">Tên đề tài</div></b>
								
								<div class="col-md-1">:</div>
                      		    <div class="col-md-6">Phần mềm quản lí nhà hàng</div> 
                       			</div>
                        		<div class="row" style="margin-top:15px">
								<b style="color:black"><div class="col-md-3">Sinh viên thực hiện</div></b>
								<div class="col-md-1">:</div>
                       			<div class="col-md-6">1. Nguyễn Đức Kiệt<br/>
                       			2. Phạm Thị Duyên</div> 
                       			</div>
                       			
                       			<div class="row" style="margin-top:15px">
								<b style="color:black"><div class="col-md-3">Điểm chấm</div></b>
								
							</h4>
					
						
					
						
						<h4>
							<div class="row" style="margin-top:20px">
							
							 <div class="form-group">
							 <div class="col-md-2"></div>
                       		 <label class="control-label col-md-1" style="color:black">GV1</label>
                       		 <div class="col-md-1">:</div>
							 <div class="col-md-2">
							 <input type="text" class="form-control" name="mssv">
							</div>
							</div>
                       	    </div>
                       	    
                       	    <div class="row" style="margin-top:20px">
							
							 <div class="form-group">
							 <div class="col-md-2"></div>
                       		 <label class="control-label col-md-1" style="color:black">GV2</label>
                       		 <div class="col-md-1">:</div>
							 <div class="col-md-2">
							 <input type="text" class="form-control" name="mssv">
							</div>
							</div>
                       		 
                       		 </div>
                       		 
                       		 <div class="row" style="margin-top:20px">
							
							 <div class="form-group">
							 <div class="col-md-2"></div>
                       		 <label class="control-label col-md-1" style="color:black">GV3</label>
                       		 <div class="col-md-1">:</div>
							 <div class="col-md-2">
							 <input type="text" class="form-control" name="mssv">
							</div>
							</div>
                       		 
                       		 </div>
                       	</h4>	 
						
					</div>
					<div class="row" style="margin-top:20px">
					<center>
					<button class="btn btn-default">Tiếp Tục</button>
			        <button class="btn btn-default" style="margin-left:20px">Dừng</button>
			        </center>
			        </div>
		
		</div>
		
		
		
		
		
	</div>
	</div>
	</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng kí đề tài</title>
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
					      <li ><a  href="#">ĐĂNG KÍ ĐỀ TÀI</a></li>
					      <li><a href="#">PHẢN HỒI</a></li>
					      <li class="active"><a  href="#"> KẾT QUẢ</a></li>
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
						<div class="col-xs-2"></div>
						<form  class="form-horizontal col-xs-8" id="dangkiForm" action="">
							<h4>ĐĂNG KÍ ĐỀ TÀI</h4>
						<!-- Do du lieu tai day  -->
							<div class="panel panel-default">
								<div class="panel  panel-primary">
								  <!-- Default panel contents -->
								  <div class="panel-heading ">Đăng kí đề tài</div>
								  	<div class="form-group">
			                        <label class="control-label col-xs-5">Mã Đề Tài:</label>
			                        <div class="col-xs-6">
			                            <p>001</p>
			                        </div>
			                    </div>
			                   <div class="form-group">
			                        <label class="control-label col-xs-5">Nội Dung đề tài:</label>
			                        <div class="col-xs-6">
			                            <p name="ndDT" > Xây dựn mô hình quản lý thực hiện đề tài</p>
			                        </div>   
			                    </div>
			                    <div class="form-group">
			                        <label class="control-label col-xs-5">Chuyên ngành:</label>
			                        <div class="col-xs-6">
			                            <p name="cN" > Công nghệ phần mềm</p>
			                        </div>   
			                    </div>
			                    <div class="form-group">
			                        <label class="control-label col-xs-5">Giáo Viên Hướng Dẫn:</label>
			                        <div class="col-xs-6">
			                            <p name="gvHD" > Huỳnh Hữu Hưng</p>
			                        </div>   
			                    </div>
			                    <div class="form-group">
			                        <label class="control-label col-xs-5">Hình thức đăng kí:</label>
			                        <div class="col-xs-6">
			                           <input type="radio"  name="hinhThuc" value="caNhan" onchange="disable()">Cá Nhân<br>
			                           <input type="radio"  name="hinhThuc" onchange="enable()" value="nhom"> Nhóm<br>
				                         <div id="mssv2" style="visibility:hidden;" >
				                           <label >MSSV 2:</label><span>
				                           <input class="form-control"   name="mssv2" type="text"  placeholder="MSSV2"  ></span>
				                           <label >Tên Sinh Viên:</label><span>
				                           <input class="form-control" name="tenSV2" type="text"  placeholder="Tên sinh viên 2" ></span>
				                        </div>
			                        </div>   
			                    </div>
			                    <div>
				                    <button class="btn btn-default" action="#" id="GV_Nhapbtn">Đăng kí</button>
									<button class="btn btn-default" action="#" id="GV_Huybtn">Hủy</button>  
								</div>
							</div>
							</div>
						</form>	<!-- đóng form -->
						<div class="col-xs-2"></div>
					</div>
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
</body>
<script type="text/javascript">
	function disable(){
		document.getElementById("mssv2").style.visibility = "hidden";
		}
	function enable(){
		document.getElementById("mssv2").style.visibility = "visible";
	}
</script>
</html>
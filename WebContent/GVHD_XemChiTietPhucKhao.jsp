<%@page import="model.bean.PHANHOI"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<% 
String username = session.getAttribute("username").toString();
PHANHOI phanHoi = (PHANHOI)request.getAttribute("phanHoi");
%>
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
					      <li class="active"><a href="#">THÔNG BÁO</a></li>
					      <li><a href="#">QUẢN LÝ SINH VIÊN</a></li>
					      <li><a href="#">QUẢN LÝ ĐỀ TÀI</a></li>
					      
					    </ul>
					    <ul class="nav navbar-nav navbar-right">
					    	<li><p style="margin-top:15px;color:white"><span class="glyphicon glyphicon-user"></span> GVHD:<%=username %></p></li><!-- xuất thông tin người dung ở chỗ nay-->
					      	<li><a href="DangXuatServlet"> |Đăng xuất</a></li>
					    </ul>
					  </div>
					</nav>
		</div> <!-- menu -->
	</div><!-- container -menu -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="well">
					<div class="form-login" role="form" action="">
						<h4 class="title" style="text-align:center;padding-bottom:10px;">DANH MỤC MENU</h4>
						<div class="form-group"   style="background-color:#99FFFF" >
							<i class="fa fa-pencil-square-o"></i><a class="active" href="#" class="group1" >Thông báo xử lý điểm<span class="fa arrow"></span></a>
						</div>
						<div class="form-group">
							<i class=" fa fa-bell-o"></i><a href="#" class="group1">Thông báo từ Admin<span class="fa arrow"></span></a>
						</div>
						<div class="form-group"  >
							<i class="fa fa-paste"></i><a href="#" class="group1" >Danh sách thông báo<span class="fa arrow"></span></a>
						</div>
						<div class="form-group">
							<i class="fa fa-pencil-square-o"></i><a href="#" class="group1">Tạo thông báo<span class="fa arrow"></span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="well">
				<h4 style="text-align:center;">CHI TIẾT PHẢN HỒI TỪ SINH VIÊN</h4>
				<div  class="content-centre form-horizontal">
					<div class="panel panel-default">
					<div class="panel  panel-primary">
					 <div class="form-group">
                        <label class="control-label col-xs-2">Sinh Viên:</label>
                        <div class="col-xs-10 from-group ">
							<p><%=phanHoi.getTenSV() %></p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-2">Tên Đề Tài:</label>
                        <div class="col-xs-10">
                           <p><%=phanHoi.getTenDeTai() %></p>
                        </div>   
                    </div>
                    <div class="form-group">
                    	<label class="control-label col-xs-2">Kiểu Phản Hồi:</label>
	                    <div class="col-xs-10">
	         				<p><%=phanHoi.getKieuPh()%></p>
						</div>
                    </div>
                    <div class="form-group">
                    	<label class="control-label col-xs-2">Nội dung:</label>
	                    <div class="col-xs-9">
	         				<p><%=phanHoi.getNoidung()%></p>
						</div>
                    </div>
                    <div>
	                   <a href="<%=request.getContextPath()%>/ShowCapNhatDiemServlet_GV?maPH=<%= phanHoi.getMaphanhoi()%>"><button type = "submit" class="btn btn-default" id="GV_Nhapbtn" >Cập Nhật Điểm</button></a>
						<button class="btn btn-default" id="GV_Huybtn" onclick="history.go(-1)"> Hủy </button>
                    </div>
                    </div>
                    </div>
				</div>		
			</div>
		</div>
	</div>
</div> 
</body>

</html>
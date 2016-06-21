<%@page import="model.bean.THONGBAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<%String username = session.getAttribute("username").toString();%>
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
					    	<li><p style="margin-top:15px;color:white"><span class="glyphicon glyphicon-user"></span>:<%= username%></p></li><!-- xuất thông tin người dung ở chỗ nay-->
					      	<li><a href="DangXuat" > |Đăng xuất</a></li>
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
            		<li style="background-color:#99FFFF"><a href="" >Thông báo chung</a></li>
            		<li><a href="">Sinh viên phản hồi</a></li>
            		<li><a href="<%=request.getContextPath()%>/Admin_ThongBao_Tao.jsp">Tạo thông báo</a></li>
            	</ul>
				</div>
			</div>
			<div class="col-md-9">
				<div class="well">
					<h4>THÔNG BÁO CHUNG</h4>
					<div class="input-group panel panel-default">
					<input type="text" class="form-control" placeholder="Tìm kiếm...">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Tìm <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Người viết</a></li>
							<li><a href="#">Tiêu đề</a></li>
							<li><a href="#">Nội Dung</a></li>
							<li><a href="#">Ngày viết</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Something else</a></li>
						</ul>
					</div>
					<!-- /btn-group -->
					<!-- <span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
					</span> -->
				</div>
				<form action="<%=request.getContextPath() %>/trangchu-admin">
	<%
		ArrayList<THONGBAO> alTB = (ArrayList<THONGBAO>)request.getAttribute("alTB");
			
	%>
				
				<!-- Do du lieu tai day  -->
					<div class="panel panel-default">
						<%
							for(THONGBAO oTB:alTB){
						%>
						<div class="panel-heading">
							<div>
								<b><%= oTB.getNgaytb() %><%=':' %> </b><span class="header_TB"> <%= oTB.getTieude() %></span>
								<span class=" header_contentRight"><input type="image" name="del_Btn" src="images/recyclebin-512.png" class="image-btn"  alt="Submit"> 
								<input type="image" name="edit_Btn" src="images/edit.png" class="image-btn"  alt="Submit"> 
								</span>
							</div >
				</form>		
						</div><!-- panel heading -->
						<div class="panel-body">
							<p>
								<%= oTB.getNoidung() %>
							</p>
							<i><%= oTB.getFiledinhkem() %></i>
						</div>
						<%} %>
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
							
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
	
</body>
</html>
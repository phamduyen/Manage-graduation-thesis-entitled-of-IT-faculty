<%@page import="model.bean.THONGBAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GVHD</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<% ArrayList<THONGBAO> tbListGV = new ArrayList() ;
  tbListGV= (ArrayList)request.getAttribute("tbListGV");
 
  
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
					      <li  class="active"><a href="#">THÔNG BÁO</a></li>
					      <li><a href="#">QUẢN LÝ SINH VIÊN</a></li>
					      <li><a href="#">QUẢN LÝ ĐỀ TÀI</a></li>
					      
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
					<div class="form-login" role="form" action="">
						<h4 class="title" style="text-align:center;padding-bottom:10px;">DANH MỤC MENU</h4>
						<div class="form-group">
							<i class="fa fa-pencil-square-o"></i><a class="active" href="#" class="group1">Thông báo từ Admin<span class="fa arrow"></span></a>
						</div>
						<div class="form-group">
							<i class=" fa fa-bell-o"></i><a href="#" class="group1">Thông báo xử lý điểm<span class="fa arrow"></span></a>
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
				<div class="content-centre">
				<form action="">
					<h4>DANH SÁCH THÔNG BÁO</h4>
					<div class="input-group panel panel-default">
					<input type="text" class="form-control" placeholder="Tìm kiếm...">
					<div class="input-group-btn">
						<button type="button" class="btn btn-default ">Tìm </button>
					</div>
				</div>
				
				<!-- Do du lieu tai day  -->
				<%for( THONGBAO tb :tbListGV){
					%>
				
					<div class="panel panel-default">
						<div class="panel-heading">
							<div>
								<b><%=tb.getNgaytb() %> </b><span class="header_TB"><%=tb.getTieude() %></span>
								<span class=" header_contentRight"><input type="image" name="del_Btn" src="images/recyclebin-512.png" class="image-btn"  alt="Submit"> 
								<input type="image" name="edit_Btn" src="images/edit.png" class="image-btn"> 
								</span>
							</div >
						
						</div><!-- panel heading -->
						<div class="panel-body">
							<p>
								<%=tb.getNoidung() %>
							</p>
							<i><%=tb.getFiledinhkem()%></i>
						</div>
					</div>		
					<%} %>
					
					
					<!-- Paging -->
					
					<nav>
					  <ul class="pagination">
					    <li class=""><a href="" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					   
			    			<li class="active"><a href=""><%=1%> <span class="sr-only">(current)</span></a></li>			
					    		
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phản hồi điểm</title>
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
					      <li><a  href="#">ĐĂNG KÍ ĐỀ TÀI</a></li>
					      <li class="active"><a href="#">PHẢN HỒI</a></li>
					      <li><a  href="#"> KẾT QUẢ</a></li>
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
						<!-- Do du lieu tai day  -->
							<h4>PHAN HỒI ĐIỂM</h4>
							<div class="panel panel-default">
								<div class="panel  panel-primary">
								  <!-- Default panel contents -->	
								  <br>						
									  	<div class="form-group">
					                        <label class="control-label col-xs-3">Loại phản hồi(*):</label>
					                        <div class="col-xs-3">
						                        <div class="form-group" >
				                           			<select class="form-control" name="color">
										                <option value="" onclick="disable()">Chon loai phan hoi</option>
										                <option value="diemBV" onclick="disable()">Điểm bảo vệ</option>
										                <option value="diemTD" onclick="enable()">Đánh giá tiến độ</option>
										            </select>
				                      			</div>
	                      	 				</div>
	                      	 				<div id="chonDot" style="visibility: hidden;">
		                      	 				<label class="control-label col-xs-3">Đợt Đánh Giá(*):</label>
						                       	 <div class="col-xs-2">
							                        <div class="form-group">
					                           			<select class="form-control" name="color">
											                <option value="">Chon Đợt</option>
											                <option value="lan1">Lần 1</option>
											                <option value="lan2">Lần 2</option>
											                <option value="lan3">Lần 3</option>
											                <option value="lan4">Lần 4</option>
											            </select>
					                      			</div>
		                      	 				</div>
	                      	 				</div>
						                </div> <!--from group1  -->
				                       	<div class="form-group">
				                      	    <label class="control-label col-xs-3">Nội dung cụ thể(*):</label>
						                      <div class="col-xs-6">
						                          <textarea class="tesxtArea">
													haia haii ah haia haii ah haia haii ahhaia haii ah haia haii ah
													haia haii ahhaia haii ah haia haii ah
												</textarea>
						                      </div> 
					              	   	</div> 
					              	   	 <div>
				                    <button class="btn btn-default" action="#" id="GV_Nhapbtn">Gửi</button>
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
				document.getElementById("chonDot").style.visibility = "hidden";
		}
	function enable(){
		document.getElementById("chonDot").style.visibility = "visible";
	}
</script>
</html>
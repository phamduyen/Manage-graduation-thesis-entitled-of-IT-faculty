<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cập nhat đánh giá</title>
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
					      	<li><a href="DangXuat"> |Đăng xuất</a></li>
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
            			<li style="background-color:#99FFFF"><a  href="">Đánh giá quá trình</a></li>
            			<li ><a href="">Nhập điểm bảo vệ</a></li>
            			<li><a href="">Quản lí báo cáo</a></li>
            			</ul>
            	       	           	
			</div>
		</div>
		<div class="col-md-9">
			<div class="well" style="height:500px">
			<center><h3>CẬP NHẬT ĐÁNH GIÁ</h3></center>     						
						<div class="row" style="margin-top:40px">				
							<b style="color:black"><div class="col-md-3">Mã Đăng Kí đề tài</div></b>							
							<div class="col-md-1">:</div>
                    		    	<div class="col-md-6">Phần mềm quản lí nhà hàng</div> 
                     			</div>
                      		<div class="row" style="margin-top:15px; margin-bottom:20px">
							<b style="color:black"><div class="col-md-3">Tên Đề Tài</div></b>
							<div class="col-md-1">:</div>
                     			<div class="col-md-6 form-group" >
                     				<p></p>
                     			</div> 
                       		</div>									
						<div class="row">
								
	                        <label class="col-md-3">Đợt đánh giá </label>
	                        <div class="col-md-1">:</div>
							<div class="col-md-6">
		                  		<select class="form-control" name ="dot">
		                	 	 <option value ="">Chọn Đợt</option>
		                	 	 <option >Đợt 1</option>
		                	 	 <option >Đợt 2</option>
		                	 	 <option >Đợt 3</option>
		                	 	 <option >Đợt 4</option>
		                	    </select>
							</div>                            
                        </div>
						<div class="row" style="margin-top:20px">
	                        <label class="control-label col-xs-3">Nhận Xét:</label>
	                        <div class="col-md-1">:</div>
	                        <div class="col-xs-6">
		                            <textarea class="form-control" rows="3" name="nhanXet"></textarea>
		                        </div>   
	               			</div>						
						<div class="row" style="margin-top:20px">
	                        <label class="control-label col-xs-3">Đánh giá của GV</label>%
	                        <div class="col-md-1">:</div>
	                        <div class="col-xs-2">
								<input type="number" min="0" max="100" class="form-control" name="Diem" placeholder="">
							</div>   
               			</div>	
               			<div class="row" style="margin-top:40px">
						<center>
						<button type="submit"  class="btn btn-default">Tiếp Tục</button>
				        <button class="btn btn-default" style="margin-left:20px">Dừng</button>
				        </center>			
				        </div>
					</form>
		        </div>
	        </div>
        </div>
    </div>
</div>
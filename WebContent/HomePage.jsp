<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hệ Thống Quản lý thực hiện đề tài tốt nghiệp</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
   
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.validate.js" ></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	function check(){
    		var userName = document.getElementById("userName").value;
    		var pass = document.getElementById("pass").value;
    		if(userName=="" && pass==""){
    			alert("Nhập tên đăng nhập và mật khẩu!");
    			
    			return false;
    		}else if(userName=="" ){
    			alert("Nhập tên đăng nhập !");
    			return false;
    		}else if(pass==""){
    			alert("Nhập mật khẩu!");
    			document.getElementById("userName").value=userName;
    			return false;
    		}
    		else{
    			return true;
    		}
    		
    	}
    </script>
</head>
<body>
<!-- Banner  -->
	<div class="container">
	  <div style="background-color: #337ab7; color: white" class="jumbotron">
	  	<div class="row">
	  		<div class="col-md-2">
	  			<img width="150px" height="150px" alt="" src="images/logokhoa.png">
	  		</div>
	  		<div class="">
	  			<h2>TRƯỜNG ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC ĐÀ NẴNG</h2>   
	  			<h4>KHOA CÔNG NGHỆ NGHỆ THÔNG TIN<h4>   
	    		<p>HỆ THỐNG QUẢN LÝ THỰC HIỆN ĐỀ TÀI TỐT NGHIỆP </p>
	  		</div>
	    </div>
	  </div>
	</div>

	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" >
				<div class="well">
					<form class="form-login" id="form" role="form" action="login" onsubmit="return check()" method="post">
					<h3 class="">Đăng nhập</h3>
						<fieldset>
								<div class="form-group">
									<input class="form-control"  id="userName" placeholder="Tên Đăng nhập" name="userName" type="text" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" id="pass" placeholder="Mật khẩu" name="pass" type="password" value="">
								</div>
								<div class="checkbox">
									<label> <input name="remember" type="checkbox" value="Remember Me">Ghi nhớ
									</label>
								</div>
								<!-- Change this to a button or input when using this as a form -->
								<button type="submit" class="btn btn-lg btn-success btn-block" name="submit" >Đăng nhập</button>
							</fieldset>
					</form>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
</div>
</body>
</html>
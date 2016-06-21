<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tạo thông báo</title>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.11.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    	function check(){
    		
    		var tieuDe=document.getElementById('tieuDe').value;
    		noiDung=document.getElementById('noiDung').value;
    		 var file=document.getElementById('file').value;
    		doiTuong=document.getElementById('doiTuong').value;
    		
    		if((""==tieuDe&&""==noiDung)||(""==noiDung&&""==doiTuong)||(""==tieuDe&&""==doiTuong)||(""==tieuDe&&""==noiDung&&""==doiTuong)){
    			alert("Vui lòng nhập đầy đủ thông tin");
    			}else if(""==tieuDe){
    			alert("Vui lòng nhập Tiêu đề");
    		}else if(""==noiDung){
    			alert("Vui lòng nhập nội dung");
    		}else if(""==doiTuong){
    			alert("Vui lòng nhập đối tượng");
    		}else if("xlsx"!=file.substring(file.length-4,file.length)&&"xls"!=file.substring(file.length-3,file.length)){
    			alert("file không đúng định dạng")
    			alert(file.substring(file.length-4,file.length));
    		}else if(tieuDe.length > 50){
    			alert("Tiêu đề quá 50 ký tự!!!")
    		}else alert("Tạo thông báo thành công");
    		
    	}
    	</script>
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
					      <li class="active"><a href="#">THÔNG BÁO</a></li>
					         <li><a href="#">SINH VIÊN</a></li> 
					      <li><a href="#">GIÁO VIÊN</a></li>
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
			<div class="col-md-3">
				<div class="well">
				<h4 class="title" style="text-align:center;padding-bottom:10px;">DANH MỤC MENU</h4>
				<ul class="nav">
            		<li><a href="" >Thông báo chung</a></li>
            		<li><a href="">Sinh viên phản hồi</a></li>
            		<li   style="background-color:#99FFFF"><a href="">Tạo thông báo</a></li>
            	</ul>
				</div>
			</div>
			<div class="col-md-9">
				<div class="well">
<%--<%
	String tieuDe = (String)request.getAttribute("tieuDe");
	String noiDung =(String)request.getAttribute("noiDung");
	String file =(String)request.getAttribute("file");
	String doiTuong =(String)request.getAttribute("doiTuong");
--%>			
					<h4>TẠO THÔNG BÁO</h4>
                <form class="form-horizontal" action="<%= request.getContextPath()%>/trangchu-admin" onsubmit="return check()" method="post" >
                    <div class="form-group">
                        <label class="control-label col-xs-2">Tiêu đề (*)</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="tieuDe" name="tieuDe" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-2">Nội dung (*)</label>
                        <div class="col-xs-10">
                            <textarea class="form-control" rows="3" id="noiDung" name="noiDung"></textarea>
                        </div>   
                    </div>
                       <div class="form-group">
                        <label class="control-label col-xs-2">File đính kèm</label>
                        <div class="col-xs-10">
                            <input type="file" id="file" class="file" name="file">
                            <p class="help-block">Chọn tệp</p>
                        </div>
                    </div>
                    <div class="form-group">
                    <label class="control-label col-xs-2">Đối tượng (*)</label>
                    <div class="col-xs-4">
                    <select class="form-control" name="doiTuong" id="doiTuong">
                	  <option value="">--Chọn đối tượng--</option>
					  <option >Sinh Viên</option>
					  <option>Giáo Viên</option>
					 
					</select>
					</div>
                    </div>
                    
				<%-- 	<input type="submit" value="Tạo" name="submit">
					<input type="button" value="Hủy" name="huy">--%>
                       <button class="btn btn-default" id="tao" type="submit">Tạo</button>
				<input class="btn btn-default" type="button" value="Hủy" onclick="window.location='trangchu-admin'"></input>
                </form>
                
               
				</div>
			</div>
		
		</div>
		
	</div><!-- Container- conten  -->
	
</body>
</html>
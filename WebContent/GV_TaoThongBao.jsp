<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tạo</title>
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
					      <li class="active"><a href="#">THÔNG BÁO</a></li>
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
					<div class="form-login" role="form" >
						<h4 class="title" style="text-align:center;padding-bottom:10px;">DANH MỤC MENU</h4>
						<div class="form-group" >
							<i class="fa fa-pencil-square-o"></i><a class="active" href="#" class="group1">Thông báo xử lý điểm<span class="fa arrow"></span></a>
						</div>
						<div class="form-group" >
							<i class=" fa fa-bell-o"></i><a href="#" class="group1">Thông báo từ Admin<span class="fa arrow"></span></a>
						</div>
						<div class="form-group"  >
							<i class="fa fa-paste"></i><a href="#" class="group1" >Danh sách thông báo<span class="fa arrow"></span></a>
						</div>
						<div class="form-group"  style="background-color:#99FFFF">
							<i class="fa fa-pencil-square-o"></i><a href="#" class="group1">Tạo thông báo<span class="fa arrow"></span></a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="well">
					<h4>TẠO THÔNG BÁO</h4>	
					<div class="content-centre form-horizontal" >
					<form  action="TaoThongBao_GVSevlet?type=submit" method="post" onSubmit="return Validate()" method="post" enctype="multipart/form-data">
						<div class="form-group">
	                        <label class="control-label col-xs-2">Tiêu đề (*)</label>
	                        <div class="col-xs-10">
	                            <input type="text" class="form-control" name="tieuDe" id = "tieuDe" placeholder="tieu de">
	                        </div>
	                        <span id = "error1"></span>
                    	</div>
	                    <div class="form-group">
	                        <label class="control-label col-xs-2">Nội dung (*)</label>
	                        <div class="col-xs-10">
	                            <textarea class="form-control" rows="3" name="noiDung" id ="noiDung"></textarea>
	                        </div>   
	                    </div>
                       	<div class="form-group">
	                        <label class="control-label col-xs-2">File đính kèm</label>
	                        <div class="col-xs-10">
	                            <input type="file" class="file" name="file" id="fileForm"  onchange="AlertFilesize();" >
	                            <p class="help-block">Chọn tệp</p>
	                        </div>
	                   	</div>    
	                   	<button type="submit" class="btn btn-default" id="GV_Nhapbtn"  name="submit">Tạo</button>
	                   	<button type="button" class="btn btn-default" id="GV_Huybtn" onclick="history.go(-1)">Hủy</button> 	           
					</form>		
					
					</div>		
				</div>
			</div>
		</div>		
	</div>
</body>
<script type="text/javascript">
 function Validate(){
	 tieuDe = document.getElementById("tieuDe").value; 
	 noiDung = document.getElementById("noiDung").value;
	 file = document.getElementById("fileForm").value;
	 if(""==tieuDe || ""==noiDung || null ==tieuDe|| null ==noiDung )
		 {
		 	alert("Thao tác không thành công. Chú ý những mục có dấu * là bắt buộc");
		 }
	 else if(tieuDe.length >50 ){
		 alert("Tiêu đề vượt quá 50 kí tự");
	 }else {
		 alert("Thêm Thành Công");
		 }
	 }
 function AlertFilesize(){
	    if(window.ActiveXObject){
	        var fso = new ActiveXObject("Scripting.FileSystemObject");
	        var filepath = document.getElementById('fileForm').value;
	        var thefile = fso.getFile(filepath);
	        var sizeinbytes = thefile.size;
	    }else{
	        var sizeinbytes = document.getElementById('fileForm').files[0].size;
	    }

	    var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
	    fSize = sizeinbytes; i=0;while(fSize>900){fSize/=1024;i++;}
		if(fSize>100){ alert("size"+(Math.round(fSize*100)/100)+' '+fSExt[i] +" vượt quá 100KB vui lòng chọn lại");}	   
	}
</script>
</html>
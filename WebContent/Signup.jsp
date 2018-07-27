<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><head>
	<title>Index</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">  
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
	<script type="text/javascript" src="SignupJS.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" href="style.css">
</head>
<body style="background-color:#E89847">
	<div class="container">
		<!-- <a class="dangnhap" href="#" id="dangnhap" onclick="onDangnhap()">Đăng Nhập</a>
		<a class="dangki" href="#" id="dangki" onclick="onDangki()">Đăng Kí</a> -->
		<!-- <div id="divdangnhap" class="divform">
			<h1>Đăng nhập</h1>
			<form name="frmDangNhap" action="">
				<fieldset class="form-group">
					<label>Tên đăng nhập</label>
					<input type="username" class="form-control" id="idusername" placeholder="Nhập tên đăng nhập">
					</fieldset>
					<fieldset class="form-group">
						<label>Mật khẩu</label>
						<input type="password" class="form-control" id="idpassword" placeholder="Nhập mật khẩu">
					</fieldset>
					<button type="submit" class="btn btn-primary" id="dangnhap">Đăng Nhập</button>
				</form>
			</div> -->
			<div id="divdangki" class="divform">
				
				<!-- <a href="" title="">Đăng nhập vào tài khoản của bạn</a> -->
				<form name="frmDangKi" action="">
					<h1>Tạo tài khoản NaMe</h1>
					<fieldset class="form-group">
						<input type="text" class="form-control" id="username" placeholder="VD:Nguyễn Văn A">
						<p id="tbusername"></p>
					</fieldset>
					<fieldset class="form-group">
						<input type="text" class="form-control" id="email" placeholder="Nhập email">
						<p id="tbemail"></p>
					</fieldset>
					<fieldset class="form-group">
						<input type="password" class="form-control" id="password" placeholder="Mật khẩu">
						<p id="tbpassword"></p>
					</fieldset>
					<button type="submit" class="btn btn-primary" action="thanhvien.php" onclick="return KTHopLe()">Tạo tài khoản</button><br>
					
					<a href="<%=request.getContextPath() %>/Signin.jsp" title="">Bạn đã có tài khoản</a> <br> <br>
				</form>

			</div>



		</div>
	</body>
	</html>
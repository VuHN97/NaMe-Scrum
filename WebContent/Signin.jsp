<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V19</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="vendor/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
</head>
<body style="background-color:#E89847">
	<div class="container">
			<div id="divdangki" class="divform">
				<form name="frmDangKi" class="login100-form validate-form" action="<%=request.getContextPath()%>/Dang-nhap" method="post" class="form">
					<h1>Đăng nhập NaMe</h1>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input id="Email" class="input100" type="text" name="email" placeholder="Email" />
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input id="Pass" class="input100" type="password" name="pass" placeholder="Password" />
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
						<input type="submit" class="btn btn-primary" value="Đăng nhập">
					</div>
					<%
					if (request.getAttribute("msg") != null) {
						String msg = (String)request.getAttribute("msg");
						out.print("<p style='color:red'>"+msg+"</p>");
					}
					%>

					<div class="text-center">

						<a href="<%=request.getContextPath() %>/Signup.jsp" class="txt2 hov1">
							Tạo tài khoản
						</a>
					</div>
				</form>
			</div>
	</div>
	

	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
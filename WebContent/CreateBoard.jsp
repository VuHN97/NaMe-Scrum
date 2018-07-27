<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>NaMe - Task Management</title>
	<link rel="stylesheet" href="fonts/fontawesome-free-5.1.0-web/fonticon/web-fonts-with-css/css/fontawesome-all.css">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="style2.css">
	<script type="text/javascript" src="vendor/bootstrap.js"></script>
	<link rel="stylesheet" href="vendor/bootstrap.css">


	<script defer src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<!--  <script defer src="index.js"></script> -->
</head>
<body>
	<header>
            <h1>NaMe - Task Management</h1>
      </header>

      <main>

            <div class="container">
                  <div id="divhome" class="divform">
                        <div class="row">
                              <div class="col-sm-2">
                                    <button type="button" class="btn btn-light"><i class="fas fa-home"style="font-size: 20px;margin-right:5px;"></i>Trang chủ</button>
                                    <button type="button" class="btn btn-light"><i class="fas fa-list-ul"style="font-size: 20px;margin-right:5px;"></i>List table</button>          
                              </div>
                              <div class="col-sm-6 text-xs-center">
                                    <p style="font-weight: 700;">Theo dõi và cập nhật</p>
                                    <p>Mời mọi người vào bảng và thẻ, để lại nhận xét, thêm ngày hết hạn và chúng tôi sẽ hiển thị hoạt động quan trọng nhất ở đây.</p>
                              </div>
                              <div class="col-sm-4">
                                    <p>Liên kết</p>
                                    <a href="<%=request.getContextPath() %>/Table.jsp" title=""><button type="button" class="btn btn-light"><i class="fas fa-plus-square" style="font-size: 20px;margin-right:5px;"></i>Tạo bảng</button>
                                    </a>
                                    


                              </div>
                        </div>
                  </div>
            </div>      
      </main>

</body>
</html>

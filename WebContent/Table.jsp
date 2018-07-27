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
               <div  id="divtaobang">
                  <form action="<%=request.getContextPath()%>/index2.jsp" method="post">
                        <fieldset class="form-group">
                              <label for="exampleInputNameTable">Tên bảng</label>
                              <input  type="text" class="form-control" id="exampleInputEmail1" name="exampleInputEmail1" placeholder="Tiêu đề bảng">
                        </fieldset>
                  </div>
                  <button type="submit" class="btn btn-primary" >Tạo bảng</button>
                  <a href="<%=request.getContextPath() %>/CreateBoard.jsp" title=""><button type="button" class="btn btn-primary">Hủy</button>
                  </a>
                  </form>   
            </div>
</div>


</main>

</body>
</html>

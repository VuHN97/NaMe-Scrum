<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>NaMe - Task Management</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="style2.css">

    <script defer src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script defer src="index.js"></script>
  </head>
  <body>
    <header>
      <h1>NaMe - Task Management</h1>
    </header>
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		String TieuDe = request.getParameter("exampleInputEmail1");
	%>
	<h3><span style="margin-left: 10%">Bảng: <%=TieuDe %></span></h1>
    <main>
      <!-- <div class="new-list">
        <form>
          <input type="text" name="title" placeholder="Create a list" autocomplete="off" wrap="soft">
          <button type="submit" class="btn list-btn">Create</button>
        </form>
      </div> -->

      <div class="all-lists">
        <!-- <ul>
          <h2>My List</h2>
        </ul>

        <div class="tools" autocomplete="off">
          <form id="add-item">
            <input type="text" placeholder="Add item" id="item-to-add" autocomplete="off">
            <button type="submit" class="add-btn">Add</button>
          </form>
        </div> -->
      </div>
    </main>
  </body>
</html>

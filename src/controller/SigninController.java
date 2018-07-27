package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Account;
import model.dao.SigninDao;

public class SigninController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SigninController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/Signin.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SigninDao sigDao = new SigninDao();
		String Email = request.getParameter("email");
		String Pass = request.getParameter("pass");
		String msg = null;
		Account Acc = new Account(Email, Pass);
		ArrayList<Account> listAcc = sigDao.getItems(Acc);
		
		if(listAcc.size() > 0){
			msg = "Đăng nhập thành công!";
			request.setAttribute("Acc", listAcc);
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/CreateBoard.jsp");
			rd.forward(request, response);
		} else {
			msg = "Invalid email or password";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/Signin.jsp");
			rd.forward(request, response);
		}
		
	}

}

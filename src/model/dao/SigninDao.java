package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.Account;
import util.ConnectDBUtil;

public class SigninDao {
	private Connection conn;
	private Statement st;
	private ResultSet rs;
	ArrayList<Account> listItems;
	public ArrayList<Account> getItems(Account Acc){
		listItems = new ArrayList<>();
		conn = ConnectDBUtil.getConnection();
		String sql = "SELECT * from account WHERE Email = '"+Acc.getEmail()+"' and Password = '"+Acc.getPass()+"'";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()){
				Account objItem = new Account(rs.getString("Email"), rs.getString("Name"), rs.getString("Password"));
				listItems.add(objItem);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			ConnectDBUtil.close(rs, st, conn);
		}
		return listItems;
	}
}

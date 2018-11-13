<%@page import="java.util.HashMap"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTf-8");
	response.setCharacterEncoding("UTF-8");
%>


<%
	JSONObject jsonObject = null;
	JSONArray jsonArray = new JSONArray();
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet set = null;
	Context context = null;
	DataSource ds = null;

	String query = "select * from member3 where mid = ?";

	try {

		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		ds = (DataSource) envCtx.lookup("jdbc/TestDB");
		con = ds.getConnection();

		pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		set = pstmt.executeQuery();
	
		
		if (set.next()) { 
			//while (set.next()) {
				String dbId = set.getString("mid");
				String dbPw = set.getString("mpw");
				if (dbPw.equals(password)) {
					jsonObject = new JSONObject();
					//jsonObject.put("mno",set.getInt("mno"));
					jsonObject.put("mid", set.getString("mid"));
					jsonObject.put("mpw", set.getString("mpw"));
					jsonObject.put("mname", set.getString("mname"));
					jsonArray.add(jsonObject);
					out.print(jsonArray);
				} else{
					out.print(-1); // 비밀번호가 틀림
				}
			//}
		} else {
			out.print(0); // 그런 회원이 없음
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (con != null) {
				con.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (set != null) {
				set.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>


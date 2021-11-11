<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDTO"%>
<%@ page import="user.UerDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = null;
	String userPassword= null;
	if(request.getParameter("userID")  != null) {
		userID = (String) request.getparameter("userID");
	}
	if(request.getParameter("userPassword") != null) {
		userPassword = (String)	request.getParameter("userPassword");
	}
	if(userID == null || userPassword == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력을 확인해 주세요');");
		script.println("history.bakc();");
		script.println("</script>");
		script.close();
		return;
	}
	UserDAO userDAO = new UserDAO();
	int result = userDAO.join(userID, userPassword);
	
%>	
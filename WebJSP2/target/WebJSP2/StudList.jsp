<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>Список абитуриентов</title> 
</head> 
<body> 
<%    
    request.setCharacterEncoding("UTF-8"); 
    String name = request.getParameter("name"); 
    RequestDispatcher dispatcher; 
    if (name == null)  
    { 
        dispatcher = getServletContext().getRequestDispatcher("/ErrorManager.jsp");   
        dispatcher.forward(request, response);
        return;
    } 
%> 
  <h1>Список абитуриентов университета: <%=name%></h1> 
  <%@include file="ListData.jsp"%> 
 </body> 
</html>
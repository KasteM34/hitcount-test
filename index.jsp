<%@ page import="java.io.*,java.util.*" %>

<html>
<head>
<title>JSP Hit Counter</title>
</head>
<body>
<%
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       hitsCount = 1;
    }else{
       /* return visit */
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
<p>hitcount=<%= hitsCount%></p>
</body>
</html>

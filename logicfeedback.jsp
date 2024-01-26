<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

    <%
 
   String EID=request.getParameter("eId");
   String fname=request.getParameter("fullnm");
       String feedback=request.getParameter("feed");
          String contact=request.getParameter("cno");
    
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("insert into feedback values(?,?,?,?)");
            
            st.setString(1,EID);
            st.setString(2,fname);
            st.setString(3,feedback);
            st.setString(4,contact);
            st.executeUpdate();
            con.close();
        response.sendRedirect("index.jsp");
%>
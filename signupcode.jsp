<%@page import="java.sql.DriverManager,java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
    String email=request.getParameter("eId");
    String firstName=request.getParameter("fName");
    String lastName=request.getParameter("lName");
    String password=request.getParameter("pwd");
    String dob=request.getParameter("dob");
    String country=request.getParameter("count");
    String city=request.getParameter("city");
    String address=request.getParameter("address");
     String contact=request.getParameter("contact");
   
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st=con.prepareStatement(
    "insert into signup values(?,?,?,?,?,?,?,?,?)");
    st.setString(1,email);
    st.setString(2,firstName);
    st.setString(3,lastName);
    st.setString(4,password);
    st.setString(5,dob);
    st.setString(6,country);
    st.setString(7,city);
    st.setString(8,address);
    st.setString(9,contact);
    st.executeUpdate();
    con.close();
    response.sendRedirect("user.jsp");
%>
    
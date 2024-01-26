
<%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet"%>
            <%
                String emailId=request.getParameter("eId");
                String password=request.getParameter("pwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("select * from responsibleperson where email=? and password=?");
            
            st.setString(1,emailId);
            st.setString(2,password);
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
             String post=rs.getString(3);
             
             if(post.equalsIgnoreCase("admin"))
             {
             response.sendRedirect("adminpage.jsp");
            }
            if(post.equalsIgnoreCase("operator"))
             {
             response.sendRedirect("oppage.jsp");
            }
            }
            else
            {
            out.println("invalid id or password");
            }
            %>
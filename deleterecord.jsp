<%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet"%>
            <%
                String emailId=request.getParameter("eId");
                
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("delete from signup where email=?");
            
            st.setString(1,emailId);
            st.executeUpdate();
            response.sendRedirect("viewusers.jsp");
            %>
<%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet"%>
            <%
                String emailId=request.getParameter("eId");
                String oldpassword=request.getParameter("oldpwd");
                        String newpassword=request.getParameter("newpwd");
                        String cnewpassword=request.getParameter("cnewpwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("select * from responsibleperson where email=? and password=?");
            
            st.setString(1,emailId);
            st.setString(2,oldpassword);
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
            if(newpassword.equals(cnewpassword))
            {
            
            PreparedStatement st1=con.prepareStatement(
            "update responsibleperson set password=? where email=?");
            st1.setString(1,newpassword);
            st1.setString(2,emailId);
            st1.executeUpdate();
             response.sendRedirect("authority.jsp");
            }
            else
            {
            out.println("new password and confirm new password doesnt match");
            }
            }
            else
            {
             out.println("invalid id/old password");
            }
            %>
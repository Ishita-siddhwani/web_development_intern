<%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet"%>
            <%
                String emailId=request.getParameter("eId");
                String password=request.getParameter("pwd");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("select * from signup where email=? and password=?");
            
            st.setString(1,emailId);
            st.setString(2,password);
            ResultSet rs=st.executeQuery();
            if(rs.next())
            {
              Cookie ck=new Cookie("packers",emailId);
                ck.setMaxAge(200000);
                response.addCookie(ck);
            session.setAttribute("CALL",emailId);
            response.sendRedirect("user.jsp");
            }
            else
            {
            out.println("invalid id or password");
            }
            %>
            
            
            <%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet"%>
            <%
               String btn=request.getParameter("btn");
               int RESULT=0;
               int VALIDATION=0;
               if(btn!=null && btn.equals("SIGNIN"))
               {
                String emailId=request.getParameter("eId");
                String password=request.getParameter("pwd");
                
                if(emailId.equals("") && password.equals(""))
            {
            VALIDATION=3;
            }
            else if(password.equals(""))
            {
            VALIDATION=2;
            }
            else if(emailId.equals(""))
            {
            VALIDATION=1;
            }
            else
            {
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
            RESULT=1;
            }
            }
            }
            %>
            
            <html>
    <style>
        .texttheme{
            width:250px;
            border-radius:40px;
            height:30px;
        }
        .texttheme1{
            width:250px;
            border-radius:40px;
            height:30px;
        }
        .titletheme{
            font-size:70px;
            font-family:berlin sans fb;
        }
        .tdtheme{
            font-size:20px;
            font-family:berlin sans fb;
            text-transform:uppercase;    
            color:black;
            
        }
        .tdtheme:hover{
box-shadow:0px 0px 70px blue,0px 0px 70px blue,0px 0px 70px blue,0px 0px 70px blue;
border-radius:50px;
            
        }
        
        .tdtheme1:hover{
box-shadow:0px 0px 70px lightpink,0px 0px 70px lightpink,0px 0px 70px lightpink;
border-radius:30px;
            
        }
        .tabtheme{
            height:80px;
            border:inset;
            box-shadow:0px 0px 70px darkblue,0px 0px 70px darkblue;
            margin-top:-120px;
            margin-left:250px;
            border-radius:60px;
        }
        .signtheme{
            height:80px;
            border:inset;
            box-shadow:0px 0px 70px lightpink,0px 0px 70px lightpink;
            margin-top:320px;
            margin-left:600px;
            border-radius:60px;
        }
        .backtheme{
            background-image:url('images/finalhh.png');
            background-size:100%;
            box-shadow:0px 0px 70px darkblue,0px 0px 70px darkblue;
        }
        .logotheme{
            
        }
    </style> 
    <body class="backtheme">
        <table width="100%">
            <tr>
                
                            <td><img src="images/LOGO3.png" width="250px"height="150px" class="logotheme"></td>
                </tr>

        </table>
        
        
        <table WIDTH="80%" class="tabtheme"> 
            <tr align=" center">
                <td class="tdtheme"><a href=about us</td>
                <td class="tdtheme">contact</td>
                <td class="tdtheme">query</td>
                <td class="tdtheme">gallery</td>
                <td class="tdtheme">product category</td>
            </tr>
        </table>
        <br>
        <br>
        <br>
        <br>
                <form action="login.jsp"> 
                 
            </div>               
                <table align="center"style="background-color:rgba(255,255,255)" width="40%"
                 height="300px" cellspacing="2" cellpadding="2">
                     <tr align="center">
                         <td colspan="2" style="font-size:20px;font-family:berline sans fb;
                             background-color:rgba(204, 56, 139)">USER LOGIN</td>
                     </tr>
                     
                     
                     <%
    if(btn!=null && RESULT==1)
    {
    %>
    <tr bgcolor="red">
        <td colspan="2">invalid id/password</td>     
        </tr>
        <%}%>
        
        <%
        if(btn!=null && VALIDATION==1)
    {
    %>
    <tr bgcolor="red">
        <td colspan="2">id is required</td>     
        </tr>
        <%}%>
        
    <%
        if(btn!=null && VALIDATION==2)
    {
    %>
    <tr bgcolor="red">
        <td colspan="2">password is required</td>     
        </tr>
        <%}%>
        
    <%
        if(btn!=null && VALIDATION==3)
    {
    %>
    <tr bgcolor="red">
        <td colspan="2">both the fields are required</td>     
        </tr>
        <%}%>
                     
                     <tr align="center">
                     <td colspan="20"><img src="images/icon.png"  "width="150px" height="80px"></td>
                     </tr>
                     <tr align="center">
                         <td>EMAIL</td>
                         <td><input type="email" name="eId" class="texttheme"></td>
                         </tr>
                     <tr align="center">
                         <td>PASSWORD</td>
                         <td><input type="password" name="pwd" class="texttheme"></td>
                    </tr>
                
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="LOGIN">
                            <input type="reset" value="CLEAR" >
                            </td>
                      </tr>
        </table>
    </form>
    </div>
    </body>       
</html>



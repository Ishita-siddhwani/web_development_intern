<html>
    <style>
        .texttheme
        {
            width:250px;
            border-radius:40px;
            height:30px;
          
       
        }
        .tstheme{
            font-size: 25px;
            font-family: berlin sans fb;
            text-transform: uppercase;
        }
        .ittheme{
            font-size:50px;
            line-height:25px;
            max-width:370px;
            width:auto;
           
        }
        .istheme{
           font-size:20px;
           line-height:25px;
        }
        .metheme{
            
        }
        .tdtheme{
            font-size: 25px;
            font-family: berlin sans fb;
            text-transform: uppercase;
        }
        .tdtheme:hover{
            background-color:lightblue;
            border-radius:1px;
        }
        .tabtheme{

            height: 60px;
        }
        .backtheme{
            background-image:url('images/frontpage.png');
            background-size:100%;
            
        }
        .gif{
            margin-top:-10px;
           height: 600px;
            width:100%;
        }
    </style>
    <body>
        <table width="100%" class="tabtheme" bgcolor="pink">
            
        
        <%@page import="java.sql.DriverManager,java.sql.Connection"%>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.ResultSet,java.util.ArrayList"%>
<% 
String id=(String)session.getAttribute("CALL");  
  
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
PreparedStatement st=con.prepareStatement("select * from signup where email=?  ");
st.setString(1,id);

ResultSet rs =st.executeQuery();
String firstName="";
String lastName="";
String password="";
String dob="";
String country="";
String city="";
String address="";
String contact="";
if(rs.next()){
    firstName=rs.getString(2);
    lastName=rs.getString(3);
    password=rs.getString(4);
    dob=rs.getString(5);
    country=rs.getString(6);
    city=rs.getString(7);
    address=rs.getString(8);
    contact=rs.getString(9);
    }
%>

    <tr align="center">    
    <td class="tdtheme"><a href="Home.jsp" class="link">home</a> </td>
    <td class="tdtheme"><a href="userpage.jsp" class="link">user </a> </td>
    <td class="tdtheme"><a href="signoutcode.jsp" class="link">sign out</a> </td>
   
   
    </tr> 
        </table> 
<div style=background-image:url('images/frontpage.png');background-size:100%;background-repeat:no-repeat;width:100%;height:700px;">

    <table width="40%" align="center" celllspacing="10" cellpadding="10" style="border:5px double black;">
        <tr align="center" bgcolor="darkpink">
            <td colspan="2">Welcome<%=session.getAttribute("CALL")%>!!!!Your profile is......</td>  
        </tr>
        <br>
        <br>
        <tr bgcolor="lightpink">
            
            <td>id</td>
            <td><%=id%></td>
        </tr>
                <tr bgcolor="lightpink">
            <td>Full Name</td>
            <td><%=firstName%></td>
        </tr>
                <tr bgcolor="lightpink">
            <td>Last Name</td>
            <td><%=lastName%></td>
        </tr>
                <tr bgcolor="lightpink">
            <td>PASSWORD</td>
            <td><%=password%></td>
        </tr>
                <tr bgcolor="lightpink">
            <td>DOB</td>
            <td><%=dob%></td>
        </tr>
                </tr>
                <tr bgcolor="lightpink">
            <td>country</td>
            <td><%=country%></td>
        </tr>
                </tr>
                <tr bgcolor="lightpink">
            <td>City</td>
            <td><%=city%></td>
        </tr>
        <tr bgcolor="lightpink">
            <td>Address</td>
            <td><%=address%></td>
        </tr>
                        <tr bgcolor="lightpink">
            <td>Contact</td>
            <td><%=contact%></td>
        </tr>
    </table>
      <% 
        String deletebutton=request.getParameter("delbtn");
        if(deletebutton!=null && deletebutton.equalsIgnoreCase("DELETE PROFILE")){
            PreparedStatement st1=con.prepareStatement("delete signup where email=? ");
            st1.setString(1,id);
            st1.executeUpdate();
            session.invalidate();
            response.sendRedirect("user.jsp");
            }
        %>

        <form action="deleterecord.jsp">
            <input type="submit" value="DELETE PROFILE" name="delbtn">
        </form>
</div>
    </body>
</html>
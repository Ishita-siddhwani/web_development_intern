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
        <h1 style="text-align:center;">PRODUCT DETAILS</h1>
<%@page import="java.sql.DriverManager,java.sql.Connection"%>
            <%@page import="java.sql.PreparedStatement"%>
            <%@page import="java.sql.ResultSet,java.util.ArrayList"%>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            PreparedStatement st=con.prepareStatement("select * from productinformation");
            ResultSet rs=st.executeQuery();
            ArrayList list1=new ArrayList();
            ArrayList list2=new ArrayList();
            ArrayList list3=new ArrayList();
            ArrayList list4=new ArrayList();
            ArrayList list5=new ArrayList();
            
            while(rs.next())
            
            {
            list1.add(rs.getString(1));
            list2.add(rs.getString(2));
            list3.add(rs.getString(3));
            list4.add(rs.getString(4));
            list5.add(rs.getString(5));
            }
            %>
            <div style="background-size:100%;
             background-repeat:no-repeat;width:100%;height:700px">
                <table cellspacing="5" cellpadding=""5" align="center" style="border:5px double black;">
                    
                    <tr bgcolor="lemonyellow">
                         <td style="border:5px solid black;">ID</td>
                         <td style="border:5px solid black;">NAME</td>
                         <td style="border:5px solid black;">CATEGORY</td>
                         <td style="border:5px solid black;">DETAILS</td>
                         <td style="border:5px solid black;">RATING</td>
                         
                        
                        
                    </tr>
                    <%
                        for(int i=0;i<list1.size();i++)
                        {
                       %>
                    <tr align="center"  style="color:black">
                        <td> <%=list1.get(i)%></td>
                         <td> <%=list2.get(i)%></td>
                         <td> <%=list3.get(i)%></td>
                          <td> <%=list4.get(i)%></td>
                           <td> <%=list5.get(i)%></td>
                    </tr>
                    <%}
        %>

                  
        </table>
            </div>
            </body>
            </html>

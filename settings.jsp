<%@include file="securityguard.jsp"%>

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
background-color:palevioletred;
              border-radius:0px;
            }
        
        .tdtheme1:hover{
box-shadow:0px 0px 70px lightpink,0px 0px 70px lightpink,0px 0px 70px lightpink;
border-radius:30px;
            
            
        }
        .tabtheme{
            height:800px;
            border:solid;
            
            margin-top:-120px;
            margin-left:20px;
            border-radius:0px;
      
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
            background-image:url('images/frontpage.png');
            background-size:100%;
            box-shadow:0px 0px 70px darkblue,0px 0px 70px darkblue;
        }
        .logotheme{
            
        }
    </style> 
    <body class="backtheme">
        <table width="100%">
            <tr align="right">
                
<td><img src="images/LOGO3.png" width="250px"height="150px" class="logotheme"></td>
                </tr>

        </table>
        <img src='images/handimg.png'width="500px"height="300px"style="float:right";margin:100px 800px">
        
        <table WIDTH="15%" class="tabtheme" cellpadding="2" cellspacing="5"> 
            <tr align="left">
                <td class="tdtheme"><a href="profile.jsp">profile</a></td>
            </tr>
            
            <tr align="left">
                <td class="tdtheme"><a href="password.jsp">contact</a></td>
            </tr>
            
            <tr align="left">
                <td class="tdtheme"><a href="help.jsp">query</a></td>
            </tr>
        </table>
    </body>       
</html>
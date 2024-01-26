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
                <td class="tdtheme">about us</td>
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
                <form action="adminpasscode.jsp"> 
                 
            <div>               
                <table align="center"style="background-color:rgba(255,220,210)" width="40%"
                 height="300px" cellspacing="2" cellpadding="2">
                     <tr align="center">
                         <td colspan="2" style="font-size:20px;font-family:berline sans fb;
                             background-color:rgba(204, 56, 139)">USER LOGIN</td>
                     </tr>
                     <tr align="center">
                     <td colspan="20"><img src="images/icon.png"  "width="150px" height="80px"></td>
                     </tr>
                     <tr align="center">
                         <td>EMAIL</td>
                         <td><input type="email" name="eId" class="texttheme"></td>
                         </tr>
                     <tr align="center">
                         <td>OLD PASSWORD</td>
                         <td><input type="password" name="oldpwd" class="texttheme"></td>
                    </tr>
                    
                    <tr align="center">
                         <td>NEW PASSWORD</td>
                         <td><input type="password" name="newpwd" class="texttheme"></td>
                    </tr>
                    
                     <tr align="center">
                         <td> CONFIRM NEW PASSWORD</td>
                         <td><input type="password" name="cnewpwd" class="texttheme"></td>
                    </tr>
                
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="LOGIN" class="btntheme">
                            <input type="reset" value="CLEAR" class="btntheme">
                            </td>
                      </tr>
        </table>
    </form>
    </div>
    </body>       
</html>



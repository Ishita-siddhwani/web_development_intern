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
              background-color: purple;
              border-radius:0px;
            
        }
        
        .tdtheme1:hover{
box-shadow:0px 0px 70px lightpink,0px 0px 70px lightpink,0px 0px 70px lightpink;
border-radius:30px;
            
        }
        .tabtheme{
            height:60px;
            border:solid;
            
            margin-top:-500px;
            margin-left:250px;
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
            background-image:url('images/1.avif');
            background-size:100%;
            
        }
        
        .imagetheme{
            height:60px;
            border:solid;
            
            margin-top:350px;
            margin-left:600px;
            border-radius:0px;
        }
     
        
        
        
    </style> 
    
    <body class="backtheme">
        <table width="100%">
            <tr>
                
                            <td><img src="images/LOGO3.png" width="250px"height="150px" class="logotheme"></td>
                </tr>

        <form action="logicfeedback.jsp"> 
                 
            <div>               
                <table align="center"style="background-color:rgba(255,255,255)" width="40%"
                 height="300px" cellspacing="2" cellpadding="2">
                     <tr align="center">
                         <td colspan="2" style="font-size:20px;font-family:berline sans fb;
                             background-color:rgba(204, 56, 139)">FEEDBACK FORM</td>
                     </tr>
        <tr align="center">
                         <td>EMAIL  ID</td>
                         <td><input type="email" name="eId" class="texttheme"></td>
                         </tr>
                     <tr align="center">
                         <td>FULL NAME</td>
                         <td><input type="text" name="fullnm" class="texttheme"></td>
                    </tr>
                    
                    <tr align="center">
                         <td>FEEDBACK YOU WANT TO GIVE ABOUT PRODUCT</td>
                         <td><input type="password" name="feed" class="texttheme"></td>
                    </tr>
                    
                     <tr align="center">
                         <td> CONTACT NUMBER</td>
                         <td><input type="password" name="cno" class="texttheme"></td>
                    </tr>
                
                    <tr align="center">
                        <td colspan="2"><input type="submit" value="POST" class="btntheme">
                            <input type="reset" value="CLEAR" class="btntheme">
                            </td>
                      </tr>
        </table>
    </form>
    </div>
    </body>       
</html>
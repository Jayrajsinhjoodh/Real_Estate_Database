<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createpassword.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" href="createpassword.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="main">
        <div class="card">
            <div class="card-title">
                <img src="logo12588888.jpg" style="width: 120px;" alt="" srcset="">Enter your new password
            </div>
            <div class="box">
                <div class="Password"> <label for="Password"><b>Password</label>
                 <%--   <input type="text" placeholder="Password" name="Password" id="Password" required>
                --%>
                    <asp:TextBox ID="Txtpassword" placeholder="enter new password" runat="server"></asp:TextBox>
                </div>
                <div class="card-title2">
                 <div class="confirm password"> <label for="confirm password"><b>confirm password</label>
                    <%--<input type="text" placeholder="confirm password" name="confirm password" id="confirm password" required>
                 --%>
                     <asp:TextBox ID="txtconfpass" placeholder="enter confirm password" runat="server"></asp:TextBox>
                 </div>
       
                
                 <div class="submit">  
                     <%--<a href="login.html"><button type="submit" class="registerbtn">submit</button></div></a>
                --%>
                      <asp:Button ID="Button1" cssclass="cancle" runat="server" Text="cancle" />
                  <asp:Button ID="Button2" cssclass="registerbtn" runat="server" Text="Next" OnClick="Button2_Click" />
              
                 </div>
            </div>
            
        </div>
    </div>
    </form>
</body>
</html>

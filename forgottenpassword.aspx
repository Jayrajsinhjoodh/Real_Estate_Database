<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgottenpassword.aspx.cs" Inherits="forgottenpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" href="forgottenpassword.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <div class="card">
            <div class="card-title">
                <img src="logo12588888.jpg" style="width: 120px;" alt="" srcset="">find your account.
            </div>
            <div class="box">
                <div class="Email Id"> <label for="Email Id"><b>Email Id </label>
                    <%--<input type="text" placeholder="Email Id" name="Email Id" id="Email Id" required>
              --%>
                    <asp:TextBox ID="txtemail" placeholder="enter you email" runat="server"></asp:TextBox>
                </div>
               
              <div class="box1">
                <%-- <button type="cancle" class="cancle" >cancle</button>   
                 <button type="submit" class="registerbtn">search</button></a>
             --%>
                  <asp:Button ID="Button1"  cssclass="cancle" runat="server" Text="cancle" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" cssclass="registerbtn" runat="server" Text="Send" OnClick="Button2_Click" />
              </div>
            </div>
            
        </div>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminotp.aspx.cs" Inherits="adminotp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="otp.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<div class="main">
        <div class="card">
            <div class="card-title">
                <img src="logo12588888.jpg" style="width: 120px;" alt="" srcset="">Please enter your otp
            </div>
            <div class="box">
                <div class="otp"> <label for="otp"><b>enter otp </label>
                  <%--  <input type="text" placeholder="otp" name="Email Id" id="otp" required>
                --%>
                    <asp:TextBox ID="txtotp" placeholder="enter otp" runat="server"></asp:TextBox>
                </div>
               
              <div class="box1">
                <%-- <button type="cancle" class="cancle" >cancle</button>   
                 <button type="submit" class="registerbtn">Next</button>
              --%>
                  <asp:Button ID="Button1" cssclass="cancle" runat="server" Text="cancle" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" cssclass="registerbtn" runat="server" Text="Next" OnClick="Button2_Click" />
              </div>
            </div>
            
        </div>
    </div>

    </form>
</body>
</html>

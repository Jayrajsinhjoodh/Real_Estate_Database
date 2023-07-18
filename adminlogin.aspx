<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" href="login.css">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
            <div class="card">
                <div class="card-title">
                    <img src="logo12588888.jpg" style="width: 120px;" alt="">Admin login 
                </div>
                <div class="box">
                    <div class="Email Id">
                        <label for="Email Id"><b>Admin Id</label>
                        <%-- <input type="text" placeholder="Email Id" name="Email Id" id="Email Id" required>--%>
                        <asp:TextBox ID="Txtemailid" placeholder="Email id" required="required" runat="server" TextMode="Email" Height="31px" Width="319px" ></asp:TextBox>
                    </div>
                    <div class="card-title2">
                        <div class="Password">
                            <label for="Password"><b>Password</label>
                            <%--<input type="text" placeholder="Password" name="Password" id="Password" required>--%>
                            <asp:TextBox ID="Txtpassword" placeholder="Password"  runat="server" Textmode="Password" Height="31px" Width="319px"></asp:TextBox>
                        </div>

                        <br />
                       
                        <a href="adminforgottenpassword.aspx" class="register">Forgote password</a><br />
                         <a href="login.aspx" class="register">user login</a><br />
                        
                        <div class="submit">
                            <%--<button type="submit" class="registerbtn">login</button>--%>
                            <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="login" OnClick="submit_Click" />


                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>

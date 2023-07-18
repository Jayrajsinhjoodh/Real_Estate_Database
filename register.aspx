<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="register.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="main">
        <div class="card">
            <div class="card-title">
                <img src="logo12588888.jpg" style="width: 120px;" alt="" srcset="">Register Hear
            </div>
          <div class="box">  
              <div class="card=card-title8">
            <div class="First Name"> <label for="First name"><b>First name</label></div>
               <%-- <input type="text" placeholder="Enter First name" name="First Name" id="First Name" required>
               --%> 
             <asp:TextBox ID="txtfirstname" placeholder="Enter Fiste name" required="required" runat="server"></asp:TextBox>
            </div>
            
            <div class="card-title2">
                <div class="Last Name"> <label for="Last name"><b>Last name</label></div>
           <%--     <input type="text" placeholder="Enter Last name"  name="Last Name" id="Last Name" required>
           --%> 
            <asp:TextBox ID="txtlastname" placeholder="Enter last name" required="required" runat="server"></asp:TextBox>
            
            </div>

            <div class="card-title3">
                <div class="Phone number">  <label for="Phone number"><b>Phone number</label></div >
                <%--<input type="text" placeholder="Enter Phone number" name="Phone number" id="Phone number" required>--%>
                <asp:TextBox ID="txtphonenumber" pattern="\d{10}" title="you cant enter more then 10 digit"  placeholder="enter the phone number"  required="required" runat="server"></asp:TextBox>
                </div>

            <div class="card-title4">
                <div class="gender"><label>Gender</label></div >
                <%--<input type="radio" name="gender" id="male">--%>
                <asp:RadioButton ID="Radiomale" Text="Male"  runat="server" GroupName="gen" />
              <%--  <span id="male"></span>
              --%>  <%--<input type="radio" name="gender" id="female">--%>
                <asp:RadioButton ID="Radiofemale" Text="Female" runat="server"  GroupName="gen" />
             <%--   <span id="female">Female</span>
             --%>   <%--<input type="radio" name="gender" id="other">--%>
                <asp:RadioButton ID="Radioother" Text="Other" GroupName="gen" runat="server" />
        <%--        <span id="other">Other</span> 
        --%>    </div>

            <div class="card-title5">
                <div class="email"><label for="name"><b>Email</label></div >
                <%--<input type="text" placeholder="Enter email " name="Name" id="email" required>--%>
                <asp:TextBox ID="txtemail" placeholder="enter the email" required="required" runat="server"></asp:TextBox>
            </div>
             
            <div class="card-title6">    
                <div class="Password"> <label for="Password"><b>Password</label></div >
               <%-- <input type="text" placeholder="Enter Password" name="Password" id="Password" required>--%>
                <asp:TextBox ID="txtpassword" placeholder="enter the password" required="required" runat="server"></asp:TextBox>
            </div>    
        
            <div class="card-title7">
                <div class="Confirm Password"> <label for="Confirm Password"><b>Confirm Password</label></div >
                <%--<input type="text" placeholder="Enter Confirm Password" name="Confirm Password" id="Confirm Password" required>--%>
                <asp:TextBox ID="txtconformpassword" placeholder="enter conform password" required="required" runat="server"></asp:TextBox>
            </div>  
           
                <<div class="submit">  
                    <!--<button type="submit" class="registerbtn">Register</button>-->
                    <asp:Button ID="submit" CssClass="registerbtn" runat="server" Text="submit" OnClick="submit_Click" />
                    </div>
         </div>
            
        </div>
    </div>
    </form>
</body>
</html>

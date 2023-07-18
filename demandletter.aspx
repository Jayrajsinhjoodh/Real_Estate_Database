<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demandletter.aspx.cs" Inherits="demandletter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="demand letter sun infra.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <nav id="nav1" runat="server" >
        <div class="logo">
            <li><span>R</span>eal <span>E</span>State<span>DATA</span>base</li>
        </div>
       <%-- <script>

            function print1() {
                window.print();
            }
       </script>--%>

        <div class="menu">
            <ul>
                <%--<li><a href="docview.aspx"><i class="fa fa-undo"></i> Back</a></li>--%>
                <li><a href="home page.aspx"><i class="fa fa-home"></i> Home</a></li>
            <%--    <li><a onclick="print1()" href="#"><i class="fa fa-print"></i> print</a></li>
           --%> </ul>

        </div>
    </nav>
    <div class="box"><img src="IMG-20210814-WA0023.jpg" style="width: 80px;" alt="" srcset="">
        <div class="box1">
         
            <div class="card-title1">Work COMPLETION & DEMAND LETTER</div>

            <div class="card-title2">This is to inform you Flat No.<asp:Label ID="txtblockno" CssClass="lbltext" runat="server" Text=""></asp:Label>-<asp:Label ID="txtFlatno" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtflat" placeholder="enter block and flate no" runat="server"></asp:TextBox> --%> is allotted to <asp:Label ID="txtname" CssClass="lbltext" runat="server" Text=""></asp:Label><asp:Label ID="txtname2" CssClass="lbltext" runat="server" Text=""></asp:Label><asp:Label ID="txtname3" CssClass="lbltext" runat="server" Text=""></asp:Label><%--</asp:Label><asp:TextBox ID="txtname" placeholder="enter name" runat="server"></asp:TextBox>--%>. According to work 
             progress<asp:Label ID="Txtwork" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="Txtwork" placeholder="enter work progress" runat="server"></asp:TextBox>--%> % workis completed of said unit. So pleaserelease the loan amount. favour of  sun infra.
            </div>

            <div class="card-title3">Subject: RERA Bank details for loan disbursement</div>

            <div class="card-title4">Our A/c details are:-</div>
            <div class="a">Bilder Name   : <b> SUN INFRA</b></div>
            <div class="b">Project Name  :  <b>PUSHKAR LUXURIA</b></div>
            <div class="c">Account Name  :  <b>SUN INFRA </b>FOR PUSHKAR LUXURIA RERA COLLECTION AC _(A/c name as per Bank records)</div>
           <div class="d"> Account No.   :  <b>123456789</b> </div>
            <div class="d">Bank Name     :   <b>ICICI BANK</b></div> 
            <div class="e">Branch Name   :   <b>VATVA BRANCH</b></div>
            <div class="f"> Code     :   <b>ICIC0002312</b></div>
            <div class="g"> ID  : <b>suninfra9207@gmail.com</b></div>

            <div class="card-title5">Your Sincerely,</div>
            <div class="card-title6">(Authorized Signatory Sign with Seal.)</div>
           
        </div>
    </div>
    <div class="box5">
        <%--<asp:Button ID="Button1" CssClass="cancle" runat="server" Text="back" OnClientClick="JavaScript: window.history.back(1); return false;"/>--%>
    
        <asp:Button ID="button" CssClass="registerbtn" runat="server" Text=" Edit" OnClick="submit_Click0" />
        <asp:Button ID="button1" CssClass="registerbtn" runat="server" Text="print" OnClick="submit_Click2" />

    </div>
    </form>
    
</body>
</html>

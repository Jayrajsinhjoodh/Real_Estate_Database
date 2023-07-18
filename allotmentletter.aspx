<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allotmentletter.aspx.cs" Inherits="allotmentletter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <link rel="stylesheet" href="allotmentletter.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<head runat="server">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <nav id="nav1" runat="server"  >

        <div class="logo">
            <li1><span>R</span>eal <span>E</span>State<span>DATA</span>base</li1>
        </div>

     <%--  <script>
           

           function print1()
           {
               window.print();
           }
       </script>--%>
 

        <div class="menu">
            <ul>
                <%--<li><a href="docview.aspx"><i class="fa fa-undo"></i> Back</a></li>--%>
                <%--<asp:HyperLink ID="HyperLink1" runat="server" href='docview.aspx?flatno=<%#Eval("fln") %>'>HyperLink</asp:HyperLink>--%>

                <li><a href="home page.aspx"><i class="fa fa-home"></i> Home</a></li>
                
                 
                <%--<li><a onclick="print1()" href="#"><i class="fa fa-print"></i> print</a></li>
           --%> </ul>

        </div>
    </nav>

    <div class="box"><div class="card-title1">ALLOTMENT LETTER</div>
        <div class="box1">
         
            <div class="date">date:-<asp:Label ID="txtdate" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtdate" placeholder="enter date" runat="server"></asp:TextBox>--%></div>

            <div class="card-title2">
                This is certify that flat no.<asp:Label ID="txtflatno" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="txtflatno" placeholder="enter flate no" runat="server"></asp:TextBox>--%> block no.<asp:Label ID="Txtblockno" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="Txtblockno" placeholder="enter block no" runat="server"></asp:TextBox> --%>floor no.<asp:Label ID="Txtfloorno" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="Txtfloorno" placeholder="enter the floor no" runat="server"></asp:TextBox>--%> is allotted to Mr./Mrs.<asp:Label ID="Txtname" CssClass="lbltext" runat="server" Text=""> </asp:Label><asp:Label ID="Txtname2" CssClass="lbltext" runat="server" Text=""></asp:Label><asp:Label ID="Txtname3" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="Txtname" placeholder="name" runat="server"></asp:TextBox>--%> 
                In PUSHKAR LUXURIA  situated at NEAR PUSHKAR RESIDENCY,BEHIND ANNAPURNA HOTEL,OFFAHMEDABAD VADODARA EXPREES WAY, 
                JASHODANAGAR, AHMEDABAD.  The area of said unit .<asp:Label ID="Txtsideunit" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="Txtsideunit" placeholder="side unit" runat="server"></asp:TextBox>--%>.sq.mtrs(B.A).<asp:Label ID="txtba" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="txtba" placeholder="(B.A)" runat="server"></asp:TextBox>--%> sq,mtr (C.A).<asp:Label ID="Txtca" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="Txtca" placeholder="(C.A)" runat="server"></asp:TextBox>--%>The cost  of said flat Rs.<asp:Label ID="Txtrs" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="Txtrs" placeholder=" enter the cost of flat" runat="server"></asp:TextBox>--%>Rs.<asp:Label ID="Txtrsword" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="Txtrsword" placeholder="cost of flate in word" runat="server"></asp:TextBox>--%>(word)/-
                
            </div>

            <div class="card-title3">Non-Agricultural land bearing Town Planning Scheme No. 1 , final plot No.87 of survey No. 172,  Mouje: KHOKHRA ,
                 Taluka: Maninagar in the Registration District of Ahmedabad and Sub -District of Ahmedabad-5 (Narol) holding by “SUN INFRA” a 
                 Partnership Firm. The said partnership firm has put up a scheme of residential units knows as“PUSHKAR LUXURIA “On the said land.
            </div>

            <div class="card-title4">They shall enjoy upon possession their rights in terms of this allotment letter after making fill & final 
                payment of the said premises. The member shall pay maintenance, Electricity, Legal Charges, Stamp Duty Charges, Service Tax/GST
                 and other payment extra as per mention in the catalogue.</div>
            

            <div class="card-title5">Signature of Developer/Builder</div>
            
           
        </div>
    </div>
    <div class="box2"></div>
         <div class="box5">
    <%--<button type="submit" class="registerbtn">Edit</button>--%>
         <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="Edit" OnClick="submit_Click1" />
        <asp:Button ID="button1" CssClass="registerbtn" runat="server" Text="print" OnClick="submit_Click2" />

               </div>
    </form>
   
</body>
</html>

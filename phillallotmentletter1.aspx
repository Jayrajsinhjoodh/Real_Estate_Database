<%@ Page Language="C#" AutoEventWireup="true" CodeFile="phillallotmentletter1.aspx.cs" Inherits="allotmentletter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
    <link rel="stylesheet" href="allotmentletter1.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<head runat="server">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <nav >
        <div class="logo">
            <li><span>R</span>eal <span>E</span>State<span>DATA</span>base</li>
        </div>

        <div class="menu">
            <ul>
                <li><a href="phillallotmentletter.aspx"><i class="fa fa-undo"></i> Back</a></li>
                <li><a href="home page.aspx"><i class="fa fa-home"></i> Home</a></li>
                
              
            </ul>

        </div>
    </nav>
    <div class="box"><div class="card-title1">ALLOTMENT LETTER</div>
        <div class="box1">
         
            <div class="date">date:-<asp:TextBox ID="txtdate" placeholder="enter date" runat="server"></asp:TextBox></div>

            <div class="card-title2">This is certify that flat no.<asp:Label ID="txtflatno" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtflatno" placeholder="enter flate no" runat="server"></asp:TextBox>--%> block no.<asp:Label ID="Txtblockno" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="Txtblockno" placeholder="enter block no" runat="server"></asp:TextBox>--%> floor no.<asp:Label ID="Txtfloorno" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="Txtfloorno" placeholder="enter the floor no" runat="server"></asp:TextBox>--%> is allotted to Mr./Mrs <asp:TextBox ID="Txtname" placeholder="name" runat="server"></asp:TextBox><asp:TextBox ID="Txtname2" placeholder="name2" runat="server"></asp:TextBox><asp:TextBox ID="Txtname3" placeholder="name" runat="server"></asp:TextBox> 
                In PUSHKAR HILL  situated at NEAR PUSHKAR RESIDENCY,BEHIND ANNAPURNA HOTEL,OFFAHMEDABAD VADODARA EXPREES WAY, 
                JASHODANAGAR, AHMEDABAD.  The area of said unit .<asp:TextBox ID="Txtsideunit" placeholder="side unit" runat="server"></asp:TextBox>.sq.mtrs(B.A).<asp:TextBox ID="txtba" placeholder="(B.A)" runat="server"></asp:TextBox> sq,mtr (C.A).<asp:TextBox ID="Txtca" placeholder="(C.A)" runat="server"></asp:TextBox>The cost  of said flat Rs.<asp:TextBox ID="Txtrs" placeholder=" enter the cost of flat" runat="server"></asp:TextBox>Rs.<asp:TextBox ID="Txtrsword" placeholder="cost of flate in word" runat="server"></asp:TextBox>(word)/-
                
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
         <div class="box5">
               <%--  <button type="cancle" class="cancle" >cancle</button>   
                <button type="submit" class="registerbtn">Save</button></a>
              --%>
              <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="Edit" OnClick="submit_Click1" />
         </div>
    </div>
        
    <div class="box2"></div>
    </form>
</body>
</html>

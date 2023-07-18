<%@ Page Language="C#" AutoEventWireup="true" CodeFile="axisnoc.aspx.cs" Inherits="axisnoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="axisnoc.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <nav id="nav1" runat="server" >
        <div class="logo">
            <li><span>R</span>eal <span>E</span>State<span>DATA</span>base</li>
        </div>
          <%--<script>

              function print1() {
                  window.print();
              }
       </script>--%>

        <div class="menu">
            <ul>
<%--                <li><a href="docview.aspx"><i class="fa fa-undo"></i> Back</a></li>--%>
                <li><a href="home page.aspx"><i class="fa fa-home"></i> Home</a></li>
                
                 
               <%-- <li><a onclick="print1()" href="#"><i class="fa fa-print"></i> print</a></li>
          --%>  </ul>

        </div>
    </nav>

<div class="box">
   <div class="box2"><div class="axis">Axis NOC</div>
       <div class="box3">
            
<div class="a">To,
The Manager<br>
AXIS BANK LTD<br>
SHIVALIK – ISHAN<br>
AMBAWADI<br>
Ahmedabad-6.</div>

<div class="b">Sub:    PERMISSION TO MORTGAGE, ETC.</div>

<div class="c"> Dear Sirs,</div>

<div class="d"> 
    This is to confirm that we have sold Unit no.<asp:Label ID="txtblockno" CssClass="lbltext" runat="server" Text="">-</asp:Label><asp:Label ID="txtflatno" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="txtunitno" placeholder="enter the unit no" runat="server"></asp:TextBox>--%>on <asp:Label ID="txtfloor" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="txtfloor" placeholder="enter the floor" runat="server"></asp:TextBox>--%>floor in the 
building called PUSHKAR LUXURIA situated NEAR PUSHKAR RESIDENCY,BEHIND ANNAPURNA HOTEL,OFFAHMEDABAD VADODARA EXPREES WAY,JASHODANAGAR, AHMEDABAD. at to 
Mr./Ms. <asp:Label ID="Txtname" CssClass="lbltext"  runat="server" Text=""></asp:Label><asp:Label ID="Txtname2" CssClass="lbltext" runat="server" Text=""></asp:Label><asp:Label ID="Txtname3" CssClass="lbltext" runat="server" Text=""></asp:Label>    <%--<asp:TextBox ID="Txtname" placeholder="enter name " runat="server"></asp:TextBox>--%> for a total consideration of Rs.<asp:Label ID="Txtcost" CssClass="lbltext" runat="server" Text=""></asp:Label> <%--<asp:TextBox ID="Txtcost" placeholder=" total consideration of Rs" runat="server"></asp:TextBox>--%>
(land cost :<asp:Label ID="landcost" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="landcost" placeholder=" enter landcost" runat="server"></asp:TextBox>--%> and construction cost :<asp:Label ID="Txtconcost" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="Txtconcost" placeholder="enter construction cost" runat="server"></asp:TextBox>--%> ) under an agreement dated.<asp:Label ID="Txtagrdated" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="Txtagrdated" placeholder="enter agreement dated" runat="server"></asp:TextBox>--%>
And land area:<asp:Label ID="Txtlandarea" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="Txtlandarea" placeholder="enter land area" runat="server"></asp:TextBox>--%> and construction area:<asp:Label ID="Txtconarea" CssClass="lbltext" runat="server" Text=""></asp:Label>  <%--<asp:TextBox ID="Txtconarea" placeholder="enter construction area" runat="server"></asp:TextBox>--%> .

</div>
<div class="e">
We confirm that we have obtained necessary permission/s approvals for construction of the said building from 
all the concerned competent authorities and the construction of the building as well as of the Unit is in accordance
 with the approved plans. We assure you that the said Unit as well as the said building and the land appurtenant 
 thereto are not subject to any encumbrance; charge or liability of any kind whatsoever and the entire property is
  free and marketable. We have clear legal and marketable title to the said property and every part thereof.
</div>
<div class="f">
We have no objection to your giving a loan to the above buyer/s and his/her/their mortgaging the said Unit with you
 by way of security for repayment, notwithstanding anything to the contrary contained in the said agreement.
</div>
<div class="g">
We also undertake to inform and give proper notice to the co-operative housing society as and when formed, about
 the Unit being so mortgaged.
</div>
<div class="h">   Yours faithfully </div>

<div class="i"> Authorized Signatory </div>

        </div>    
    </div>
    <div class="j"></div>
 </div>
    <div class="box5">
    <%--<button type="submit" class="registerbtn">Edit</button>--%>
        <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="Edit" OnClick="submit_Click0" />
        <asp:Button ID="button1" CssClass="registerbtn" runat="server" Text="print" OnClick="submit_Click2" />

    </div>
    </form>
    
</body>
</html>

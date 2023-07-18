<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminphillbobnoc-1.aspx.cs" Inherits="adminphillbobnoc_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
         <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="bob-1.css">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <nav>
        <div class="logo">
            <li><span>R</span>eal <span>E</span>State<span>DATA</span>base</li>
        </div>

        <div class="menu">
            <ul>
                
                <li><a href="adminhomepage.aspx"><i class="fa fa-home"></i> Home</a></li>
                
              </ul>

        </div>
    </nav>
     <div class="box">
        <div class="box1">
            <div class="box2">
                <div class="j">Bank of Baroda NOC</div>
                <div class="a">
                    To,<br>
                    The Manager<br>
                    Bank of Baroda<br>
                    Ahmedabad.<br>
                    </div>
                <div class="b">
                    Sub:    PERMISSION TO MORTGAGE & NOC,ETC.
                </div>
                <div class="c">
                    Dear Sirs,
                </div>
                <div class="d">
                     This is to confirm that we have sold Unit no.<asp:Label ID="txtblockno" CssClass="lbltext" runat="server" Text=""></asp:Label>-<asp:Label ID="txtflatno" CssClass="lbltext" runat="server" Text=""></asp:Label>on <asp:Label ID="txtfloor" CssClass="lbltext" runat="server" Text=""></asp:Label>floor in the building called PUSHKAR HILL situated at NEAR PUSHKAR RESIDENCY,BEHIND ANNAPURNA HOTEL,OFFAHMEDABAD VADODARA EXPREES WAY,JASHODANAGAR, AHMEDABAD.
                      to Mr./Ms.<asp:TextBox ID="Txtname" placeholder="enter byer name" runat="server"></asp:TextBox><asp:TextBox ID="Txtname2" placeholder="enter byer name" runat="server"></asp:TextBox><asp:TextBox ID="Txtname3" placeholder="enter byer name" runat="server"></asp:TextBox>for a total consideration 
                      of Rs.<asp:TextBox ID="txttotalcon" placeholder="enter total consideration amount" runat="server"></asp:TextBox>under an agreement dated <asp:TextBox ID="txtagrdated" placeholder="enter agreement dated" runat="server"></asp:TextBox> And land area:<asp:TextBox ID="Txtlandarea" placeholder="enter land area" runat="server"></asp:TextBox> and 
                      construction area:<asp:TextBox ID="txtconarea" placeholder="enter construction area" runat="server"></asp:TextBox> .
                </div>
                <div class="e">
                    We confirm that we have obtained necessary permission/s approvals for construction of the said 
                    building from all the concerned competent authorities and the construction of the building as well
                     as of the Unit is in accordance with the approved plans. We assure you that the said Unit as well
                      as the said building and the land appurtenant thereto are not subject to any encumbrance; charge
                       or liability of any kind whatsoever and the entire property is free and marketable. We have 
                       clear legal and marketable title to the said property and every part thereof.
                </div>
                <div class="f">
                    We have no objection to your giving a loan to the above buyer/s and his/her/their mortgaging
                     the said Unit with you by way of security for repayment, notwithstanding anything to the 
                     contrary contained in the said agreement.
                </div>
                <div class="g">
                    We also undertake to inform and give proper notice to the co-operative housing society as and
                     when formed, about the Unit being so mortgaged.
                </div>
                <div class="h">
                    Yours faithfully
                </div>
                <div class="i">
                    Authorized Signatory
                </div>
                <div class="l"></div>

            </div>
        </div>
        <div class="k"></div>
    </div>
         <div class="box5">
               <%--  <button type="cancle" class="cancle" >cancle</button>   
                <button type="submit" class="registerbtn">Save</button></a>
             --%>
             <asp:Button ID="Button1" Cssclass="registerbtn" runat="server" Text="sava" OnClick="submit_Click" />
         </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminphillreceipt.aspx.cs" Inherits="adminphillreceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="RECEIPT.CSS">

<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <nav id="nav1" runat="server">
        <div class="logo">
            <li><span>R</span>eal <span>E</span>State<span>DATA</span>base</li>
        </div>
        <%--  <script>

              function print1() {
                  window.print();
              }
       </script>--%>

        <div class="menu">
            <ul>
               <%-- <li><a href="philldocview.aspx"><i class="fa fa-undo"></i> Back</a></li>--%>
                <li><a href="adminhomepage.aspx"><i class="fa fa-home"></i> Home</a></li>
                
               <%--  
                <li><a onclick="print1()" href="#"><i class="fa fa-print"></i> print</a></li>
           --%> </ul>

        </div>
    </nav>
    <div class="box">
        <div class="box1">
            <div class="box2">
                <div class="box3">
         
                <div class="card-title1">RECEIPT</div>

                <div class="card-title2">
                    <div class="a">SUN INFRA</div>
                    <div class="b">Pushkar hill</div>
                    <div class="c">Beside Pushkar Residency,Behind Annapurna Hotel,Off Ahmedabad-Vadodara Express Highway,
                        <div class="l"> jashodanager,Ahmedabad-382445.</div></div>
                </div>

                <div class="card-title3">
                    <div class="d">Receipt No:-<asp:Label ID="txtreceipt" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtreceipt" placeholder="enter receipt no" runat="server"></asp:TextBox>--%>                           
                    <div class="e">date:-<asp:Label ID="txtdate" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtdate" placeholder="enter the date" runat="server"></asp:TextBox>--%></div></div>    
                </div>
                

                <div class="card-title4">
                   <div class="i"> Received with thanks form Shri/Smt.<asp:Label ID="Txtname" CssClass="lbltext" runat="server" Text=""></asp:Label><asp:Label ID="Txtname2" CssClass="lbltext" runat="server" Text=""></asp:Label><asp:Label ID="Txtname3" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="Txtname" pleacholder="enter name" runat="server"></asp:TextBox>--%></div>
                    <div class="j">A Cash/Cheque No.<asp:Label ID="txtcash" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtcash" placeholder="cash/cheque" runat="server"></asp:TextBox>--%></div><br>
                    <div class="jay">Drawn upon.<asp:Label ID="txtdrawn" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="txtdrawn" placeholder="enter drawn upon " runat="server"></asp:TextBox>--%></div><br>
                                        
                </div>
                <div class="z"> Rs.in word.<asp:Label ID="Txtcashword" CssClass="lbltext" runat="server" Text=""></asp:Label><%--<asp:TextBox ID="Txtcashword" placeholder="enter Rs in word" runat="server"></asp:TextBox>--%></div>

               

                <div class="card-title5">
                    <div class="f">
                        <div class="g">Rs</div>
                        <div class="h">
                            <asp:Label ID="txtamount" CssClass="lbltext" runat="server" Text=""></asp:Label></div>
                    </div>
                    <div class="i"></div>
                </div>
                <div class="card-title6">Subject to Realisation of Cheque</div>
                <div class="card-title7">
                    <div class="ja">Subject to Ahmedabad Jurisdiction</div>
                    <div class="k">GSTIN:24AEHFS4352N1ZN</div>
                </div>
            </div>
            </div>  

        </div>
    </div>
    
    <div class="box5">
    <%--<button type="submit" class="registerbtn">Edit</button>--%>
        <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="Edit" OnClick="submit_Click0" />
        
        <asp:Button ID="button1" CssClass="registerbtn" runat="server" Text="print" OnClick="submit_Click2" />

    </div>

    </form>
</body>
</html>

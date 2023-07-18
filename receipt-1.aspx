<%@ Page Language="C#" AutoEventWireup="true" CodeFile="receipt-1.aspx.cs" Inherits="receipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="RECEIPT-1.CSS">
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
                <%--<li><a onclick="history.back()"><i class="fa fa-undo"></i> Back</a></li>--%>
                <li><a href="home page.aspx"><i class="fa fa-home"></i> Home</a></li>
               
            </ul>

        </div>
    </nav>
    <div class="box">
        <div class="box1">
            <div class="box2">
                <div class="box3">
         
                <div class="card-title1">RECEIPT</div>

                <div class="card-title2">
                    <div class="a">SUN INFRA</div>
                    <div class="b">Pushkar Laxuria</div>
                    <div class="c">Beside Pushkar Residency,Behind Annapurna Hotel,Off Ahmedabad-Vadodara Express Highway,
                        <div class="l"> jashodanager,Ahmedabad-382445.</div></div>
                </div>

                <div class="card-title3">
                    <div class="d">Receipt No:-<asp:TextBox ID="txtreceipt" placeholder="enter receipt no" runat="server"></asp:TextBox>                           
                    <div class="e">date:-<asp:TextBox ID="txtdate" placeholder="enter the date" runat="server"></asp:TextBox></div></div>    
                </div>
                

                <div class="card-title4">
                   <div class="i"> Received with thanks form Shri/Smt.<asp:TextBox ID="Txtname" pleacholder="enter name" runat="server"></asp:TextBox><asp:TextBox ID="Txtname2" pleacholder="enter name 2" runat="server"></asp:TextBox><asp:TextBox ID="Txtname3" pleacholder="enter name 3" runat="server"></asp:TextBox></div>
                    <div class="j">A Cash/Cheque No.<asp:TextBox ID="txtcash" placeholder="cash/cheque" runat="server"></asp:TextBox></div><br>
                    <div class="jay">Drawn upon.<asp:TextBox ID="txtdrawn" placeholder="enter drawn upon " runat="server"></asp:TextBox></div><br>
                                        
                </div>
                <div class="z"> Rs.in word.<asp:TextBox ID="Txtcashword" placeholder="enter Rs in word" runat="server"></asp:TextBox></div>

               

                <div class="card-title5">
                    <div class="f">
                        <div class="g">Rs</div>
                        <div class="h">
                            <asp:TextBox ID="Txtamoutn" placeholder=" enter amount " runat="server"></asp:TextBox></div>
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
                <%-- <button type="cancle" class="cancle" >cancle</button>   
               <button type="submit" class="registerbtn">Save</button></a>
       --%>
         <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="save" OnClick="submit_Click" />
   
    </div>
    
    </form>
    
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindocview.aspx.cs" Inherits="admindocview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
       <link rel="stylesheet" href="docview.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
   <div class="main">
      <div class="card">
       
        <div class="box1">
            
            <div class="card-title1">
                 <div class="document"> Document view</div>
                <div class="card-title4">
                Allotment Latter:-
                <%--<button type="submit" class="registerbtn">view</button>--%>
                    <asp:Button ID="button" CssClass="registerbtn" runat="server" Text="view" OnClick="submit_Click1" />
                </div>
                <div class="container">bank noc
                    <asp:DropDownList ID="DropDownList1"  cssclass="registerbtn" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--Select Bank--</asp:ListItem>
                  
                        <asp:ListItem >bob noc </asp:ListItem>
                        <asp:ListItem >axis noc</asp:ListItem>
                    </asp:DropDownList>

            </div>
            <div class="card-title2">Demand Latter:-
                <%--<button type="submit" class="registerbtn">view</button>--%>
                <asp:Button ID="submit2"  cssclass="registerbtn" runat="server" Text="view" OnClick="submit2_Click" />
            </div>
            <div class="card-title3"> 
                <div class="r1">Receipt details</div>           
    <div class="receipt">Receipt No <br />  
    <asp:TextBox ID="txtrecript1" CssClass="txt" placeholder="enter receipt no" runat="server"></asp:TextBox></div>
      <div class="Drawnupon">Drawn upon<br />
    <asp:TextBox ID="txtdrawn1" CssClass="txt" placeholder="enter drawn upon" runat="server"></asp:TextBox></div>
      <div class="Chequeno">Cheque No<br />
    <asp:TextBox ID="txtcheque1" CssClass="txt" placeholder="enter cheque no" runat="server"></asp:TextBox></div>
      <div class="Amount">Amount<br />
    <asp:TextBox ID="txtamount1" CssClass="txt" placeholder="enter amount" runat="server"></asp:TextBox></div>
      <div class="Rsinword">Rs.in word<br />
    <asp:TextBox ID="txtrsinword1" CssClass="txt" placeholder="enter rs in word" runat="server"></asp:TextBox></div>
      <div class="date">date<br />
    <asp:TextBox ID="txtdate1" CssClass="txt" runat="server" placeholder="enter date"></asp:TextBox></div>
     <div class="save"> 
    <asp:Button ID="Button1" runat="server" Text="save" CssClass="registerbtn" OnClick="Button1_Click" /></div>
      
      </div>
  
  

            <div class="gridview">
                <div style="width:auto; margin:auto; overflow:scroll">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                            <asp:BoundField DataField="flatno" HeaderText="flatno" SortExpression="flatno" />

                            <asp:BoundField DataField="receiptno" HeaderText="receiptno" SortExpression="receiptno" />
                            <asp:BoundField DataField="drawnupon" HeaderText="drawnupon" SortExpression="drawnupon" />
                            <asp:BoundField DataField="chequeno" HeaderText="chequeno" SortExpression="chequeno" />
                            <asp:BoundField DataField="amoutn" HeaderText="amoutn" SortExpression="amoutn" />
                            <asp:BoundField DataField="rsinword" HeaderText="rsinword" SortExpression="rsinword" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            
                            <asp:TemplateField HeaderText="View">

                                <ItemTemplate>
                                    <a href='receipt.aspx?Edit=<%#Eval("id") %>'>View</a>
                                </ItemTemplate>

                            </asp:TemplateField>
                            
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" DeleteCommand="DELETE FROM [receipt_tabales] WHERE [Id] = @Id" InsertCommand="INSERT INTO [receipt_tabales] ([receiptno], [drawnupon], [chequeno], [amoutn], [rsinword], [date], [flatno]) VALUES (@receiptno, @drawnupon, @chequeno, @amoutn, @rsinword, @date, @flatno)" SelectCommand="SELECT * FROM [receipt_tabales] WHERE ([flatno] = @flatno)" UpdateCommand="UPDATE [receipt_tabales] SET [receiptno] = @receiptno, [drawnupon] = @drawnupon, [chequeno] = @chequeno, [amoutn] = @amoutn, [rsinword] = @rsinword, [date] = @date, [flatno] = @flatno WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="receiptno" Type="String" />
                            <asp:Parameter Name="drawnupon" Type="String" />
                            <asp:Parameter Name="chequeno" Type="String" />
                            <asp:Parameter Name="amoutn" Type="String" />
                            <asp:Parameter Name="rsinword" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="flatno" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:QueryStringParameter Name="flatno" QueryStringField="flatno" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="receiptno" Type="String" />
                            <asp:Parameter Name="drawnupon" Type="String" />
                            <asp:Parameter Name="chequeno" Type="String" />
                            <asp:Parameter Name="amoutn" Type="String" />
                            <asp:Parameter Name="rsinword" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="flatno" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                
                    </div>

                


            </div>
            
        </div>
      </div>
    </div>
    </div>
    </form>
</body>
</html>

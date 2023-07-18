<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminblocka.aspx.cs" Inherits="adminblocka" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="blockA.css">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <nav>
        <div class="logo">
            <li><span1>R</span1>eal <span1>E</span1>State<span1>DATA</span1>base</li>
        </div>
             <script>

                 function print1() {
                     window.print();
                 }
       </script>
        <div class="menu">
            <ul>

                <li><a href="adminhomepage.aspx"><i class="fa fa-home"></i> Home</a></li>
                
                
                


            </ul>

        </div>
    </nav>
        <div class="box1">PUSHKAR LUXURIA <br /> Block:-A</div>

        <div style="margin:auto; width:90%; overflow:auto">



            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" OnRowCommand="GridView1_RowCommand1">
                <Columns>
                    <asp:TemplateField HeaderText="blockdelete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Are you sure want to delete this data?');" CommandArgument='<%#Eval("id") %>' runat="server">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                    <asp:TemplateField HeaderText="blockno">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("blockno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Flatno">
                        
                         <ItemTemplate>
                           <%-- <asp:Label ID="Label4" runat="server"  Text='<%#Eval("Flatno") %>' href="docview"></asp:Label>
                           --%>
                             <%--  <asp:HyperLink ID="HyperLink1" Text='<%#Eval("Flatno") %>' NavigateUrl='~/docview.aspx?flatno=<%#Eval("Flatno") %>' runat="server"></asp:HyperLink>--%>

                             <a href='admindocview.aspx?flatno=<%#Eval("Flatno") %>'><%#Eval("Flatno") %></a>

                         </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Floor">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Floor") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name2">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("Name2") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name3">
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%#Eval("Name3") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%#Eval("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%#Eval("Age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phoneno">
                        <ItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("Phoneno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Panno">
                         <ItemTemplate>
                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("Panno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Adharno">
                         <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Adharno") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Occupation">
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("Occupation") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Carpet area">
                         <ItemTemplate>
                            <asp:Label ID="Label15" runat="server" Text='<%#Eval("carpetarea") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Wash Area">
                        <ItemTemplate>
                            <asp:Label ID="Label16" runat="server" Text='<%#Eval("Washarea") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                    <asp:TemplateField HeaderText="Balcony Area">
                          <ItemTemplate>
                            <asp:Label ID="Label17" runat="server" Text='<%#Eval("balconyarea") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Open Balcony">
                         <ItemTemplate>
                            <asp:Label ID="Label18" runat="server" Text='<%#Eval("openbalcony") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Construction Area">
                         <ItemTemplate>
                            <asp:Label ID="Label19" runat="server" Text='<%#Eval("constructionarea") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Land Area">
                         <ItemTemplate>
                            <asp:Label ID="Label20" runat="server" Text='<%#Eval("landarea") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="East">
                        <ItemTemplate>
                            <asp:Label ID="Label21" runat="server" Text='<%#Eval("East") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Wast">
                        <ItemTemplate>
                            <asp:Label ID="Label22" runat="server" Text='<%#Eval("Wast") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="North">
                         <ItemTemplate>
                            <asp:Label ID="Label23" runat="server" Text='<%#Eval("North") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="South">
                         <ItemTemplate>
                            <asp:Label ID="Label24" runat="server" Text='<%#Eval("South") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="castvalue">
                        <ItemTemplate>
                            <asp:Label ID="Label1"  runat="server" Text='<%#Eval("costvalue") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="costinword">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("costinword") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="date ">
                         <ItemTemplate>
                            <asp:Label ID="Label25" runat="server" Text='<%#Eval("date") %>'></asp:Label>
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



        </div>

    </form>
</body>
</html>

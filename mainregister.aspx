<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainregister.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" href="mainregister.css">
     <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
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
                  <li><a href="home page.aspx"><i class="fa fa-home"></i> Home</a></li>
      
            </ul>

        </div>
    </nav>
 
    <div class="main">
        <div class="card">
            <div class="card-title">
                Document Register
            </div>
            <div class="box">
            
            
            <div class="card-title1"> 
                <div class="container">Side name
                     <asp:RadioButton ID="Radiolaxuria" Text="PUSHKAR LUXURIA"  runat="server" GroupName="gen" />
                <asp:RadioButton ID="Radiohill" Text="PUSHKAR HILL" runat="server"  GroupName="gen" />
  

            </div>
                <div class="cost"> cost of flat:-
           <%-- <input type="text" placeholder="Sale value" name="Sale value" id="Sale value" required>--%>
                <asp:TextBox ID="txtcostvalue" placeholder="Sale vlaue"  runat="server"></asp:TextBox></div>
                
                <div class="costinword"> flat cost in word:-
                    <asp:TextBox ID="txtcostinword" placeholder="enter amount in word" runat="server"></asp:TextBox>
                </div>
            </div >
            <div class="card-title2">

                <div class="Blockno">Block no:-</div>
                <asp:TextBox ID="blockno" placeholder="Block no" runat="server"></asp:TextBox>

                <div class="Flatno">Flat No:-
                    <%--<input type="text" placeholder="Flat no" name="Flatno" id="Flateno">--%>
                    <asp:TextBox ID="Flatno" placeholder="Flate no" runat="server"></asp:TextBox>

                </div>
                <div class="Floor ">Floor:
                    <%--<input type="text" placeholder="Floor" name="Floor" id="Floor" >
               --%>
                    <asp:TextBox ID="Floor" placeholder="floor" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="card-title3">
                <div class="Name">buyer Name:-
                   <%-- <input type="text" placeholder="Name" name="Sale value" id="Sale value" >
                --%>
                    <asp:TextBox ID="txtName" placeholder="Name" runat="server"></asp:TextBox>
                 <div class="Name2"><asp:TextBox ID="txtName2" placeholder="2nd Name (optional)" runat="server"></asp:TextBox></div>
               <div class="Name3"><asp:TextBox ID="txtName3" placeholder="3rd Name(optional)" runat="server"></asp:TextBox></div>
                </div>
                <div class="Address">Address:-
                    <%--<input type="text" placeholder="Address" name="Address" id="Address">--%>
                    <asp:TextBox ID="Address" placeholder="Address" runat="server"></asp:TextBox>
                </div>
                <div class="Age">Age:-
                    <%--<input type="text" placeholder="Age" name="age" id="age">--%>
                    <asp:TextBox ID="Age" placeholder="Age" runat="server"></asp:TextBox>
                </div>
                <div class="Phoneno">Phone no:-
                    <%--<input type="text" placeholder="Phone no" name="Phoneno" id="Phoneno">
                --%>
                    <asp:TextBox ID="Phoneno" placeholder="Phon no" runat="server"></asp:TextBox>
                </div>
                <div class="Panno">Pan no:-
                   <%-- <input type="text" placeholder="Pan no" name="panno" id="panno">
                --%>
                    <asp:TextBox ID="Panno" placeholder="Pan no" runat="server"></asp:TextBox>
                </div>
                <div class="Adharno">Adhar no:-
                  <%--  <input type="text" placeholder="Adhar no" name="adharno" id="adharno">
                --%>
                    <asp:TextBox ID="Adharno" placeholder="Adhar no" runat="server"></asp:TextBox>
                </div>
                
                <div class="Occupation">Occupation:-
                   <%-- <input type="text" placeholder="Occupation" name="occupation" id="occupation">
                --%>
                    <asp:TextBox ID="Occupation" placeholder="Occupation" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class="card-title6">
                <div class="carpetarea">Carpet area:-
                    <%--<input type="text" placeholder="carpetarea" name="carpetarea" id="carpertarea">
               --%>
                    <asp:TextBox ID="carpetarea" placeholder="Carpet area" runat="server" Height="36px" Width="569px"></asp:TextBox>
                </div>
                <div class="Washarea">Wash Area:-
                    <%--<input type="text" placeholder="washarea" name="washarea" id="washarea">--%>
                    <asp:TextBox ID="Washarea" placeholder="Wash Area" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="card-title7">
                <div class="balconyarea">Balcony Area:-
                    <%--<input type="text" placeholder="balconyarea" name="balconyarea" id="balconyarea">--%>
                    <asp:TextBox ID="balconyarea" placeholder="Balcony Area" runat="server"></asp:TextBox>
                </div>
                <div class="openbalcony">Open Balcony:-
                    <%--<input type="text" placeholder="openbalcony" name="openbalcony" id="openbalcony">--%>
                    <asp:TextBox ID="openbalcony" placeholder="Open Balcony" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="card-title8">
                <div class="constructionarea">Construction Area:-
                    <%--<input type="text" placeholder="Construction Area" name="constructionarea" id="constructionarea">--%>
                    <asp:TextBox ID="constructionarea" placeholder="Construction Area" runat="server"></asp:TextBox>
                </div>
                <div class="landarea">Land Area:-
                    <%--<input type="landarea" placeholder="Land Area" name="landarea" id="landarea">--%>
                    <asp:TextBox ID="landarea" placeholder="Land Area" runat="server"></asp:TextBox>
                </div>
                <div class="">Sideunit:-
                    <asp:TextBox ID="sideunit" placeholder="Enter side unit" runat="server"></asp:TextBox>

                </div>
                 <div class="">workprogress:-
                    <asp:TextBox ID="workprogress" placeholder="Enter workprogress" runat="server"></asp:TextBox>

                </div>
                 <div class="">Agreementdated:-
                    <asp:TextBox ID="Agreementdated" placeholder="Agreementdated" runat="server"></asp:TextBox>

                </div>
                 <div class="">Considerationofrs:-
                    <asp:TextBox ID="Considerationofrs" placeholder="Considerationofrs" runat="server"></asp:TextBox>

                </div>
                 <div class="">landcost:-
                    <asp:TextBox ID="landcost" placeholder="landcost" runat="server"></asp:TextBox>

                </div>
                <div class="">Considerationcost:-
                    <asp:TextBox ID="Considerationcost" placeholder="Considerationcost" runat="server"></asp:TextBox>

                </div>
                <div class="">date:-
                    <asp:TextBox ID="date" placeholder="date" runat="server"></asp:TextBox>

                </div>
            
            </div>
            <div class="card-title9">View of House:-
                <div class="view">
                <div class="East">East:-
                    <%--<input type="text" placeholder="East" name="East" id="East">--%>
                    <asp:TextBox ID="East" placeholder="East" runat="server"></asp:TextBox>
                </div>
                <div class="Wast">Wast
                    <%--<input type="text" placeholder="Wast" name="Wast" id="Wast">--%>
                    <asp:TextBox ID="Wast" placeholder="Wast" runat="server"></asp:TextBox>
                </div>
                </div>
                <div class="view2">
                    <div class="North">North
                        <%--<input type="text" placeholder="North" name="North" id="North">--%>
                        <asp:TextBox ID="North" placeholder="North" runat="server"></asp:TextBox>
                    </div>
                    <div class="South">South
                        <%--<input type="text" placeholder="South" name="South" id="South">--%>
                        <asp:TextBox ID="South" placeholder="South" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>

           </div>
           <div class="submit">
               <%--<button type="submit" class="registerbtn">Register</button>--%>
               <asp:Button ID="submit" CssClass="registerbtn" runat="server" Text="submit" OnClick="submit_Click"/>
           </div>
           
        </div>
    </div>
    </form>
</body>
</html>

 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="home page.aspx.cs" Inherits="home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link href="home page.css" rel="stylesheet" />
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

                
                <li><a href="mainregister.aspx"><i class="fa fa-file"></i>Documeni Registration</a></li>
                <li><a href="#"><i class="fa fa-user"></i> SIDE</a>
            
                    <ul class="submenu">
                        <li><a href="#"> PUSHKAR LUXURIA</a>
                            <ul class="submenu1">
                                <li><a href="blockA.aspx"> block:A</a></li>
                                <li><a href="blockb.aspx"> block:-B</a></li>
                                <li><a href="blockc.aspx"> block:-C</a></li>
        
        
                            </ul>
                        </li>
                        <li><a href="#"> PUSHKAR HILL</a>
                            <ul class="submenu1">
                                <li><a href="phillblockA.aspx"> block-A</a></li>
                                <li><a href="phillblockb.aspx">block-B</a></li>
                                <li><a href="phillblockc .aspx"> block-C</a></li>
        
        
                            </ul>
                        </li>
                    </ul>
                
                <li><a href="about.aspx"><i class="fa fa-user"></i> About</a></li>
                  <li><a href="login.aspx"><i class="fas fa-sign-out-alt"></i> logout</a></li>


            </ul>

        </div>
    </nav>
    <div class="body1">
        <div class="main">
          
            <marquee>
                <h3><span>W</span>elcome <span>T</span>o <span>R</span>eal <span>E</span>satate <span>Data</span> Base
                </h3>
            </marquee>
            
        </div>

    </div>
    </form>
</body>
</html>

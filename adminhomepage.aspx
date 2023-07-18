<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhomepage.aspx.cs" Inherits="adminhomepage" %>

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

                
                
                <li><a href="#"><i class="fa fa-user"></i> SIDE</a>
            
                    <ul class="submenu">
                        <li><a href="#"> PUSHKAR LUXURIA</a>
                            <ul class="submenu1">
                                <li><a href="adminblockA.aspx"> block:A</a></li>
                                <li><a href="adminblockb.aspx"> block:-B</a></li>
                                <li><a href="adminblockc.aspx"> block:-C</a></li>
        
        
                            </ul>
                        </li>
                        <li><a href="#"> PUSHKAR HILL</a>
                            <ul class="submenu1">
                                <li><a href="#"> block-A</a></li>
                                <li><a href="#">block-B</a></li>
                                <li><a href="#"> block-C</a></li>
        
        
                            </ul>
                        </li>
                    </ul>
                
                <li><a href="adminabout.aspx"><i class="fa fa-user"></i> About</a></li>
                  <li><a href="adminlogin.aspx"><i class="fas fa-sign-out-alt"></i> logout</a></li>


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

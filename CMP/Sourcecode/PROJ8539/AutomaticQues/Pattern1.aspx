<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pattern1.aspx.cs" Inherits="Staffproc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>AutomaticQuestionGenerator</title>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <link href="css/owl/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="css/owl/owl.theme.css" rel="stylesheet" type="text/css" />
    <link href="css/owl/owl.transitions.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="css/1-col-portfolio.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Ubuntu:300,400,700' rel='stylesheet'
        type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css" />
    <!-- Required plugin - Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">
    <link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            width: 1296px;
        }
        .auto-style3 {
            width: 1294px;
        }
        .auto-style4 {
            width: 1291px;
        }
        .auto-style6 {
            width: 261px;
        }
        .auto-style11 {
            width: 657px;
            height: 57px;
        }
        .auto-style13 {
            width: 107px;
            height: 57px;
        }
        .auto-style15 {
            width: 100px;
            height: 57px;
        }
        .auto-style18 {
            width: 657px;
        }
        .auto-style19 {
            width: 168px;
            height: 57px;
        }
        .auto-style20 {
            width: 168px;
        }
        .auto-style21 {
            width: 896px;
        }
        .auto-style22 {
            width: 895px;
        }
        .auto-style23 {
            margin-left: 0px;
        }
        .auto-style24 {
            width: 142px;
        }
        .auto-style25 {
            width: 130px;
        }
        .auto-style26 {
            width: 100px;
        }
        .auto-style27 {
            margin-left: 101;
        }
        .auto-style28 {
            width: 259px;
        }
        .auto-style29 {
            position: absolute;
            left: 552px;
            top: 130px;
        }
        .auto-style30 {
            position: absolute;
            left: 546px;
            top: 157px;
            height: 23px;
            right: 610px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Navbar fixed top -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                &nbsp;</div>
            <div class="navbar-collapse collapse">
                <!-- Left nav -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Staffproc.aspx">Home</a></li>
                    <li><a href="Stafflogin.aspx">Logout</a></li>
                    <li>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search this site">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-default">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
       <a class="navbar-brand" href="#"><i class="fa fa-Question"></i>Automatic Question Generator</a></div>
    </div>
  

  <div class="container">
        
        <div style="text-align:center">             
                <h1><asp:Label ID="l1" runat="server" >Questions</asp:Label></h1>
                <hr />
           
<asp:Panel ID="pnlPerson" runat="server" CssClass="auto-style23">
    <div class="row">    
    <div style="text-align:left;font-size :20px;">     
    <h4><asp:Label runat="server" ID="l2" CssClass="auto-style29">Subject Code</asp:Label></h4>
    
    <asp:DropDownList ID="d1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Subject_code" DataValueField="Subject_code" CssClass="auto-style30">
    </asp:DropDownList>
     
    <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:abc %>" 
      SelectCommand="SELECT [Subject_code] FROM [Syllabus_det]">
    </asp:SqlDataSource>             
    <hr />  
        <br />
			<table class="auto-style2">
				<tr>
				<td class="auto-style26">
					<asp:Label ID="Label31" runat="server" Text="Q1" Font-Names="Algerian" 
	                 Font-Size="30px" ForeColor="#336600" Height="32px" Width="32px"></asp:Label>
	            </td>
				<td class="auto-style18"> <asp:Label ID="Label5" runat="server" Text="ANSWER ANY TWO OF THE FOLLOWING" Font-Names="Algerian" 
                      Font-Size="20px" ForeColor="#660033"    ></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="12 Marks"  Font-Names="Algerian" 
                      Font-Size="20px" ForeColor="#660033"></asp:Label>
                </td>
				</tr>
				<tr>
				<td class="auto-style15">
				<asp:Label ID="Label8" runat="server" Text="a." Font-Size="22px" Height="31px" Width="50px"    ></asp:Label>
				</td>
				<td class="auto-style11">
				<asp:Label ID="TextBox5" runat="server" AutoPostBack="True" Width="604px" ></asp:Label>
				</td>
				<td class="auto-style19">
				<asp:DropDownList ID="dd1" runat="server" >
				          <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList>
				 </td>
				 <td class="auto-style13"> 
				 <asp:DropDownList ID="dd13" runat="server">
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				 </asp:DropDownList>
				 </td>     
				</tr>
				
				<tr>
				
				<td class="auto-style26">
				<asp:Label ID="Label9" runat="server" Text="b" Font-Size="22px" Height="32px" Width="32px"    ></asp:Label>
				</td>
				
				<td class="auto-style18">
				<asp:Label ID="TextBox6" runat="server" AutoPostBack="True" Width="599px"></asp:Label>
				</td>
				
				<td class="auto-style20">
				 <asp:DropDownList ID="dd2" runat="server" >
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList>
				</td>
				
				<td class="auto-style1">
				 <asp:DropDownList ID="dd14" runat="server">
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				   </asp:DropDownList>
				</td>
				
				</tr>
				
				<tr>
				
				<td class="auto-style26">
				<asp:Label ID="Label10" runat="server" Text="c" Font-Size="22px" Height="32px" Width="32px"    ></asp:Label>
				</td>
				<td class="auto-style18"> 
				<asp:Label ID="TextBox7" runat="server" AutoPostBack="True" Width="601px"></asp:Label>
				</td>
				<td class="auto-style20"> 
				 <asp:DropDownList ID="dd3" runat="server">
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList>
				</td>
				<td class="auto-style1">
				 <asp:DropDownList ID="dd15" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList>
				</td>
				</tr>
				
				<tr>
				
				<td class="auto-style26">
				 <asp:Label ID="Label11" runat="server" Text="d." Font-Size="22px" Height="32px" Width="32px"    ></asp:Label>
				</td>
				
				<td class="auto-style18">
				 <asp:Label ID="TextBox8" runat="server" AutoPostBack="True" Width="603px"></asp:Label>
				</td>
				
				<td class="auto-style20"> 
					<asp:DropDownList ID="dd4" runat="server">
					           <asp:ListItem>Remember</asp:ListItem>
					          <asp:ListItem>Applied</asp:ListItem>
					          <asp:ListItem>Analytical</asp:ListItem>
					          <asp:ListItem>Evaluation</asp:ListItem>
					</asp:DropDownList>
				</td>
				
				<td class="auto-style1"> 
					<asp:DropDownList ID="dd16" runat="server">
					          <asp:ListItem>Easy</asp:ListItem>
					          <asp:ListItem>Medium</asp:ListItem>
					          <asp:ListItem>Hard</asp:ListItem>
					</asp:DropDownList>
				</td>
				</tr>
			</table>

			<table class="auto-style3">
				<tr>
				<td class="auto-style25"><asp:Label ID="Label1" runat="server" Text="Q2." Font-Names="cursive" 
          			Font-Size="22px" Height="32px" Width="32px"></asp:Label>
          		</td>
				<td class="auto-style21"> <asp:Label ID="Label2" runat="server" Text="ANSWER ANY TWO OF THE FOLLOWING" Font-Names="Algerian" 
          				Font-Size="20px" ForeColor="#660033"></asp:Label>
          		</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="12 Marks"  Font-Names="Algerian" 
                      Font-Size="20px" ForeColor="#660033"></asp:Label>
                </td>
				</tr>
				<tr>
				<td class="auto-style25"> <asp:Label ID="Label12" runat="server" Text="a." 
				         
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style21"> <asp:Label ID="TextBox9" runat="server" 
				         
				          AutoPostBack="True" Width="618px"></asp:Label></td>
				<td class="auto-style28"> <asp:DropDownList ID="dd5" runat="server" >
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"> 
                    <asp:DropDownList ID="dd17" runat="server">
                        <asp:ListItem>Easy</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Hard</asp:ListItem>
                    </asp:DropDownList>
                    </td>
				</tr>
				<tr>
				<td class="auto-style25"><asp:Label ID="Label13" runat="server" Text="b." 
				         
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style21">
				        <asp:Label ID="TextBox10" runat="server" 
				         
				          AutoPostBack="True" Width="620px"></asp:Label></td>
				<td class="auto-style28"> <asp:DropDownList ID="dd6" runat="server">
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"> <asp:DropDownList ID="dd18" runat="server">
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
				<tr>
				<td class="auto-style25"> <asp:Label ID="Label14" runat="server" Text="c." 
				         
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style21"> <asp:Label ID="TextBox11" runat="server" 
				         
				          AutoPostBack="True" Width="626px"></asp:Label></td>
				<td class="auto-style28"> <asp:DropDownList ID="dd7" runat="server">
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"><asp:DropDownList ID="dd19" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
				<tr>
				<td class="auto-style25"> <asp:Label ID="Label15" runat="server" Text="d." 
				         
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style21"> <asp:Label ID="TextBox12" runat="server" 
				          
				          AutoPostBack="True" Width="631px"></asp:Label></td>
				<td class="auto-style28"><asp:DropDownList ID="dd8" runat="server">
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"><asp:DropDownList ID="dd20" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
			</table>

			<table class="auto-style4">
				<tr>
				<td class="auto-style24"> <asp:Label ID="Label4" runat="server" Text="Q3."  Font-Names="cursive" 
         			 Font-Size="22px" Height="32px" Width="32px"></asp:Label>
          		</td>
				<td class="auto-style22"><asp:Label ID="Label3" runat="server" Text="ANSWER ANY TWO OF THE FOLLOWING" Font-Names="Algerian" 
         			 Font-Size="20px" ForeColor="#660033"></asp:Label>
         		</td>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="12 Marks"  Font-Names="Algerian" 
                      Font-Size="20px" ForeColor="#660033"></asp:Label>
                </td>
				</tr>
				<tr>
				<td class="auto-style24"><asp:Label ID="Label16" runat="server" Text="a." 
				         
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style22"> <asp:Label ID="TextBox13" runat="server" 
				           
				          AutoPostBack="True" Width="633px"></asp:Label></td>
				<td class="auto-style6"><asp:DropDownList ID="dd9" runat="server"
				>
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"> <asp:DropDownList ID="dd21" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
				<tr>
				<td class="auto-style24"> <asp:Label ID="Label17" runat="server" Text="b." 
				          
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style22"><asp:Label ID="TextBox14" runat="server" 
				          
				          AutoPostBack="True" Width="630px"></asp:Label></td>
				<td class="auto-style6"> <asp:DropDownList ID="dd10" runat="server">
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"><asp:DropDownList ID="dd22" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
				<tr>
				<td class="auto-style24"><asp:Label ID="Label19" runat="server" Text="c." 
				         
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style22"><asp:Label ID="TextBox15" runat="server"				             
				          AutoPostBack="True"></asp:Label></td>
				<td class="auto-style6"> <asp:DropDownList ID="dd11" runat="server">
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"><asp:DropDownList ID="dd23" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
				<tr>
				<td class="auto-style24"> <asp:Label ID="Label20" runat="server" Text="d."			          
				          Font-Size="22px" Height="32px" Width="32px"    ></asp:Label></td>
				<td class="auto-style22"> <asp:Label ID="TextBox16" runat="server" AutoPostBack="True"></asp:Label></td>
				<td class="auto-style6"> <asp:DropDownList ID="dd12" runat="server" >
				           <asp:ListItem>Remember</asp:ListItem>
				          <asp:ListItem>Applied</asp:ListItem>
				          <asp:ListItem>Analytical</asp:ListItem>
				          <asp:ListItem>Evaluation</asp:ListItem>
				      </asp:DropDownList></td>
				<td class="b"> <asp:DropDownList ID="dd24" runat="server" >
				          <asp:ListItem>Easy</asp:ListItem>
				          <asp:ListItem>Medium</asp:ListItem>
				          <asp:ListItem>Hard</asp:ListItem>
				      </asp:DropDownList></td>
				</tr>
			</table>
			</div>
			</div>
			 </asp:Panel>
               <asp:Button ID="Button1" runat="server" Text="Generate Question Paper"  
           
          BackColor="Blue" Font-Names="cursive" Font-Size="20px" ForeColor="White" 
          onclick="Button1_Click1" />
      <hr />
      <asp:Button ID="Button2"  runat="server" Text="Export_As_PDF" class="btn btn-block btn-lg btn-warning" Width="816px" OnClick="Button2_Click" CssClass="auto-style27" /> 
       <hr />
                
  </div>
  </div>
        
    <footer id="fh5co-footer" class="padding100">
			
			<div class="fh5co-footer-content">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInUp" data-wow-delay="0.2s">
							<h3 class="fh5co-lead">About</h3>
							<ul>
								<li><a href="#">Tour</a></li>
								<li><a href="#">Company</a></li>
								<li><a href="#">Jobs</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">New Features</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInUp" data-wow-delay="0.4s">
							<h3 class="fh5co-lead">Support</h3>
							<ul>
								<li><a href="#">Help Center</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">More Apps</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-4 col-md-push-3 animated wow fadeInUp" data-wow-delay="0.6s">
							<h3 class="fh5co-lead">More Links</h3>
							<ul>
								<li><a href="#">Feedback</a></li>
								<li><a href="#">Frequently Ask Questions</a></li>
								<li><a href="#">Terms of Service</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Careers</a></li>
								<li><a href="#">More Apps</a></li>
							</ul>
						</div>

						<div class="col-md-3 col-sm-12 col-md-pull-9 animated wow fadeInUp" data-wow-delay="0.8s">
							<div class="fh5co-footer-logo"><a href="index.html">Automatic Question Generator</a></div>
							<p class="fh5co-copyright"><small>&copy; 2018. All Rights Reserved. <br>	by <a href="#" target="_blank"></a> Images: <a href="#" target="_blank"></a></small></p>
							<p class="fh5co-social-icons">
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-youtube"></i></a>
							</p>
						</div>
						
					</div>
				</div>
			</div>
		</footer>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    <script src="js/contact.js" type="text/javascript"></script>
    <script src="js/tutorial.js"></script>
    <script src="css/owl/owl.carousel.js" type="text/javascript"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>
    </form>
</body>
</html>

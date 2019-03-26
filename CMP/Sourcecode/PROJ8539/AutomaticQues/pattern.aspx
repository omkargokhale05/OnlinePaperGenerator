<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pattern.aspx.cs" Inherits="pattern" %>

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
                <a class="navbar-brand" href="#"><i class="fa fa-Question"></i>Automatic Question Generator</a>
            </div>
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
        </div>
    </div>
    
  <div class="Content"  style="border: 1px solid black;height:929px; width:100%;margin: 1px 1px 1px 1px;background-color:#efe6d8;">
      <div class="container" style="top:100px;position:relative; left: 0px; height: 402px;" >
        <asp:Label ID="Label1" runat="server" Text="Staff Questions Enter Area"  Font-Italic="False" 
          Font-Names="cursive" Font-Size="28px" Font-Underline="True" ForeColor="#333300"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
          <br />
          <br />
          <br />
          <br />
          <br />

          <br />
          <br />
          <br />
          <br />
          <br />
        <asp:Label ID="Label3" runat="server" Text="Staff Name" Style="position:absolute;top:150px; left: 31px; width: 87px;"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Height="16px" Style="position:absolute;top:140px;left:160px; width: 184px;"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Staff ID" Style="position:absolute;top:150px;left:433px; width: 105px;"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="position:absolute;top:140px;left:554px; width: 149px;"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Subject Code" Style="position:absolute;top:150px;left:822px; width: 108px;" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Style="position:absolute;top:140px;left:959px; width: 147px;"></asp:TextBox>


          <asp:Label ID="Label2" runat="server" Text="Add Question" Style="position:absolute;top:250px;left:384px; width: 151px;"></asp:Label>
          <asp:TextBox ID="TextBox4" runat="server" Style="position:absolute;top:293px; left:80px; width: 381px; height: 29px;" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
          <asp:DropDownList ID="DropDownList1" runat="server" Style="position:absolute;top:300px;left:550px">
              <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>Easy</asp:ListItem>  
            <asp:ListItem>Medium</asp:ListItem>  
            <asp:ListItem>Hard</asp:ListItem>             
          </asp:DropDownList>
          <asp:Label ID="Label7" runat="server" Text="Question Type" Style="position:absolute;top:310px;left:700px; width: 172px;"></asp:Label>
          <asp:Button ID="Button1" runat="server" Text="Button" Style="position:absolute;top:400px;left:434px; width: 194px; height: 33px;" OnClick="Button1_Click" />
       </div>

          <asp:GridView ID="GridView1" runat="server" 
          style="position:absolute; top: 638px; left: 148px; height: 225px; width: 872px;" 
          CellPadding="4" GridLines="None" AutoGenerateSelectButton="True" 
          ForeColor="#333333" onselectedindexchanged="GridView1_SelectedIndexChanged"
              >
          <AlternatingRowStyle BackColor="White" />
          <EditRowStyle BackColor="#7C6F57" />
          <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
          <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
          <RowStyle BackColor="#E3EAEB" />
          <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
          <SortedAscendingCellStyle BackColor="#F8FAFA" />
          <SortedAscendingHeaderStyle BackColor="#246B61" />
          <SortedDescendingCellStyle BackColor="#D4DFE1" />
          <SortedDescendingHeaderStyle BackColor="#15524A" />
      </asp:GridView>
</div>

    </form>
</body>
</html>

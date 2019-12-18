<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Project.aspx.cs" Inherits="Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>project</title>
    <style type="text/css">
        .auto-style2 {
            width: 1200px;
        }
        .td-center { text-align: center; }
.center-div { margin-left: auto; margin-right: auto; }
.l{ margin-bottom:100px;}
.text{margin-left:50px;}
    </style>
</head>
<body style="margin:0px; padding:0px;">
    <div style="background-image: url('images/4.jpg'); margin: 0; padding: 0;position:fixed; z-index:-1; width:100%;height:100% ;background-size:cover; background-attachment:fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div class="center-div td-center" style=" text-align:center">
        <h1 class="auto-style2">ADD PROJECTS</h1>
         <p> </p>
            <asp:Label  CssClass="label" ID="Label1" runat="server" Text="Project Name"></asp:Label>
           <asp:TextBox CssClass="text" ID="pname" runat="server"></asp:TextBox>
    <p></p><br />
        <asp:Label  CssClass="l" ID="Label2" runat="server" Text="Advisor Name"></asp:Label>
            <asp:DropDownList ID="Aname"  CssClass="text" runat="server" Width="100px">
        </asp:DropDownList>
  <p></p><br />
         <asp:Label  CssClass="" ID="Label4" runat="server" Text="Add some description about your project" style="padding-bottom:100px"></asp:Label>
           <asp:TextBox CssClass="text" ID="description" runat="server" Height="124px" Width="184px"></asp:TextBox>
         <p></p><br />
        <asp:Button ID="Add" runat="server" Text="Add Project" OnClick="Add_Click" Width="84px"  />
             <input type="button" onclick="window.location.href = 'category.aspx';" value="GO BACK TO HOMEPAGE" style="margin-left:100px"/>
         <p></p>
        <h4>Do you want to create group?<a href="Groups.aspx">Click Here</a></h4>
            <p></p>
          <h4>Have not registered yet?<a href="advisor.aspx">Click Here</a></h4>
        <p></p>
            <asp:GridView ID="GridView1" runat="server" style="margin-left:600px; background-color:whitesmoke;">
               </asp:GridView>
        </div>
    </form>
        </div>
</body>
    
</html>

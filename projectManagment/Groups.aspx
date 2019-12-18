<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Groups.aspx.cs" Inherits="Groups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Groups</title>
    <style type="text/css">
        .auto-style2 {
            width: 1200px;
            margin-left:100px;
        }
        .td-center { text-align: center; }
.center-div { margin-left: auto; margin-right: auto; }
.l{ margin-bottom:100px;}
.text{margin-left:50px;}
.c{
    margin-left:650px;
    border:solid 1px;
}
    </style>
</head>
<body style="margin:0px; padding:0px;">
    <div style="background-image: url('images/4.jpg'); margin: 0; padding: 0;position:absolute; z-index:-1; width:100%;height:100% ;background-size:cover; background-attachment:fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    <div class="center-div td-center" style=" text-align:center">
        <h1 class="auto-style2">Creating Groups</h1>
    </div>
        <br />
        
        <p> </p>
       
      
        <div class="center-div td-center" style=" text-align:center">
            
            <asp:Label  CssClass="label" ID="Label1" runat="server" Text="Group No"></asp:Label>
          <asp:TextBox CssClass="text" ID="gNo" runat="server" Width="74px"></asp:TextBox>

        </div>
        <br />
       <p></p>
        <p></p>
         <div class="center-div td-center" style=" text-align:center">
            <asp:Label  CssClass="l" ID="Label2" runat="server" Text="Project"></asp:Label>
           <asp:DropDownList ID="projects"  CssClass="text" runat="server" Width="100px">
        </asp:DropDownList>
    </div>
        <br /><p></p><p></p>
        <div class="center-div td-center" style=" text-align:center">
            <asp:Label  CssClass="" ID="Label4" runat="server" Text="STUDENTS"></asp:Label>
            <p></p>
            <asp:CheckBoxList ID="Students" CssClass="c" runat="server" style="text-align:center" >
        </asp:CheckBoxList>
            </div>
            
        <p></p><br />
        <div class="center-div td-center" style=" text-align:center">
            <asp:Button ID="Button1" runat="server" Text="Create Group" OnClick="Button1_Click" Height="36px" Width="134px" />
    </div>
       
       <div class="center-div td-center" style=" text-align:center">
          <h4>Have not added project yet?<a href="Project.aspx">Click Here</a></h4>
           <p></p>
            <a href="category.aspx">GO BACK TO HOMEPAGE</a>
           <p></p>
             <asp:GridView ID="GridView1" runat="server" style="margin-left:550px; background-color:whitesmoke;">
               </asp:GridView>
       
       </div>
        
       
        </form>
        </div>
    
</body>
</html>

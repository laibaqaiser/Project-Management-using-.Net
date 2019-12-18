<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Evaluation.aspx.cs" Inherits="Evaluation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Evaluation</title>
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
        <h1 class="auto-style2">Evaluation</h1>
    <p></p>
      <asp:Label  CssClass="label" ID="Label1" runat="server" Text="Group No"></asp:Label>
          <asp:TextBox CssClass="text" ID="gNo" runat="server" Width="74px"></asp:TextBox>
  <p></p>
       <asp:Label  CssClass="l" ID="Label2" runat="server" Text="Total Marks"></asp:Label>
            <asp:TextBox CssClass="text" ID="TM" runat="server" Width="74px"></asp:TextBox>
   <p></p>
      <asp:Label  CssClass="" ID="Label4" runat="server" Text="Obtained Marks"></asp:Label>
              <asp:TextBox CssClass="text" ID="OM" runat="server" Width="74px"></asp:TextBox>
            <p></p>
            <asp:Label  CssClass="" ID="Label3" runat="server" Text="Comments" style="padding-bottom:100px"></asp:Label>
           <asp:TextBox CssClass="text" ID="comments" runat="server" Height="124px" Width="184px"></asp:TextBox>
    <p></p>
    <asp:Button ID="Button1" runat="server" Text="Save Record"  Height="36px" Width="134px" OnClick="Button1_Click" />
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
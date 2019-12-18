<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .text{margin-left:50px;}
        </style>
</head>
<body style="margin:0px; padding:0px;">
   <div style="background-image: url('images/4.jpg'); margin-left:0px; padding:0px; position:fixed; background-position-x:0; z-index:-1; width:110%;height:110% ;background-size:cover; background-attachment:fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server" >
        <div class="center-div td-center" style=" text-align:center">
             <asp:TextBox ID="category" runat="server" Text=" Student" style="border:0px; font-size:40px; background-color:transparent;" CssClass="auto-style1" Height="47px" Width="157px"></asp:TextBox>
   <p> </p><p></p><br />

            <asp:Label ID="label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="Name" cssclass="text" runat="server"></asp:TextBox>
          
              <p></p>
              <asp:Label ID="label2" runat="server" Text="RegistrationNo"></asp:Label>
              <asp:TextBox ID="regnum" CssClass="text" runat="server"  style="margin-left:5px"></asp:TextBox>
           <p></p>
                
                  <asp:Label ID="Label3" runat="server" Text="Contact"></asp:Label>
                  <asp:TextBox ID="contact" CssClass="text" runat="server"></asp:TextBox>
            <p></p>

                 <asp:Label ID="Label4" runat="server" Text="Degree"></asp:Label>
                 <asp:TextBox ID="degree" CssClass="text" runat="server"></asp:TextBox>
           <p></p>
                 <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
                <asp:TextBox ID="description" CssClass="text" runat="server" Height="87px" Width="171px"></asp:TextBox>
            <p></p>
                   <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <p></p>
             <a  href="category.aspx" >GO BACK TO HOMEPAGE</a>
            <p></p>
            <asp:GridView ID="GridView1" runat="server" style="margin-left:600px; background-color:whitesmoke;">
               </asp:GridView>
             </div>
        </form>
       </div>
</body>
</html>

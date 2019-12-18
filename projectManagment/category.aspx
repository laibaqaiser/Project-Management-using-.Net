<%@ Page Language="C#" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Management</title>
    <style>
        .body{
            margin:0px;
            padding:0px;
        }
    </style>
    
</head>
<body style="margin:0px; padding:0px;">
   <div style="background-image: url('images/4.jpg'); margin-left:0px; padding:0px; position:fixed; background-position-x:0; z-index:-1; width:110%;height:110% ;background-size:cover; background-attachment:fixed; background-repeat: no-repeat;">
    <form id="form1" runat="server">
    
    <div   style="text-align:center">
         <h1>PROJECT MANAGEMENT</h1> 
       <br/>
        <br/>
         <br/>
         <br/>
        <h3> WELCOME TO THE PROJECT MANAGEMENT WEBSITE</h3>
        <p></p>
        <h3>WHAT DO YOU WANT TO DO ?</h3>
        <div class="row" >
            <div class="col">
               
                 <a href="advisor.aspx"> ADD ADVISOR</a>
              
            </div>
           <p></p>
            <div class="col">
                
                <a href="student.aspx">ADD STUDENT</a>
              
            </div>
            <p></p>
            <div class="col">
                
                <a href="Project.aspx">ADD PROJECT</a>
              
            </div>
            <p></p>
            <div class="col">
                
                <a href="Groups.aspx">CREATE GROUP</a>
              
            </div>
            <p></p>
            <div class="col">
                
                <a href="Evaluation.aspx">EVALUATION</a>
              
            </div>
</div>
    </div>
       
       
       
    </form>
   </div>     

</body>
</html>

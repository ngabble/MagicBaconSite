<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Page.aspx.cs" Inherits="webpage2.web" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CTZero</title>
</head>
<body>
        <div class="head">
            <p>Welcome</p>
        </div>


   <div class="body">              
   <div  class="login">
       <div>
            <form runat="server">
                <h1>Login<asp:Image runat="server" SkinId="bluefalcon"/></h1>
                <asp:TextBox ID="usertxt" runat="server" placeholder="Username"></asp:TextBox>
                <br/><br/>                
                <asp:TextBox ID="passtxt" runat="server" placeholder="Password"></asp:TextBox>
                <br/><br/>
                <asp:Button ID="loginButton" CssClass="button" runat="server" OnClick="Button1_Click" Text="Login"/>
                <asp:Button ID="registerButton" CssClass="button" runat="server" OnClick="Register_Click" Text="Register"/>
                <br/><br/>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <p>
                <asp:Button ID="testButton" CssClass="button" runat="server" Text="test"/>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </p>
           </form>
        </div>
    </div>
       <div class="foot">
        <p>Powered by CT-0</p>
    </div>
   </div>
    
</body>
</html>

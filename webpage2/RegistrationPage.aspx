<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="webpage2.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
</head>
<body>
    <div class="body">
        <div class="registration">
            <form id="form1" runat="server">
                <h1>Register<asp:Image runat="server" SkinId="bluefalcon"/></h1>
                <p>
                    <asp:TextBox ID="firstName" runat="server" placeholder="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="firstName" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                </p>  
                <p>
                    <asp:TextBox ID="lastName" runat="server" placeholder="Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator2" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="lastName" ErrorMessage="Enter your last name"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="Email_Id" runat="server" TextMode="Email"  placeholder="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator3" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="Email_Id" ErrorMessage="Enter your email"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="Address" runat="server" placeholder="Street"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator4" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="Address" ErrorMessage="Enter your address"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="City" runat="server" placeholder="City"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator5" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="City" ErrorMessage="Enter a city"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="State" runat="server" placeholder="State"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator6" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="State" ErrorMessage="Enter your state"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="Contact" runat="server" TextMode="Phone" placeholder="Phone Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator7" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="firstName" ErrorMessage="Enter a phone number"></asp:RequiredFieldValidator>
                </p>
                <p>
                    <asp:TextBox ID="rpasstxt" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator8" runat ="server" Font-Size="Medium"
                    ForeColor="Red" Display="Dynamic" ControlToValidate="rpasstxt" ErrorMessage="Passwords must be between 3 to 10 characters..."
                    ValidationExpression="^[a-zA-Z0-9'@&#.\s]{3,10}$"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControltoValidate="rpasstxt" Font-Size="Medium" ForeColor="Red"
                    Display="Dynamic" ErrorMessage="Please enter a password!"></asp:RequiredFieldValidator>
                </p>

                <p>
                    <asp:Button ID="Submit" CssClass="button" runat="server" Text="Submit" OnClick="Submit_Click"/>
                    <asp:Button ID="Reset" CssClass="button" runat="server" Text="Reset" OnClick="Reload"/>
                </p>
                <p>
                    <asp:Label ID="Label2" visible="false" runat="server" Font-Bold="true" ForeColor="#003300" Text="You have successfully registered..."></asp:Label>
                </p>
            </form>
        </div>

    </div>
    <div><img src="App_Themes\DopeTheme\images\Magic Bacon.png" alt="Bacon"></div>
    <!--<div class="foot"><p>Powered by CT-0</p></div>-->
</body>

</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectOne.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Login.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="row">
                 <div class="col Reg">

                     <h1 class="title">Login</h1>
                     <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                     &nbsp;
                     <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
                     <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                     &nbsp;
                     <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

                     <asp:Button ID="Button1" class="Login" runat="server" Text="Login" OnClick="Button1_Click" />
                     <br />
                     <br />
                     <asp:Label ID="txtOutput" runat="server" Text="Output"></asp:Label>
                     <br />
                     <br />
                 </div>
             </div>
        </div>
    </form>
</body>
</html>

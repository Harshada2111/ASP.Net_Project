<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginButton.aspx.cs" Inherits="ProjectOne.LoginButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="LoginButton.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <div class="col Reg">
                    <h3 class="heading">Regisration Successful.....!Click On Login Button For Login</h3>
                    
                    <asp:Button ID="Button1" class="Login" runat="server" Text="Login" OnClick="Button1_Click" />

                </div>
            </div>
        </div>
    </form>
</body>
</html>

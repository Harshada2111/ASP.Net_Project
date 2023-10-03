<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HotelRegistration.aspx.cs" Inherits="ProjectOne.HotelRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="HotelRegistration.css" />
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class=" row">
                <div class="col Reg">
                    <h1 class="title">Hotel Registration</h1><br />
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name must not be empty" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Room Type"></asp:Label><asp:RadioButton ID="txtDelux" runat="server" Text="Delux" />

                &nbsp;&nbsp; <asp:RadioButton ID="txtOrdinary" runat="server" Text="Ordinary" />

                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Amenities"></asp:Label>&nbsp;
                    <asp:CheckBox ID="txtAC" runat="server" Text="A/C" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="txtComputer" runat="server" Text="Computer" />

                    <br />
                    <br />
                    <asp:Label ID="label4" runat="server" Text="Num Of Guest"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtGuest" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGuest" ErrorMessage="GuestNo must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="label5" runat="server" Text="Arrival Date"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtADate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtADate" EnableViewState="False" ErrorMessage="ArrivalDate must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Deprature Date"></asp:Label>&nbsp;&nbsp;
                    <asp:TextBox ID="txtDdate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDdate" ErrorMessage="Deprature date must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="No of Night"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNight" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="txtCity" runat="server" Text="City"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Select City--</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Jalgoan</asp:ListItem>
                        <asp:ListItem>Satara</asp:ListItem>
                        <asp:ListItem>Solapur</asp:ListItem>
                        <asp:ListItem>Kolhapur</asp:ListItem>
                        <asp:ListItem>Nashik</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="txtState" runat="server" Text="State"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>--Select State--</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>MP</asp:ListItem>
                        <asp:ListItem>UP</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujrat</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Odisa</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="txtCountry" runat="server" Text="Country"></asp:Label>&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>--Select Country--</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Argentina</asp:ListItem>
                        <asp:ListItem>Branzil</asp:ListItem>
                        <asp:ListItem>Bangladesh</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br /><br />
                    <asp:Button ID="Button1"  class="Submit" runat="server" Text="Register" OnClick="Button1_Click" />


                    <asp:Label ID="txtOutput" runat="server" Text="Output"></asp:Label>
                </div>
            </div>
        </div>
    <p>
        
        </p>
    </form>
    </body>
</html>

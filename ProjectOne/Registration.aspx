<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ProjectOne.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Registration.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
            <div class="row">
                <div class="col-md-3"></div>
                     <div class="col-md-6 Reg">
                            
                             <h2 class="title"">Registration</h2>
            
                                <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Firstname must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                                <br />
                                

                                <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Lastname must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                                <br />
                               

                                <asp:Label ID="Label3" runat="server" Text="UserName"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Usename must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                                <br />
                                

                                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="txtMale" runat="server" Text="Male" GroupName="gender" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="txtFemale" runat="server" Text="Female" GroupName="gender" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RadioButton ID="txtTransgender" runat="server" Text="Transgender" GroupName="gender"  />
                              
                               


                                <br />
                                <br />


                                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtPassword" runat="server" MaxLength="10" TextMode="Password"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                                <br />
                                

                                <asp:Label ID="Label5" runat="server" Text="ConfirmPassword"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="txtCPassword" runat="server" MaxLength="10" TextMode="Password"></asp:TextBox>

                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" ErrorMessage="Passoword and Confirm Password should be same" ForeColor="Red"></asp:CompareValidator>

                                <br />
                                

                                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                <br />
                                <br />

                                <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone" ErrorMessage="Mobile No must not be empty" ForeColor="Red"></asp:RequiredFieldValidator>

                                <br />
                                <br />

                                <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>

                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address not must be  empty" ForeColor="Red"></asp:RequiredFieldValidator>
                             <br />
                                <br />

                                <asp:Label ID="Label9" runat="server" Text="Age"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="age must br 18 to 50" ForeColor="Red" MaximumValue="50" MinimumValue="18" Type="Integer"></asp:RangeValidator>

                                <br />
                                <br />

                                <asp:Label ID="Label11" runat="server" Text="Language"></asp:Label>
                                &nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="txtMarathi" runat="server" Text="Marathi" />
                                &nbsp;&nbsp;
                                <asp:CheckBox ID="txtEnglish" runat="server" Text="English" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:CheckBox ID="txtHindi" runat="server" Text="Hindi" />
                                <br />
                                <br />
                               

                                     <asp:Label ID="Label12" runat="server" Text="Country"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="txtCountry" runat="server" >
                                <asp:ListItem Value="Select Country"></asp:ListItem>
                                <asp:ListItem Value="Nepal"></asp:ListItem>
                                <asp:ListItem Value="India"></asp:ListItem>
                                <asp:ListItem></asp:ListItem>

                            </asp:DropDownList>
        
                            <br />
                            <br />
        
                            <asp:Button ID="txtSubmit" runat="server" class="Submit" Text="Register" OnClick="txtSubmit_Click" />
                                     <br />
                            <br />

                            <asp:Label ID="txtOutput" runat="server" Text=""></asp:Label>


            </div>
                    <div class="col-md-3">
                </div>
                    </div>

        </div>
        </div>
       

       
    </form>
</body>
</html>

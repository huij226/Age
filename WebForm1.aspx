<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Please Enter Your Information</h2>
            <div>
                <asp:Label ID="lblName" runat="server" Text="What is your name: "></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <!-- RequiredFieldValidator for Name -->
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Please enter your name" style="font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblDOB" runat="server" Text="What is your Date of Birth: "></asp:Label>
                <asp:TextBox ID="txtDOB" runat="server" placeholder="DD/MM/YYYY"></asp:TextBox>
                <!-- RequiredFieldValidator for DOB -->
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" Display="Dynamic" ErrorMessage="Please enter your date of birth" style="font-style: italic; color: #FF0000"></asp:RequiredFieldValidator>
                <!-- RegularExpressionValidator for DOB -->
                <asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB" Display="Dynamic" ErrorMessage="Please enter a valid date in the format DD/MM/YYYY" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/\d{4}$" style="font-style: italic; color: #FF0000"></asp:RegularExpressionValidator>
            </div>
            <div>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>

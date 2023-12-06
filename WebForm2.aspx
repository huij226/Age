<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Your Information</h2>
            <div>
                <% if (Session["UserName"] != null && Session["UserDOB"] != null)
                    {
                        string userName = Session["UserName"].ToString();
                        string userDOB = Session["UserDOB"].ToString();
                        int age = CalculateAge(userDOB);

                        Response.Write($"Hi {userName}, Your age is {age} years.");
                    }
                    else
                    {
                        Response.Redirect("WebForm1.aspx");
                    }
                %>
            </div>

            <div>
                <asp:Button ID="btnBack" runat="server" Text="Back to form" OnClick="btnBack_Click"/>
            </div>
        </div>
    </form>
</body>
</html>

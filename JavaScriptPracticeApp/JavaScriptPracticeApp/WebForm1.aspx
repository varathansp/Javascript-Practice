<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="JavaScriptPracticeApp.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function ValidateForm() {
            var ret = true;
            if (document.getElementById("txtFirstName").value == "") {
                document.getElementById("lblFirstName").innerText = "First Name is required";
                ret = false;
            }
            else {
                document.getElementById("lblFirstName").innerText = "";
            }

            if (document.getElementById("txtLastName").value == "") {
                document.getElementById("lblLastName").innerText = "Last Name is required";
                ret = false;
            }
            else {
                document.getElementById("lblLastName").innerText = "";
            }

            if (document.getElementById("txtEmail").value == "") {
                document.getElementById("lblEmail").innerText = "Email is required";
                ret = false;
            }
            else {
                document.getElementById("lblEmail").innerText = "";
            }

            return ret;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    First Name</td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Last Name</td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblLastName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit"  OnClientClick="return ValidateForm()"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

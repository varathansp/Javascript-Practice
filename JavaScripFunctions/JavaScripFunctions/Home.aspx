<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JavaScripFunctions.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function confirmPost() {
            if (confirm("Are you sure to Post?") == true)
                return true;
            else
                return false;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnConnectionCheck" runat="server" 
            onclick="btnConnectionCheck_Click" Text="Check" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    <asp:TextBox ID="txtPost" runat="server" Height="95px" Width="561px"></asp:TextBox>
    <asp:Button ID="btnPost" runat="server" Text="Post" OnClientClick="return confirmPost()"  onclick="btnPost_Click" />
    </form>
</body>
</html>

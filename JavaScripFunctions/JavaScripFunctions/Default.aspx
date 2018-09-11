<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JavaScripFunctions.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">

        function myFunction() {
            document.getElementById("Label1").innerHTML = "Hi";
        }

        function ConfirmOnDelete() {
            if (confirm("Are you sure to delete?") == true)
                return true;
            else
                return false;
        }</script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        
    
        <asp:Button ID="btnOK" runat="server" Text="Ok" OnClientClick="myFunction()"/>
    <button onclick="myFunction()">OKOK</button>
     <asp:Button ID="Button1" runat="server" Text="Ok" OnClientClick="ConfirmOnDelete()"/>
     <asp:Button ID="Button2" runat="server" Text="Ok" OnClientClick= "return confirm('Are you sure to Delete the entry?');"/>
    </div>

    <div>
    <asp:Label ID="Label1" runat="server"></asp:Label></div>
    </form>
   
</body>
</html>

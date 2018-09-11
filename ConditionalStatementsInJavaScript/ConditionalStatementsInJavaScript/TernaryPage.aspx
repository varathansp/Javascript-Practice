<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TernaryPage.aspx.cs" Inherits="ConditionalStatementsInJavaScript.TernaryPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        var input = Number(prompt("Please enter a number", ""));
        var message = input % 2 == 0 ? "Your number is even" : "Your number is odd";
        alert(message);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

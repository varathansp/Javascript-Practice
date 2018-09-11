    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IfElsePage.aspx.cs" Inherits="ConditionalStatementsInJavaScript.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var userInput = Number(prompt("Please enter a option between 1 to 3",""));
        if (userInput == 1) { alert("Your option is 1"); }
        else if (userInput == 2) { alert("Your option is 2"); }
        else if (userInput == 3) { alert("Your option is 3"); }
        else { alert("Your option is invalid"); }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

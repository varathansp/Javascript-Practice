<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForLoopPage.aspx.cs" Inherits="LoopsInJavascript.ForLoopPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var target = Number(prompt("Enter the target number", ""));
        for (var i = 0; i <= target; i=i+2) {
            document.write(i + "</br>");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

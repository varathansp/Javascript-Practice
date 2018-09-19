<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recursive.aspx.cs" Inherits="JavaScriptPracticeApp.Recursive" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function factorial(n) {
            if (n == 0 || n == 1) { return 1; }
            else return n * factorial(n - 1);
        }
        var result = factorial(5);
        document.write(result);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

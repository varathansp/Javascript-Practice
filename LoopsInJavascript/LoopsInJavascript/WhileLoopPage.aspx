<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WhileLoopPage.aspx.cs" Inherits="LoopsInJavascript.WhileLoopPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var target = Number(prompt("Enter the target number", ""));
        var start = 0;
        while (start <= target) {
            document.write(start + "</br>")
            start = start + 2;
//            if (start % 2 != 0) {
//                continue;
//            }
//           
//            if (start >= 100) {
//                break;
//            }

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

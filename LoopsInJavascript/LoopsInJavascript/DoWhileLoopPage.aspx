<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoWhileLoopPage.aspx.cs"
    Inherits="LoopsInJavascript.DoWhileLoopPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var userChoice = "";
    do{
        var target = Number(prompt("Please enter the target number", ""));
        var start=0;
        while (start <= target) {
            document.write(start + "</br>")
            start += 2;
        }

        do{
            userChoice =(prompt("Do you want to continue? Y or N", "")).toUpperCase();
        if (userChoice != "Y" && userChoice != "N") { alert("Please enter valid option")}
        }while(userChoice!="Y" && userChoice!="N")

       }while(userChoice=="Y")
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    </form>
</body>
</html>

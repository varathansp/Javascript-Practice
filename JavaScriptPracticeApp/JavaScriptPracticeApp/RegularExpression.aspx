<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegularExpression.aspx.cs" Inherits="JavaScriptPracticeApp.RegularExpression" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validateEmail() {
            var emailTextBox = document.getElementById("txtEmail");
            var email = emailTextBox.value;
            var emailRegEx = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

            emailTextBox.style.color = "white";

            if (emailRegEx.test(email)) {
                emailTextBox.style.backgroundColor = "green";
            }
            else {
                emailTextBox.style.backgroundColor = "red";
            }
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
   Email : <input type="text" id="txtEmail" onkeyup="validateEmail()" />

    </form>
</body>
</html>

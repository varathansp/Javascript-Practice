<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnError.aspx.cs" Inherits="JavaScriptPracticeApp.OnError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        window.onerror = function (message, url, line) {
            alert("Message : " + message + "\nURL : " + url + "\nLine Number : " + line);
            // Return true to supress the browser error messages
            // (like in older versions of Internet Explorer)
            return true;
        }
        NonExistingFunction();

        function imageErrorHandler() {
            alert("There is a problem loading the image");
        }
        
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img src="NonExistingImage.jpg" onerror="imageErrorHandler()" />
    </div>
    </form>
</body>
</html>

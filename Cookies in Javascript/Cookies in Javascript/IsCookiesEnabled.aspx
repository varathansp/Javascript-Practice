<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IsCookiesEnabled.aspx.cs" Inherits="Cookies_in_Javascript.IsCookiesEnabled" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="msg"></div>
<script type="text/javascript">
    function cookiesEnabled() {
        var cookiesEnabled = (navigator.cookieEnabled) ? true : false;

        if (typeof navigator.cookieEnabled == "undefined" && !cookiesEnabled) {
            document.cookie = "mytestcookie";
            cookiesEnabled = (document.cookie.indexOf("mytestcookie") != -1) ? true : false;
        }

        return cookiesEnabled;
    }

    if (cookiesEnabled()) {
        document.getElementById("msg").innerHTML = "Cookies enabled";
    }
    else {
        document.getElementById("msg").innerHTML = "Cookies disabled";
    }
</script>
    </form>
</body>
</html>

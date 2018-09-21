<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookies.aspx.cs" Inherits="Cookies_in_Javascript.Cookies" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        window.onload = function () {
            if (document.cookie.length != 0) {
                var nameValueArray = document.cookie.split("=");
                document.getElementById("ddlTheme").value = nameValueArray[1];
                document.bgColor = nameValueArray[1];
            }
        }

        function setColorCookie() {
            var selectedValue = document.getElementById("ddlTheme").value;
            if (selectedValue != "Select Color") {
                document.bgColor = selectedValue;
                document.cookie = "color=" + selectedValue +
                            ";expires=Fri, 5 Aug 2016 01:00:00 UTC;";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <select id="ddlTheme" onchange="setColorCookie()">
            <option value="Select Color">Select Color</option>
            <option value="red">Red</option>
            <option value="green">Green</option>
            <option value="blue">Blue</option>
        </select>
    </div>
    </form>
</body>
</html>

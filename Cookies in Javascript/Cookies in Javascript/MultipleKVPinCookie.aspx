<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipleKVPinCookie.aspx.cs" Inherits="Cookies_in_Javascript.MultipleKVPinCookie" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 <html>
<head></head>
<body>
    <table border="1">
        <tr>
            <td>Name</td>
            <td><input type="text" id="txtName" /></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" id="txtEmail" /></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text" id="txtGender" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="Set Cookie" onclick="setCookie()" />
                <input type="button" value="Get Cookie" onclick="getCookie()" />
                <input type="button" value="Clear" onclick="clearTextBoxes()" />
            </td>
        </tr>
    </table>
    <script type="text/javascript">
        function setCookie() {
            var customObject = {};

            customObject.name = document.getElementById("txtName").value;
            customObject.email = document.getElementById("txtEmail").value;
            customObject.gender = document.getElementById("txtGender").value;

            var jsonString = JSON.stringify(customObject);

            document.cookie = "cookieObject=" + jsonString;
        }


        function getCookie() {
            var nameValueArray = document.cookie.split("=");

            var customObject = JSON.parse(nameValueArray[1]);

            document.getElementById("txtName").value = customObject.name;
            document.getElementById("txtEmail").value = customObject.email;
            document.getElementById("txtGender").value = customObject.gender;
        }

        function clearTextBoxes() {
            document.getElementById("txtName").value = "";
            document.getElementById("txtEmail").value = "";
            document.getElementById("txtGender").value = "";
        }
    </script>
</body>
</html>

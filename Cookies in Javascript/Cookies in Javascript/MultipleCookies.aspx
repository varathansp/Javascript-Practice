<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipleCookies.aspx.cs" Inherits="Cookies_in_Javascript.MultipleCookies" %>

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
            document.cookie = "name=" + document.getElementById("txtName").value;
            document.cookie = "email=" + document.getElementById("txtEmail").value;
            document.cookie = "gender=" + document.getElementById("txtGender").value;
        }

        function getCookie() {
            if (document.cookie.length != 0) {
                var cookiesArray = document.cookie.split("; ");

                for (var i = 0; i < cookiesArray.length; i++) {
                    var nameValueArray = cookiesArray[i].split("=");

                    if (nameValueArray[0] == "name") {
                        document.getElementById("txtName").value = nameValueArray[1];
                    }
                    else if (nameValueArray[0] == "email") {
                        document.getElementById("txtEmail").value = nameValueArray[1];
                    }
                    else if (nameValueArray[0] == "gender") {
                        document.getElementById("txtGender").value = nameValueArray[1];
                    }
                }
            }
            else {
                alert("Cookies not found");
            }
        }

        function clearTextBoxes() {
            document.getElementById("txtName").value = "";
            document.getElementById("txtEmail").value = "";
            document.getElementById("txtGender").value = "";
        }
    </script>
</body>
</html>

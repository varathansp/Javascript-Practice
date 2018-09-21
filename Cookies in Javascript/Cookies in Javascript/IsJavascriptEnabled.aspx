<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IsJavascriptEnabled.aspx.cs" Inherits="Cookies_in_Javascript.IsJavascriptEnabled" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  
    <noscript>
    <style type="text/css">
        .rootDiv
        {
            display: none;
        }
    </style>
    <h1>It seems that you have disabled JavaScript. Please enable JavaScript.</h1>
</noscript>
<div id="rootElement" class="rootDiv">
    <table border="1">
        <tr>
            <td>Name</td>
            <td>
                <input id="txtName" type="text" onfocus="validateIfEmpty('txtName')"
           onblur="validateIfEmpty('txtName')" onkeyup="validateIfEmpty('txtName')"/>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input id="txtGender" type="text" onfocus="validateIfEmpty('txtGender')"
           onblur="validateIfEmpty('txtGender')" onkeyup="validateIfEmpty('txtGender')"/>
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
    function validateIfEmpty(control) {
        var controlToValidate = document.getElementById(control);
        if (controlToValidate.value == "") {
            controlToValidate.style.background = "red";
        }
        else {
            controlToValidate.style.background = "white";
        }
    }
</script>
    
</body>
</html>

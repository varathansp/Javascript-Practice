<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MouseEvents.aspx.cs" Inherits="JavaScriptPracticeApp.MouseEvents" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <input type="button" value="Single, Double or Right Click" onclick="logEvent(event)" onmousedown="logEvent(event)" onmouseup="logEvent(event)" onmouseover="logEvent(event)" onmouseout="logEvent(event)" ondblclick="logEvent(event)" oncontextmenu="logEvent(event)" />

<input type="button" value="Clear" onclick="clearText()"/>
<br /><br />
<textarea id="txtArea" rows="10" cols="20"></textarea>
<script type="text/javascript">
    function logEvent(event) {
        event = event || window.event;
        document.getElementById("txtArea").value += event.type + "\r\n";
    }

    function clearText() {
        document.getElementById("txtArea").value = "";
    }
</script>
    </form>
</body>
</html>

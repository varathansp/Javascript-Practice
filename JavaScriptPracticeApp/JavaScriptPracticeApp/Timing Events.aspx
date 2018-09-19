<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timing Events.aspx.cs" Inherits="JavaScriptPracticeApp.Timing_Events" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
         var intervalId;

         function startClock() {
             intervalId = setInterval(getCurrentDateTime, 1000);
         }

         function stopClock() {
             clearInterval(intervalId);
         }

         function getCurrentDateTime() {
             document.getElementById("timeDiv").innerHTML = new Date();
         }

         getCurrentDateTime();
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="timeDiv" ></div>
<br />
<input type="button" value="Start Clock" onclick="startClock()" />
<input type="button" value="Stop Clock" onclick="stopClock()" />
    </form>
</body>
</html>


 <%--<input type="text" value="10" id="txtBox" />
<br /><br />
<input type="button" value="Start Timer" onclick="startTimer('txtBox')" />
<input type="button" value="Stop Timer" onclick="stopTimer()" />
<script type="text/javascript">
    var intervalId;

    function startTimer(controlId) {
        var control = document.getElementById(controlId);
        var seconds = control.value;
        seconds = seconds - 1;
        if (seconds == 0) {
            control.value = "Done";
            return;
        }
        else {
            control.value = seconds;
        }

        intervalId = setTimeout(function () { startTimer('txtBox'); }, 1000);
    }

    function stopTimer() {
        clearTimeout(intervalId);
    }
</script>--%>
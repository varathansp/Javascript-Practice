<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventObject.aspx.cs" Inherits="JavaScriptPracticeApp.EventObject" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
         function displayEventDetails(event) {
             var eventDetails = "Event = " + event.type + "<br/> X = " + event.clientX
                           + "<br/>Y = " + event.clientY + "<br/>Target Type = "
                           + event.target.type + "<br/>Target Tag Name = "
                           + event.target.tagName;

             document.getElementById("resultDiv").innerHTML = eventDetails;
         }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <input type="button" value="Click me" id="btn"
       onclick="displayEventDetails(event)"
       onmouseover="displayEventDetails(event)"
       onmouseout="displayEventDetails(event)" />
<br /><br />
<div id="resultDiv"></div>
    </div>
    </form>
</body>
</html>

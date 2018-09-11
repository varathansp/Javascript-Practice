<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="txtboxChange.aspx.cs" Inherits="JavaScriptPractice.txtboxChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <%--  <script src="Scripts/jquery-3.3.1-vsdoc.js" type="text/javascript"></script>--%>
    <script src="Scripts/jquery-3.3.1.js" type="text/javascript"></script>
  <%--  <script src="Scripts/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery-3.3.1.slim.js" type="text/javascript"></script>
    <script src="Scripts/jquery-3.3.1.slim.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.12.1.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.12.1.min.js" type="text/javascript"></script>--%>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript">
        $("#textbox").change(function () { alert("Change detected!"); });

        $("#textbox").on('change keyup paste', function () {
            console.log('I am pretty sure the text box changed');
        });</script>


</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="text" id="textbox" />
    </div>
    </form>
     <script type="text/javascript" language="javascript">
//         $("#textbox").change(function () { alert("Change detected!"); });

         $("#textbox").on('change keyup paste', function () {
             alert("Change detected!");
         });</script>

</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderChange.aspx.cs" Inherits="JavaScriptPractice.CalenderChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="Scripts/jquery-1.12.4.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.12.1.js" type="text/javascript"></script>
    <link href="Scripts/jquery-ui.css" rel="stylesheet" type="text/css" />
  
    <script type="text/javascript" language="javascript">
        $(function () {
            $('#txtDatePicker').datepicker(
    {
        dateFormat: 'dd/mm/yy',
        changeMonth: true,
        changeYear: true,
        yearRange: '2010:2100'
    });
        })
        $('#TextBox2').bind('input', function () {
            document.getElementById("TextBox3").innerHTML = 40;
        });
        $("#TextBox2").on('change keyup paste', function () { alert("Change detected!"); });
      
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtDatePicker" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>

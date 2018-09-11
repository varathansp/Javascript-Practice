<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DayAddition.aspx.cs" Inherits="JavaScriptPractice.DayAddition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">

        function funcDay() {
            var day2 = document.getElementById("txtcal").value;
            var day3 = addDays(day2, 1);
            alert(day3);
        }
       

        function addDays(date, days) {
            var result = new Date(date);
            result.setDate(result.getDate() + days);
            return result;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtcal" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="funcDay()" />
    
    </div>
    </form>
</body>
</html>

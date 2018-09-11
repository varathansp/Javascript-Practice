<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="switchcase.aspx.cs" Inherits="JavaScriptPractice.switchcase" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">
        function funcDay() {
            var day=parse;
            switch (new Date().getDay()) {
                case 0:
                    day = "Sunday";
                    break;
                case 1:
                    day = "Monday";
                    break;
                case 2:
                    day = "Tuesday";
                    break;
                case 3:
                    day = "Wednesday";
                    break;
                case 4:
                    day = "Thursday";
                    break;
                case 5:
                    day = "Friday";
                    break;
                case 6:
                    day = "Saturday";
            }
            document.getElementById("lblDay").innerHTML = "Today is " + day;
        }

       
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblDay" runat="server"></asp:Label>
       <%-- <asp:Button ID="btnDay" runat="server" Text="Get Day" UseSubmitBehavior="false" OnClientClick="funcDay()" />
    --%>
    <button type="button" id="btnDay" onclick="funcDay()">Get Day</button>
        <br />
        <br />
    </div>
    </form>
</body>
</html>

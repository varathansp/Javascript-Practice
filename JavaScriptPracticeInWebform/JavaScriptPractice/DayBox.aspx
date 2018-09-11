<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DayBox.aspx.cs" Inherits="JavaScriptPractice.DayBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" language="javascript">
        function funcDay() {
            var day;
            var day2 = document.getElementById("txtDate").value;
            var day3 = new Date(day2);
            switch (day3.getDay()) {
                case 0:
                    day = "Sunday";
                    $('#TextBox1').show();
                    $('#TextBox2').show();
                    $('#TextBox3').show();
                    $('#TextBox4').show();
                    $('#TextBox5').show();
                    break;
                case 1:
                    day = "Monday";
                    $('#TextBox1').show();
                    $('#TextBox2').show();
                    $('#TextBox3').show();
                    $('#TextBox4').show();
                    $('#TextBox5').show();
                    
                    break;
                case 2:
                    day = "Tuesday";
                    $('#TextBox1').hide();
                    $('#TextBox2').show();
                    $('#TextBox3').show();
                    $('#TextBox4').show();
                    $('#TextBox5').show();
                  
                    break;
                case 3:
                    day = "Wednesday";
                    $('#TextBox1').hide();
                    $('#TextBox2').hide();
                    $('#TextBox3').show();
                    $('#TextBox4').show();
                    $('#TextBox5').show();
           
                    break;
                case 4:
                    day = "Thursday";
                    $('#TextBox1').hide();
                    $('#TextBox2').hide();
                    $('#TextBox3').hide();
                    $('#TextBox4').show();
                    $('#TextBox5').show();
           
                    break;
                case 5:
                    day = "Friday";
                    $('#TextBox1').hide();
                    $('#TextBox2').hide();
                    $('#TextBox3').hide();
                    $('#TextBox4').hide();
                    $('#TextBox5').show();
           
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
        <br />
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <%-- <asp:Button ID="btnDay" runat="server" Text="Get Day" UseSubmitBehavior="false" OnClientClick="funcDay()" />
    --%>
    <button type="button" id="btnDay" onclick="funcDay()">Get Day</button>
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
    </div>
    
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dates.aspx.cs" Inherits="JavaScriptPracticeApp.Dates" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var dateOfBirth = new Date("January 13, 1980 11:20:00");
        document.write(dateOfBirth);


        var dateOfBirth = new Date(1980, 0, 13, 11, 20, 0, 0);
        document.write(dateOfBirth);

        var year = new Date(1980, 0, 13, 11, 20, 0, 0).getFullYear();
        document.write(year);


        var month = new Date(1980, 0, 13, 11, 20, 0, 0).getMonth();
        document.write(month);


        function getMonthNameFromNumber(monthNumber) {
            var monthNames = ["January", "February", "March", "April",
                        "May", "June", "July", "August", "September",
                        "October", "November", "December"];
            return monthNames[monthNumber];
        }

        var monthName = getMonthNameFromNumber(new Date(1980, 0, 13, 11, 20, 0, 0).getMonth());
        document.write(monthName);


        var dayOfMonth = new Date(1980, 0, 13, 11, 20, 0, 0).getDate();
        document.write(dayOfMonth);

        function getWeekDayNameFromNumber(dayNumber) {
            var weekDays = ["Sunday", "Monday", "Tuesday", "Wednesday",
                                 "Thursday", "Friday", "Saturday"];
            return weekDays[dayNumber];
        }

        var weekdayName = getWeekDayNameFromNumber(new Date(1980, 0, 13, 11, 20, 0, 0).getDay());
        document.write(weekdayName);

        function formatDate(date) {
            var day = date.getDate();
            if (day < 10) {
                day = "0" + day;
            }

            var month = date.getMonth() + 1;
            if (month < 10) {
                month = "0" + month;
            }

            var year = date.getFullYear();

            return day + "/" + month + "/" + year;
        }

        document.write(formatDate(new Date()));


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

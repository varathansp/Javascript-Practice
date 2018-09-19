<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventsUsingHTML.aspx.cs"
    Inherits="JavaScriptPracticeApp.Events_" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function changeColorOnMouseOver() {
            var control = document.getElementById("btn");
            control.style.background = 'red';
            control.style.color = 'yellow';
        }

        function changeColorOnMouseOut() {
            var control = document.getElementById("btn");
            control.style.background = 'black';
            control.style.color = 'white';
        }

        function confirmSubmit() {
            if (confirm("Are you sure you want to submit")) {
                alert("You selected OK");
                return true;
            }
            else {
                return false;
                confirm("You selected cancel");
            }
        }

        function validateRequiredField(controlId) {
            var control = document.getElementById(controlId);
            control.style.color = 'white';
            if (control.value == "") {
                control.style.background = 'red';
            }
            else {
                control.style.background = 'green';
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <input type="button" value="Click me" id="btn" onmouseover="changeColorOnMouseOver()"
        onmouseout="changeColorOnMouseOut()" />
    <br />
    <br />
    <br />
    <input type="submit" value="Submit" id="Submit1" onclick="return confirmSubmit()" />
      <br />
    <br />
    <br />
     <table>
    <tr>
        <td>
            First Name
        </td>
        <td>
            <input type="text" id="txtFirstName"
                   onkeyup="validateRequiredField('txtFirstName')"
                   onblur="validateRequiredField('txtFirstName')"/>
        </td>
    </tr>
    <tr>
        <td>
            Last Name
        </td>
        <td>
            <input type="text" id="txtLastName"
                   onkeyup="validateRequiredField('txtLastName')"
                   onblur="validateRequiredField('txtLastName')"/>
        </td>
    </tr>
</table>
    </form>
</body>
</html>

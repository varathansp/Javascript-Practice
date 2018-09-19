<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventsUsingDOM.aspx.cs" Inherits="JavaScriptPracticeApp.EventsUsingDOM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">
         document.getElementById("btn").onmouseover = changeColorOnMouseOver;
         document.getElementById("btn").onmouseout = changeColorOnMouseOut;

         function changeColorOnMouseOver() {
             this.style.background = 'red';
             this.style.color = 'yellow';
         }

         function changeColorOnMouseOut() {
             this.style.background = 'black';
             this.style.color = 'white';
         }

//         document.getElementById("btn").onmouseover = function () {
//             this.style.background = 'red';
//             this.style.color = 'yellow';
//         }

//         document.getElementById("btn").onmouseout = function () {
//             this.style.background = 'black';
//             this.style.color = 'white';
//         }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input type="button" value="Click me" id="btn"/>
    </div>
    </form>
</body>
</html>

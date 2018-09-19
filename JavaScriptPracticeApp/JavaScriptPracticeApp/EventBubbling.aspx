<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventBubbling.aspx.cs" Inherits="JavaScriptPracticeApp.EventBubbling" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
        .styleClass
        {
            display: table-cell;
            border: 1px solid black;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="styleClass" onclick="alert('Div click handler')">
        DIV element
        <span class="styleClass" onclick="alert('Span click handler')">
        Span element
            <input type="button" value="Click me" onclick="alert('Button click handler')" />
        </span>
    </div>

     <div id="DIV1" class="divStyle">
        DIV 1
        <div id="DIV2" class="divStyle">
            DIV 2
            <div id="DIV3" class="divStyle">
                DIV 3
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var divElements = document.getElementsByTagName('div');

        for (var i = 0; i < divElements.length; i++) {
            divElements[i].onclick = function () {
                this.style.borderColor = "red";
                alert(this.getAttribute("id") + " backgound changed");
            }
        }
    </script>
    </form>
</body>
</html>


<%-- <html>
<head>
    <style type="text/css">
        .divStyle
        {
            display: table-cell;
            border: 5px solid black;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="DIV4" class="divStyle">
        DIV 1
        <div id="DIV5" class="divStyle">
            DIV 2
            <div id="DIV6" class="divStyle">
                DIV 3
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var divElements = document.getElementsByTagName('div');

        for (var i = 0; i < divElements.length; i++) {
            divElements[i].onclick = function (event) {
                event = event || window.event;

                if (event.stopPropagation) {
                    event.stopPropagation();
                } else {
                    event.cancelBubble = true;
                }

                this.style.borderColor = "red";
                alert(this.getAttribute("id") + " backgound changed");
            }
        }
    </script>
</body>
</html>--%>

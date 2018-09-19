<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorHandling.aspx.cs" Inherits="JavaScriptPracticeApp.ErrorHandling" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        try {
            // Referencing a function that does not exist cause an exception
            document.write(sayHello());
          
            document.write("This line will not be executed");
        }
       
        catch (e) {
            document.write("Description = " + e.description + "<br/>");
            document.write("Message = " + e.message + "<br/>");
            document.write("Stack = " + e.stack + "<br/><br/>");
        }
        finally {
            document.write("This line is guaranteed to execute");
        }

        //---------------------------------------------------------------------
        function divide() {
            var numerator = Number(prompt("Enter numerator"));
            var denominator = Number(prompt("Enter denominator"));

            try {
                if (denominator == 0) {
                    throw {
                        error: "Divide by zero error",
                        message: "Denominator cannot be zero"
                    };
                }
                else {
                    alert("Result = " + (numerator / denominator));
                }
            }
            catch (e) {
                document.write(e.error + "<br/>");
                document.write(e.message + "<br/>");
            }
        }

        divide();
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

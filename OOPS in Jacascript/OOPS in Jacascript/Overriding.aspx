<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Overriding.aspx.cs" Inherits="OOPS_in_Jacascript.Overriding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        GetEmployeeDetails();

        function GetEmployeeDetails() {
            Employee.prototype.getName = function () {
                return this.name.toUpperCase();
            }

            var e1 = new Employee("Mark");
            var e2 = new Employee("Sara");

            document.write("e1.name = " + e1.getName() + "<br/>");
            document.write("e2.name = " + e2.getName() + "<br/>");
        }

        function Employee(name) {
            this.name = name;
        }

        Employee.prototype.getName = function () {
            return this.name;
        }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inheritance.aspx.cs" Inherits="OOPS_in_Jacascript.Inheritance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        // Employee will be the base object (Similar to base class in c#)
        var Employee = function (name) {
            this.name = name;
        }

        // getName() function is added to the base object (Employee)
        Employee.prototype.getName = function () {
            return this.name;
        }

        // PermanentEmployee will be the derived object
        var PermanentEmployee = function (annualSalary) {
            this.annualSalary = annualSalary;
        }

        // Use prototype to associate Employee as the base object for PermanentEmployee
        PermanentEmployee.prototype = new Employee("Mark");

        var pe = new PermanentEmployee(50000);
        // Derived object (permanentEmployee) can see the
        // base object (Employee) getName() method
        document.write(pe.getName());

        alert(pe instanceof Employee);          // Returns true
        alert(pe instanceof PermanentEmployee); // Returns true
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

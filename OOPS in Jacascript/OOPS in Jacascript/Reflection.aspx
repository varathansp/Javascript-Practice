<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reflection.aspx.cs" Inherits="OOPS_in_Jacascript.Reflection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    var Employee = function (firstName, lastName, gender, email)
{
    this.firstName = firstName;
    this.lastName = lastName;
    this.gender = gender;
    this.email = email;
}

Employee.prototype.getFullName = function ()
{
    return this.firstName + " " + this.lastName;
}

Employee.prototype.getEmail = function ()
{
    return this.email;
}

Employee.prototype.getGender = function ()
{
    return this.gender;
}

var employee = new Employee("Mark", "Matt", "Male", "a@a.com");

The following code retrieves all the public properties and methods of the Employee object. 

for (var property in employee) 
{
    document.write(property + "<br/>");
} 
for (var property in employee) 
{
    document.write(property + " : " + employee[property] + "<br/>");
} 
for (var property in employee) 
{
    if (typeof employee[property] != "function") 
    {
        document.write(property + " : " + employee[property] + "<br/>");
    }
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

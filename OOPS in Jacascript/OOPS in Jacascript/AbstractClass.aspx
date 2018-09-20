<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AbstractClass.aspx.cs" Inherits="OOPS_in_Jacascript.AbstractClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        // Create a Shape object which is abstract
        var Shape = function () {
            this.shapeName = "None";
            throw new Error("Cannot create an instance of abstract class");
        }

        // Error : Cannot create an instance of abstract class
        // var shape = new Shape();

        // Add draw function to the Shape prototype
        // Objects derived from Shape should be able to call draw() method
        Shape.prototype.draw = function () {
            return "Drawing " + this.shapeName;
        }

        // Create a Circle object
        var Circle = function (shapeName) {
            this.shapeName = shapeName;
        }

        // Make shape the parent for Circle
        // Object.create() allows to create an object without using constructor
        Circle.prototype = Object.create(Shape.prototype);

        var circle = new Circle("Circle");
        // Since Circle inherits from abstract Shape object, it can call draw() method
        document.write(circle.draw());

        alert(circle instanceof Circle); // Returns true
        alert(circle instanceof Shape);  // Returns true
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

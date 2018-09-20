<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Polymorphism.aspx.cs" Inherits="OOPS_in_Jacascript.Polymorphism" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        // Shape object is be the base object
        var Shape = function () { }

        // Add draw function to the Shape prototype
        // Objects derived from Shape should be able to override draw() method
        Shape.prototype.draw = function () {
            return "I am a generic shape";
        }

        // Create a Circle object
        var Circle = function () { }

        // Make shape the parent for Circle
        Circle.prototype = Object.create(Shape.prototype);

        // Circle object overrides draw() method
        Circle.prototype.draw = function () {
            return "I am a circle";
        }

        var Square = function () { }
        Square.prototype = Object.create(Shape.prototype);
        Square.prototype.draw = function () {
            return "I am a square";
        }

        var Triangle = function () { }
        Triangle.prototype = Object.create(Shape.prototype);

        var shapes = [new Shape(), new Circle(), new Square(), new Triangle()];

        shapes.forEach(function (shape) {
            document.write(shape.draw() + "<br/>")
        });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JavaScriptPractice.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" language="javascript">

        function funcConfirm() {
            var ans = confirm("Are you sure you want to delete?");
           if (ans == true)
               return true;
           else
               document.getElementById("lblConfirm").innerHTML ="Not Confirmed JavaScript code";
               return false;
           }

           var manchester = { lw: "martial",
               am: "mata",
               rw: "alexis",
               mid: function () { return this.lw + this.am + this.rw; }
           };

           function funcObject() { document.getElementById("lblObject").innerHTML=manchester.am+manchester.mid() }

           function funcTime() {
               document.getElementById("lblTime1").innerHTML = Date();

           }

           function funcSwitch() {

               var ans = parseInt(document.getElementById("txtSwitch").value);
               switch (ans) {
                   case 1:
                       document.getElementById("lblSwitch").innerHTML = "1 in the textbox";
                       break;
                   case 2:
                       document.getElementById("lblSwitch").innerHTML = "2 in the textbox";
                       break;
                   case 3:
                       document.getElementById("lblSwitch").innerHTML = "3 in the textbox";
                       break;
                   default:
                       document.getElementById("lblSwitch").innerHTML = "Select within 3";
               }
            }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" 
            onclick="btnConfirm_Click1" OnClientClick="return funcConfirm()"  />
    
        <asp:Label ID="lblConfirm" runat="server"></asp:Label>
    
        <asp:Button type="button"  ID="btnObject" runat="server" UseSubmitBehavior="false" Text="Object" OnClientClick="funcObject()"/>
<%--      <button type="button" id="btnObject" onclick="funcObject()">Object</button>--%>
    
        <asp:Label ID="lblObject" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
    
    </div>
    <div>
     <asp:Button ID="btnTime" runat="server" Text="Time" UseSubmitBehavior="false" OnClientClick="funcTime()"/>
    <asp:Label ID="lblTime1" runat="server"></asp:Label>
       
    </div>

    
        <br />
        <br />
        <br />

     <div>
       <asp:TextBox ID="txtSwitch" runat="server"></asp:TextBox>
     <asp:Button ID="btnSwitch" runat="server" Text="Switch" OnClientClick="funcSwitch()"/>
    <asp:Label ID="lblSwitch" runat="server"></asp:Label>
    
                              
    </div>
   
    </form>
</body>
</html>

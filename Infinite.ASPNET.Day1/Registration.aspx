<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Infinite.ASPNET.Day1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
   <script>
       function checkItems(source, args) {
           var chkList = document.getElementById("ChkBeverages");
           var items = document.getElementsByTagName("input");
           for (var i = 0; i < items.length; i++) {
               if (items[i].checked) {
                   args.Isvalid = true;
                   return;
               }
           }
       }
   </script>
</head>
<body class="mt-4">
<form id="form1" runat="server">
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-5">
<div class="mb-2 row">
<label class="form-label col-md-4">First Name</label>
<div class="col-md-8">
<asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RfvFirstName" runat="server" ControlToValidate="TxtFirstName" ErrorMessage="Please enter first name"></asp:RequiredFieldValidator>
</div>
</div>
<div class="mb-2 row">
<label class="form-label  col-md-4">Email Id</label>
<div class="col-md-8">
<asp:TextBox ID="TxtEmailId" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator ForeColor="Red" ID="RfvEmailId" ErrorMessage="Please enter email id" ControlToValidate="TxtEmailId" runat="server" />
<asp:RegularExpressionValidator SetFocusOnError="true" Display="Dynamic" Text="*" ForeColor="Red" ID="RevEmailId" ErrorMessage="Please enter valid email id" ControlToValidate="TxtEmailId" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
</div>
</div>
<div class="mb-2 row">
<label class="form-label col-md-4">Password</label>
<div class="col-md-8">
<asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password" />
<asp:RequiredFieldValidator Display="Dynamic" ForeColor ="Red" ID="RfvPassword" ErrorMessage="Please enter the password" ControlToValidate="TxtPassword" runat="server" />
</div>
</div>
<div class="mb-2 row">
<label class="form-label col-md-4">Confirm Password</label>
<div class="col-md-8">
<asp:TextBox ID="TxtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" />
<asp:CompareValidator Display="Dynamic"  ForeColor="Red" ID="CvConfirmPassword" ErrorMessage="Password and Confirm password not matched" ControlToCompare="TxtPassword" ControlToValidate="TxtConfirmPassword" runat="server" />
 </div>
</div>
<div class="mb-2 row">
<label class="form-label col-md-4">City</label>
    <div class="col-md-8">
<asp:DropDownList CssClass="form-select" ID="DdlCities" runat="server">
<asp:ListItem Text ="----Select---" Value="0" />
<asp:ListItem Text="Chennai" Value="CHN" />
<asp:ListItem Text="Hyderabad" Value="HYD" />
<asp:ListItem Text="Mumbai" Value="MUM" />
<asp:ListItem Text="Visakapatinam" Value="VIZ" />
<asp:ListItem Text="Bengaluru" Value="BEN" />

 

</asp:DropDownList>

 

<asp:RequiredFieldValidator ForeColor="Red" ID="RfvCities" ErrorMessage="Please select any one city" ControlToValidate="DdlCities" runat="server" InitialValue="0" />
</div>
</div>
<div class="mb-2 row">
<label class="form-label col-md-4">Salary</label>
<div class="col-md-8">
<asp:TextBox ID="TxtSalary" runat="server" CssClass="form-control" />
<asp:RequiredFieldValidator ForeColor="Red" ID="RfvSalary" ErrorMessage="Enter the salary" ControlToValidate="TxtSalary" runat="server" />
<asp:RangeValidator ForeColor="Red" ErrorMessage="Salary should be less then 100000 and greater than 10000" ControlToValidate="TxtSalary" runat="server" MinimumValue="10000" MaximumValue="100000" />
</div>
</div>
<div class="mb-2 row">
<div class="col-md-4 form-label">Beverages</div>
<div class="col-md-8">
<asp:CheckBoxList ID="ChkBeverages" runat="server">
<asp:ListItem Text="Tea" />
<asp:ListItem Text="Coffee" />
<asp:ListItem Text="Soft Drinks" />
<asp:ListItem Text="Chocolate Coffee" />
</asp:CheckBoxList>
<asp:CustomValidator ID="CvBeverages" ErrorMessage="Please select any one item"  runat="server" ClientValidationFunction="checkItems" onServerValidate="CvBeverages_ServerValidate"></asp:CustomValidator>
</div>
</div>
<div class="mb-2">
<asp:Button Text="Submit" ID="BtnSubmit" runat="server" />
<asp:Button Text="Reset" ID="BtnReset" runat="server" />
</div>
</div>
</div>
</div>
</form>
</body>
</html>
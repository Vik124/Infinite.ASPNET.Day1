<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSamplePage.aspx.cs" Inherits="Infinite.ASPNET.Day1.FrmSamplePage" %>

 
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Sample Button" CssClass="btn btn-outline-dark" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
      
       
    </form>
</body>
</html>


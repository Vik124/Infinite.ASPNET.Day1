<%@ Page Language="C#" AutoEventWireup="true" %>

 

<!DOCTYPE html>
<script runat="server">

 

    protected void BtnSubmit_Clicked(object sender, EventArgs e)
    {
        LblMessage.Text = $"Hi {TxtName.Text} You Are a { DropDownList1.Text}";
    }
</script>

 

 

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

 

    <title></title>
<link href="CSS/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div>
<table class="table w-25">
<tr>
<td>
<asp:Label Text="Enter your Name" runat="server" />
</td>
<td>
<asp:TextBox ID="TxtName" runat ="server"></asp:TextBox>

 

                    </td>

 

                </tr>
<tr>
<td>
<asp:DropDownList ID="DropDownList1" runat="server">
<asp:ListItem>Admin</asp:ListItem>
<asp:ListItem>Employee</asp:ListItem>
<asp:ListItem>Customer</asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="BtnSubmit_Clicked" />
</td>
</tr>
<tr>
<td>
<asp:Label Text="" ID="LblMessage" runat="server" />
</td>
</tr>
</table>
</div>

</form>
</body>
</html>
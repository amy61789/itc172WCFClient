<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrantPage.aspx.cs" Inherits="GrantPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Apply For A Grant</h1>
        <asp:DropDownList ID="GrantsDropDownList" runat="server"></asp:DropDownList>

        <p>Explain why you need the grant: </p>
        <asp:TextBox ID="ExplainTextBox" runat="server"></asp:TextBox>
        <p>Enter the amount: </p>
        <asp:TextBox ID="AmountTextBox" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="GrantButton" runat="server" Text="Submit" OnClick="GrantButton_Click" />
            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>

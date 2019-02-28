<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_oip41acs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
        <asp:Button ID="btnGenerate" runat="server" Text="Generate QR" OnClick="btnGenerate_Click"/>
        <asp:Button ID="btnDecode" runat="server" Text="Save QR" OnClick="btnDecode_Click"/>
        <asp:Button ID="btnSaveQRCode" runat="server" Text="Save QR" OnClick="btnSaveQRCode_Click"/>
        <br /> <br />
        <asp:PlaceHolder ID="PHQRCode" runat="server"></asp:PlaceHolder>
        <br /> <br />
        <asp:Label ID="lblLinkSaveQRCode" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>

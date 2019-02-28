<%@ page language="C#" autoeventwireup="true" inherits="GeneratorAndReadQRCode, App_Web_oip41acs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function previewFile() {
            var preview = document.querySelector('#<%=imgShowImage.ClientID %>');
            var file = document.querySelector('#<%=fuImageQRCode.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
        <asp:Button ID="btnGenerate" runat="server" Text="Generate QR Code" OnClick="btnGenerator_Click"/>
        <hr />
        <asp:Image ID="imgQRCode" Width="150px" Height="150px" runat="server" Visible="false"/>
        <br /> <br />
        <asp:FileUpload ID="fuImageQRCode" runat="server" onchange="previewFile()" />
        <%--<input ID="imgUpload" type="file" name="file" onchange="previewFile()"  runat="server" />--%>
        <br /> <br />
        <asp:Image ID="imgShowImage" runat="server" Height="150px" Width="150px" />
         <br /> <br />
        <asp:Button ID="btnReadQRCdoe" runat="server" Text="Read QR Code" OnClick="btnReadQRCdoe_Click" />
        <br /> <br />
        <asp:Label ID="lblQRCode" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>

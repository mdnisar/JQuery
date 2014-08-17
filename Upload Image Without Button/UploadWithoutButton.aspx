<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UploadWithoutButton.aspx.cs"
    Inherits="GoogleStyleFileUpload_UploadWithoutButton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload without button</title>
    <style>
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>

    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        function UploadFileNow() {
            var value = $("#FileUpload2").val();
            if (value != '') {
                $("#form1").submit();
            }
        };
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>
            Upload file without Submit button</h2>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
        Select file and upload will start automatically
        <p>
            <asp:FileUpload ID="FileUpload2" runat="server" ClientIDMode="Static" onchange="UploadFileNow()" /></p>
    </div>
    <asp:Image ID="imgViewFile" runat="server" Width="200" Height="200" />
    </form>
</body>
</html>

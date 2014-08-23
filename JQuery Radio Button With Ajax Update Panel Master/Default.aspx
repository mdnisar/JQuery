<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="del_jquery_ui_radio_button_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.10.4.custom.js" type="text/javascript"></script>
    <link href="css/smoothness/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {
            $("#rd").buttonset();
        });

        //this line is important if using update panel ###
        var prm = Sys.WebForms.PageRequestManager.getInstance();

        prm.add_endRequest(function () {
            $("#rd").buttonset();
        });
        //###
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <cc1:ModalPopupExtender ID="ModalMsheet" runat="server" BackgroundCssClass="modalBackground"
                    PopupControlID="PnlMsheet" TargetControlID="rd" CancelControlID="btnBack">
                </cc1:ModalPopupExtender>
                <asp:ScriptManager ID="sm" runat="server">
                </asp:ScriptManager>
                <asp:RadioButtonList ID="rd" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="true" Value="1" Text="karnataka"></asp:ListItem>
                    <asp:ListItem Selected="true" Value="2" Text="Andhra Pradesh"></asp:ListItem>
                    <asp:ListItem Selected="true" Value="3" Text="Orissa"></asp:ListItem>
                    <asp:ListItem Selected="true" Value="4" Text="Delhi"></asp:ListItem>
                    <asp:ListItem Selected="true" Value="5" Text="Tamil Nadu"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Panel ID="PnlMsheet" runat="server" BackColor="AliceBlue" Style="padding: 20px;
                    border: 1px solid #333">
                    a<br />
                    <asp:Button ID="btnBack" runat="server" Text="Cancel" Height="25px" Width="109px" />
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>

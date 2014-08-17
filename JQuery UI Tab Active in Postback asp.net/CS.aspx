<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="CS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">

    <script type="text/javascript">
    var selected_tab = 1;
    $(function () {
        var tabs = $("#tabs").tabs({
            select: function (e, i) {
                selected_tab = i.index;
            }
        });
        selected_tab = $("[id$=selected_tab]").val() != "" ? parseInt($("[id$=selected_tab]").val()) : 0;
        tabs.tabs('select', selected_tab);
        $("form").submit(function () {
            $("[id$=selected_tab]").val(selected_tab);
        });
    });
    
    </script>
    
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Tab 1</a></li>
            <li><a href="#tabs-2">Tab 2</a></li>
            <li><a href="#tabs-3">Tab 3</a></li>
        </ul>
        <div id="tabs-1">
            Content 1
        </div>
        <div id="tabs-2">
            Content 2
        </div>
        <div id="tabs-3">
            Content 3
        </div>
    </div>
    <asp:HiddenField ID="selected_tab" runat="server" />
    <asp:Button ID="Button1" runat="server" Text="Do PostBack" />
    </form>
</body>
</html>

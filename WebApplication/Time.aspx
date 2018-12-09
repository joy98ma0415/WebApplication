<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Time.aspx.cs" Inherits="WebApplication.Time" Culture="zh-TW" UICulture="zh-TW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #FFCC99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
            <br />
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
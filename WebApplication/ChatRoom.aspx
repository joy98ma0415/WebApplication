<%@ Page Title="ChatRoom" Language="C#" AutoEventWireup="true" CodeBehind="ChatRoom.aspx.cs" Inherits="WebApplication.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>簡易AJAX聊天室</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            width: 670px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <br />
            <h1 class="auto-style1">聊天室</h1>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="清除聊天內容" />
            &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Go Back Home Page</asp:LinkButton>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="500px" TextMode="MultiLine" Width="800px" ReadOnly="True"></asp:TextBox>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            <br />
            <table border="0" cellpadding="0" cellspacing="0" style="width: 800px">
                <tr>
                    <td style="width: 650px">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                            </Triggers>
                            <ContentTemplate>
                                <table border="0" cellpadding="0" cellspacing="0" style="width: 670px">
                                    <tr>
                                        <td>名字：<asp:TextBox ID="TextBox3" runat="server" Width="207px" BackColor="#00CCFF" Height="25px"></asp:TextBox>
                                            <br />
                                            內容：<asp:TextBox ID="TextBox2" runat="server" Width="500px" BackColor="#00CCFF" Height="25px"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="送出" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
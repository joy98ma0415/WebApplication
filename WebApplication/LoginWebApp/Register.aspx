<%@ Page Title="RegistrationPage" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication.LoginWebApp.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function getWidth() {
            var intViewportWidth = window.innerWidth;
            var w = window.innerWidth;
            var h = window.innerHeight;
            var ow = window.outerWidth; //including toolbars and status bar etc.
            var oh = window.outerHeight;
            if (window.matchMedia("(min-width: 400px)").matches) {
                /* the viewport is at least 400 pixels wide */
            }
            else {
                /* the viewport is less than 400 pixels wide */
            }
            if (self.innerWidth) {

                return self.innerWidth;
            }
            if (document.documentElement && document.documentElement.clientWidth) {
                return document.documentElement.clientWidth;
            }
            if (document.body) {
                return document.body.clientWidth;
            }
        }
    </script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        $(function () {
            // See if this is a touch device
            if ('ontouchstart' in window) {
                // Set the correct body class
                $('body').removeClass('no-touch').addClass('touch');

                // Add the touch toggle to show text
                $('div.boxInner img').click(function () {
                    $(this).closest('.boxInner').toggleClass('touchFocus');
                });
            }
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }

        .auto-style2 {
            height: 60px;
            text-align: center;
            font-size: xx-large;
            background-color: #99FFCC;
            font-family: Corbel;
        }

        .auto-style4 {
            height: 35px;
        }

        .auto-style5 {
            height: 35px;
            text-align: center;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

            *,
            *:before,
            *:after {
                color: #000 !important;
                text-shadow: none !important;
                background: transparent !important;
                -webkit-box-shadow: none !important;
                box-shadow: none !important;
            }
    </style>
    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </asp:Panel>
    <br />
    <br />
    <div>
        <h1 class="textAlign">註冊畫面</h1>
    </div>
    <div>
        <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="6">Create A New Account In ASP.NET WebForm</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style4" colspan="2"></td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="LabelUserName" runat="server" Text="UserName"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="205px" Height="15px"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="205px" Height="15px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="LabelGender0" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:RadioButton ID="RadioButtonMale" runat="server" Text="Male" />
                    &nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:RadioButton ID="RadioButtonFeMale" runat="server" Text="Female" />
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="205px" Height="15px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5" colspan="4">
                    <asp:Button ID="ButtonRegister" runat="server" OnClick="ButtonRegister_Click" Text="Create User" />
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2"></td>
                <td class="auto-style4" colspan="2"></td>
                <td class="auto-style4" colspan="2"></td>
            </tr>
        </table>
    </div>
</asp:Content>
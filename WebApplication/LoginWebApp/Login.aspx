<%@ Page Title="LoginPage" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.LoginWebApp.Login" %>

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
            text-align: center;
            height: 45px;
        }

        .auto-style3 {
            height: 60px;
            text-align: center;
            font-size: xx-large;
            background-color: #99FFCC;
            font-family: Corbel;
        }

        .auto-style4 {
            height: 45px;
        }

        .auto-style5 {
            height: 35px;
            text-align: left;
        }

        .auto-style7 {
            height: 45px;
            text-align: center;
        }
    </style>

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <br />
    <br />
    <br />
    <div>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="6">Login Page In ASP.NET WebForm</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="6"></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="160px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7" colspan="4">
                    <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLinkRegister" runat="server" NavigateUrl="~/LoginWebApp/Registration.aspx">Register</asp:HyperLink>
                    &nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLinkRegister0" runat="server" NavigateUrl="~/LoginWebApp/ChangePassword.aspx">Change Password</asp:HyperLink>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
                <td class="auto-style4" colspan="2">&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
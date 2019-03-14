<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calculate.aspx.cs" Inherits="WebApplication.Calculate" %>

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
        .auto style1 {
            text-align: center;
        }

        .auto-style3 {
            width: 80%;
        }
    </style>

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <h1 class="textAlign">Calculator in ASP.NET</h1>
    </div>
    <div class="textAlign">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
        &nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table align="center" cellpadding="3" cellspacing="4" class="auto-style3">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Number1"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Operator"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Number2"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Equal"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Result"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="TextBoxInNum1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>/</asp:ListItem>
                        <asp:ListItem>%</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxInNum2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="ButtonEnter" runat="server" Text="=" OnClick="ButtonEnter_Click" />
                </td>
                <td>
                    <asp:TextBox ID="TextBoxResult" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
    <div class="textAlign">
    </div>
</asp:Content>
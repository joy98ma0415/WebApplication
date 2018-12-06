<%@ Page Title="第三作品" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="For.aspx.cs" Inherits="WebApplication.For" %>

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

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>

    <div>
        <h1 class="textAlign">For迴圈範例</h1>
    </div>
    <div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="請輸入數字"></asp:TextBox>
        &nbsp;
    <asp:Button ID="ButtonCal" runat="server" Text="計算" OnClick="Button1_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="LblMsg" runat="server"></asp:Label>
    </div>
</asp:Content>
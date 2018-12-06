<%@ Page Title="LoginHomePage" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginHome.aspx.cs" Inherits="WebApplication.LoginWebApp.LoginHome" %>

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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style type="text/css">
        .auto-style1 {
            font-size: small;
        }
    </style>
    <asp:Table ID="HeaderTable" runat="server" BackColor="Plum" Height="85"></asp:Table>
    <div>
        <h1></h1>
    </div>
    <div>
        <h1>
            <asp:Label ID="LabelUserName" runat="server" CssClass="auto-style1" ForeColor="Red"></asp:Label>
        </h1>
        <p>
            <asp:HyperLink ID="HyperLinkBack" runat="server" NavigateUrl="~/Collection1.aspx">Go Back</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1SignOut" runat="server" OnClick="Button1SignOut_Click" Text="Sign Out" />
        </p>
    </div>
</asp:Content>
<%@ Page Title="ContactPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </asp:Panel>
    <br />
    <div class="jumbotron">
        <h1 class="text-center">Contact&nbsp;</h1>
        <p class="lead">&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="50" Width="50" ImageUrl="~/images/icons8-phone-50.png" />
                Mobile Phone</h2>
            <p>
                .
            </p>
            <p>0932139830</p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:ImageButton ID="ImageButton3" runat="server" Height="50" Width="50" ImageUrl="~/images/icons8-email-filled-50.png" />
                Email</h2>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;<a href="mailto:joy51744@gmail.com">joy51744@gmail.com</a>
            </p>
            <p>
                <a href="mailto:misssu1004@gmail.com">misssu1004@gmail.com</a>&nbsp;
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:ImageButton ID="ImageButton4" runat="server" Width="50" Height="50" ImageUrl="~/images/icons8-line-50.png" />
                Line</h2>
            <p>
                &nbsp;
            </p>
            <p>
                &nbsp;ID：joyma840531
            </p>
        </div>
    </div>
</asp:Content>
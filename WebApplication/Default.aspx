<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

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

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="SkyBlue"></asp:Table>
    <br />
    <div class="jumbotron">
        <h1 class="text-center">Welcome to my website.</h1>
        <p class="lead">&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4" style="background-color:#ff95ca">
            <h2>About Me</h2>
            <p>
                .
            </p>
            <p>
                <a class="btn btn-default" href="About">Learn More &raquo;</a>
            </p>
        </div>
        <div class="col-md-4" style="background-color:#ff95ca">
            <h2>Content Me</h2>
            <p>
                &nbsp;
            </p>
            <p>
                <a class="btn btn-default" href="Contact">Learn More &raquo;</a>
            </p>
        </div>
        <div class="col-md-4" style="background-color:#ff95ca">
            <h2>My Collection</h2>
            <p>
                &nbsp;
            </p>
            <p>
                <a class="btn btn-default" href="Collection">Learn More &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
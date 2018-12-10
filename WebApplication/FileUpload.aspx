<%@ Page Title="檔案上傳" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="WebApplication.FileUpload" %>

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
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </asp:Panel>
    <div>
        <h1 class="textAlign">檔案上傳</h1>
    </div>
    <br />
    <div class="textAlign">
        <asp:FileUpload ID="FileUpload1" runat="server" Width="377px" />
        <asp:Button ID="ButtonUpload" runat="server" Text="上傳" OnClick="ButtonUpload_Click" />
        <br />
        <asp:Label ID="LabelMsg" runat="server" Font-Bold="True" Font-Size="18px" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="250" Width="250" />
        <br />
        <br />
    </div>
</asp:Content>
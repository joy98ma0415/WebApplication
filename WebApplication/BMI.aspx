<%@ Page Title="BMI計算" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BMI.aspx.cs" Inherits="WebApplication.BMI" %>

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

    <div>
        <h1 class="textAlign">BMI計算</h1>
    </div>
    <div>
        <asp:Label ID="HeightLbl" runat="server" Text="身高"></asp:Label>
        &nbsp;<asp:TextBox ID="HeightTextBox" runat="server" placeholder="請輸入身高"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="m"></asp:Label>
        &nbsp;<br />
        <br />
        <asp:Label ID="WeightLbl" runat="server" Text="體重"></asp:Label>
        &nbsp;<asp:TextBox ID="WeightTextBox" runat="server" placeholde="請輸入體重"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="kg"></asp:Label>
        <br />
        <br />
        <asp:Button ID="EnterButton" runat="server" Text="Enter" OnClick="EnterBtn_Click" />
        <br />
        <br />
        <br />
                <asp:Label ID="OutputLabelMessage" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelMessage0" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:Label ID="OutputLabelBMI" runat="server"></asp:Label>
        <br />
        <asp:Label ID="OutputLabel評語" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LabelMessage" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
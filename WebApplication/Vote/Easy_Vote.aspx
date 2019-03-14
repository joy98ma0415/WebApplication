<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Easy_Vote.aspx.cs" Inherits="WebApplication.Vote.Easy_Vote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .style1 {
            font-size: small;
        }

        .style2 {
            background-color: #CC99FF;
        }
    </style>

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
    <p>
        <b>簡易投票區 #1 for <span class="style2">Vote_1資料表</span></b>
    </p>
    <p>
        <span class="style1">很簡單的程式，只要會用 「Web控制項」就能作。</span><br class="style1" />
        <span class="style1">投票完成，可以看見開票結果（以「長條圖」來展示）。</span>
    </p>
    <div>

        <b>一年一班 啦啦隊長選舉：<br />
        </b>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>1_李大頭</asp:ListItem>
            <asp:ListItem>2_章小華</asp:ListItem>
            <asp:ListItem>3_胡小滔</asp:ListItem>
            <asp:ListItem>4_馬小九</asp:ListItem>
            <asp:ListItem>5_王大刀</asp:ListItem>
            <asp:ListItem>6_馬顥心</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="ButtonVote" runat="server" Text="Button--我要投票!"
            OnClick="ButtonVote_Click" />

        <br />
    </div>
</asp:Content>
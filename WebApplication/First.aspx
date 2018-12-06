<%@ Page Title="第一作品" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="WebApplication.First" %>

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
        <h1 class="textAlign">資料型別範例 </h1>
    </div>
    <div>
        <asp:Label ID="NameLbl" runat="server" Text="姓名："></asp:Label>
        <asp:TextBox ID="NameTxt" runat="server" placeholder="請輸入姓名" required title="這是必填欄位"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="AgeLbl" runat="server" Text="年齡："></asp:Label>
        <asp:TextBox ID="AgeTxt" runat="server" placeholder="請輸入年齡" required title="這是必填欄位"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="SexLbl" runat="server" Text="性別："></asp:Label>
        <asp:TextBox ID="SexTxt" runat="server" placeholder="請輸入性別" required title="這是必填欄位"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="MarriageLbl" runat="server" Text="婚姻狀態："></asp:Label>
        <asp:TextBox ID="MarriageTxt" runat="server" placeholder="請輸入婚姻狀態" required title="這是必填欄位"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="EnterBtn" runat="server" Text="Enter" OnClick="EnterBtn_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="LblMsg0" runat="server"></asp:Label>
        <%--Name--%>
        <br />
        <asp:Label ID="LblMsg1" runat="server"></asp:Label>
        <%--Age--%>
        <br />
        <asp:Label ID="LblMsg2" runat="server"></asp:Label>
        <%--Sex--%>
        <br />
        <asp:Label ID="LblMsg3" runat="server"></asp:Label>
        <%--Marriage--%>
        <br />
        <asp:Label ID="LblMsg" runat="server"></asp:Label>
        <%--LoginTime--%>
        <br />
        <asp:Label ID="LblMsg4" runat="server"></asp:Label>
        <%--NowTime--%>
        <br />
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000">
        </asp:Timer>
        <br />
        <br />
    </div>
</asp:Content>
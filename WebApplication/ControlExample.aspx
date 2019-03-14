<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ControlExample.aspx.cs" Inherits="WebApplication.ControlExample" %>

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

    <asp:Table ID="TitTbl" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <h1 class="textAlign">Control類型範例</h1>
        <p class="textAlign">&nbsp;</p>
        <table align="center" cellpadding="3" cellspacing="3" style="width: 90%; background-color: #FFFF99">
            <tr>
                <td class="modal-sm" style="width: 359px; height: 40px">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Repeater.aspx">Repeater Control</asp:LinkButton></td>
                <td style="height: 40px">
                    <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/TreeView/TreeView.aspx">TreeView Control</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 359px; height: 40px">
                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/DropDownList.aspx">DropDownList Control</asp:LinkButton></td>
                <td style="height: 40px">
                    <asp:LinkButton ID="LinkButton7" runat="server" PostBackUrl="~/">ListBox Control</asp:LinkButton></td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 359px; height: 40px">
                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/DataList/DataList.aspx">DataList Control</asp:LinkButton></td>
                <td style="height: 40px">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 359px; height: 40px">
                    <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/MultiView.aspx">MultiView Control</asp:LinkButton></td>
                <td style="height: 40px">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 359px; height: 39px">
                    <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/CRUD.aspx">GirdView Control</asp:LinkButton>
                </td>
                <td style="height: 40px">&nbsp;</td>
            </tr>
        </table>
        <br />
        <ul style="margin-left: 110px">
            <li style="line-height: 35px">1.Repeater：如同 DataList 一樣，就是讓我們免除「自己寫迴圈」，就能重複列出資料庫裡面的內容 </li>
            <li style="line-height: 35px">2.DropDownList：下拉式清單</li>
            <li style="line-height: 35px">3.</li>
            <li style="line-height: 35px">4.</li>
            <li style="line-height: 35px">5.</li>
            <li style="line-height: 35px">6.</li>
            <li style="line-height: 35px">7.</li>
        </ul>
    </div>
</asp:Content>
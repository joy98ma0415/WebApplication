<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="WebApplication.MultiView" %>

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
    </div>
    <div>
        <table align="center" style="border: thin solid #008080">
            <tr>
                <td class="style2" style="border-bottom: thin solid #008080; text-align: center; width: 694px;"><span class="style5" style="color: #000000">Multiview Control in ASP.NET </span>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 694px; height: 26px;">
                    <asp:Button ID="ButtonView1" runat="server" Style="font-weight: 700" Text="View1" OnClick="ButtonView1_Click" />
                    <asp:Button ID="ButtonView2" runat="server" Style="font-weight: 700" Text="View2" OnClick="ButtonView2_Click" />
                    <asp:Button ID="ButtonView3" runat="server" Style="font-weight: 700" Text="View3" OnClick="ButtonView3_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 694px">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table align="center" cellpadding="2" style="width: 50%">
                                <tr>
                                    <td class="textAlign" style="height: 40px; font-size: x-large; padding: 20px;">簡短自我介紹</td>
                                </tr>
                                <tr>
                                    <td>大家好，我是馬顥心，畢業於中華科技大學 資訊管理系，在校期間主修ASP.NET和C#程式語言，自己深知還有許多知識要學習和精進，但是請給我一次展現自己的機會，謝謝</td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <table align="center" cellpadding="2" style="width: 50%">
                                <tr>
                                    <td class="textAlign" style="height: 40px; font-size: x-large; padding: 20px;">專長&技能</td>
                                </tr>
                                <tr>
                                    <td>
                                        <ul>
                                            <li>Microsoft Office -- 精通</li>
                                        </ul>
                                        <ul>
                                            <li>Adobe Illustrator -- 普通</li>
                                        </ul>
                                        <ul>
                                            <li>Adobe Photoshop -- 普通</li>
                                        </ul>
                                        <ul>
                                            <li>Adobe Dreamweaver -- 普通</li>
                                        </ul>
                                        <ul>
                                            <li>C# -- 略通</li>
                                        </ul>
                                        <ul>
                                            <li>ASP.NET C# -- 略通</li>
                                        </ul>
                                        <ul>
                                            <li>PHP -- 略通</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table align="center" cellpadding="2" style="width: 50%">
                                <tr>
                                    <td class="textAlign" style="height: 40px; font-size: x-large; padding: 20px;">證照</td>
                                </tr>
                                <tr>
                                    <td>
                                        <ul>
                                            <li>ERP規劃師</li>
                                        </ul>
                                        <ul>
                                            <li>Microsoft MOS</li>
                                        </ul>
                                        <ul>
                                            <li>Adobe Illustrator</li>
                                        </ul>
                                        <ul>
                                            <li>Adobe Premiere</li>
                                        </ul>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
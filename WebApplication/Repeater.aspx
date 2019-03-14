<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="WebApplication.Repeater" %>

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
    <style type="text/css">
        .rptr table {
            background: #eee;
            font: 14px segoe ui;
            border-collapse: collapse;
            width: 25%;
            margin: 5px;
            float: left;
        }

            .rptr table th {
                background: #f90;
                color: #fff;
                padding: 8px 10px;
                text-align: left;
            }

            .rptr table td {
                padding: 5px 10px;
            }
    </style>
    <asp:Table ID="TitleTable" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <h1 class="textAlign">Repeater Control範例</h1>
    </div>
    <br />
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="rptr">
                    <table>
                        <tr>
                            <th>Customer <%#Eval("客戶編號") %></th>
                        </tr>
                        <tr>
                            <td>Customer Name</td>
                            <td><%#Eval("客戶姓名") %></td>
                        </tr>
                        <tr>
                            <td>Customer Gender</td>
                            <td><%#Eval("客戶性別") %></td>
                        </tr>
                        <tr>
                            <td>Customer Birthday</td>
                            <td><%#Eval("客戶生日") %></td>
                        </tr>
                        <tr>
                            <td>Customer PhoneNumber</td>
                            <td><%#Eval("客戶電話") %></td>
                        </tr>
                        <tr>
                            <td>Customer Address</td>
                            <td><%#Eval("客戶地址") %></td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
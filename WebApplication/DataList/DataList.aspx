<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="WebApplication.DataList.DataList" %>

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
        <h1 class="textAlign" style="color: #009900">DataList In ASP.NET</h1>
        <div class="text-left">
            <asp:DataList ID="DataList1" runat="server" GridLines="Both" RepeatDirection="Horizontal" RepeatColumns="3" Width="810px" OnItemCreated="DataList1_ItemCreated" HorizontalAlign="Center">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Width="200" Height="200" ImageUrl='<%# DataBinder.Eval(Container,"DataItem.Image") %>' />
                    <br />
                    Name:<asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Name") %>'></asp:Label>
                    <br />
                    Age:<asp:Label ID="Label2" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Age") %>'></asp:Label>
                    <br />
                    Job Title:<asp:Label ID="Label3" runat="server" Text='<%# DataBinder.Eval(Container,"DataItem.Job Title") %>'></asp:Label>
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
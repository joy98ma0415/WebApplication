<%@ Page Title="圖片CRUD" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ImageCRUD.aspx.cs" Inherits="WebApplication.ImageCRUD.ImageCRUD" %>

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

    <asp:Table ID="TitleTabel" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </asp:Panel>
    <div>
        <h1 class="textAlign">圖片CRUD範例--CRUD image</h1>
    </div>
    <div>
        <asp:Table ID="Table1" runat="server" Height="45">
        </asp:Table>
        <asp:FileUpload ID="FileUpload1" runat="server" Width="566px" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" Width="70px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="14" GridLines="Both" Width="850px">
            <EditItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("path") %>' Width="130px" BorderWidth="2px" />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("path") %>' OnCommand="LinkButton1_Command">Delete</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </div>
</asp:Content>
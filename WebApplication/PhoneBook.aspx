<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PhoneBook.aspx.cs" Inherits="WebApplication.PhoneBook" %>
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
    <link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <center>
            <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="XX-Large" ForeColor="Green" Text="Phone Book In ASP.NET"></asp:Label>
        </center>
        <br />
        <br />
        <table class="table table-hover table-responsive">
            <tr>
                <td>
                    <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxName" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="LabelContact" runat="server" Text="Contact No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxContact" runat="server" MaxLength="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelLocation" runat="server" Text="Location"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxLocation" runat="server" MaxLength="50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add" CssClass="btn btn-default btn-success" />
                </td>
                <td>
                    <asp:Button ID="ButtonUpdate" runat="server" Enabled="false" OnClick="ButtonUpdate_Click" Text="Update" CssClass="btn btn-danger btn-default" />
                </td>
            </tr>
        </table>
    </div>
    <asp:GridView ID="GridViewPhoneBook" runat="server" Class="table table-hover table-responsive">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="PhoneBook.aspx?id={0}&amp;action=1" HeaderText="Delete" Text="Delete" ControlStyle-ForeColor="Red" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="PhoneBook.aspx?id={0}&amp;action=2" HeaderText="Edit" Text="Edit" ControlStyle-ForeColor="Green" />
        </Columns>
    </asp:GridView>
</asp:Content>
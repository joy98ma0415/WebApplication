<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="WebApplication.Attendance" %>

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
    <br />
    <h1 class="textAlign">Attendance System ASP.NET</h1>
    <p class="textAlign">&nbsp;</p>
    <table align="center" cellpadding="3" cellspacing="3" style="border-style: double; border-width: medium; width: 694px; height: 116px; background-color: #FFFF66">
        <tr>
            <td style="height: 58px; width: 307px">select class</td>
            <td style="height: 58px; width: 308px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="145px" DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 58px; width: 307px"></td>
            <td style="height: 58px; width: 308px">
                <asp:Button ID="ButtonAttendance" runat="server" BackColor="#FF9933" Height="35px" Text="Attendance" Width="84px" OnClick="ButtonAttendance_Click" />
            </td>
    </table>
    <p class="textAlign">&nbsp;</p>
    <p class="text-left">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
    <p class="textAlign">&nbsp;</p>
    <p class="text-left">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="rollno" DataSourceID="SqlDataSource2" Width="393px">
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="Roll Number" ReadOnly="True" SortExpression="rollno">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="studentname" HeaderText="Student Name" SortExpression="studentname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Attendance">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" Text="Present" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" Text="Absent" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Right" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </p>
    <p class="text-left">&nbsp;</p>
    <p class="text-left">
        <asp:Button ID="ButtonSave" runat="server" BackColor="#FF9933" Height="39px" Text="Save Attendance" Width="120px" OnClick="ButtonSave_Click" />
    </p>
    <p class="text-left">&nbsp;</p>
    <p class="text-left">
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    <p class="text-left">&nbsp;</p>
    <p class="text-left">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollectionWebApp_dbConnectionString %>" SelectCommand="SELECT DISTINCT [class] FROM [StudentDetail]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CollectionWebApp_dbConnectionString %>" SelectCommand="SELECT [rollno], [studentname] FROM [StudentDetail] WHERE ([class] = @class)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="class" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p class="text-left">&nbsp;</p>
    <p class="text-left">&nbsp;</p>
</asp:Content>
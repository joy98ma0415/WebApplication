<%@ Page Title="第十一作品" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="WebApplication.CRUD" %>

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

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Pink"></asp:Table>

    <div>
        <h1 class="text-center">具備CRUD功能的客戶資料網頁</h1>
    </div>

    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CollectionWebApp_dbConnectionString %>"
            DeleteCommand="DELETE FROM [CRUD] WHERE [客戶編號] = @客戶編號"
            InsertCommand="INSERT INTO [CRUD] ([客戶編號], [客戶姓名], [客戶性別], [客戶生日], [客戶電話], [客戶地址]) VALUES (@客戶編號, @客戶姓名, @客戶性別, @客戶生日, @客戶電話, @客戶地址)"
            SelectCommand="SELECT * FROM [CRUD]"
            UpdateCommand="UPDATE [CRUD] SET [客戶姓名] = @客戶姓名, [客戶性別] = @客戶性別, [客戶生日] = @客戶生日, [客戶電話] = @客戶電話, [客戶地址] = @客戶地址 WHERE [客戶編號] = @客戶編號">
            <DeleteParameters>
                <asp:Parameter Name="客戶編號" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="客戶編號" Type="String" />
                <asp:Parameter Name="客戶姓名" Type="String" />
                <asp:Parameter Name="客戶性別" Type="String" />
                <asp:Parameter DbType="Date" Name="客戶生日" />
                <asp:Parameter Name="客戶電話" Type="String" />
                <asp:Parameter Name="客戶地址" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="客戶姓名" Type="String" />
                <asp:Parameter Name="客戶性別" Type="String" />
                <asp:Parameter DbType="Date" Name="客戶生日" />
                <asp:Parameter Name="客戶電話" Type="String" />
                <asp:Parameter Name="客戶地址" Type="String" />
                <asp:Parameter Name="客戶編號" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="客戶編號" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="445px">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="Black" />
            <Fields>
                <asp:BoundField DataField="客戶編號" HeaderText="客戶編號" ReadOnly="True" SortExpression="客戶編號" />
                <asp:BoundField DataField="客戶姓名" HeaderText="客戶姓名" SortExpression="客戶姓名" />
                <asp:BoundField DataField="客戶性別" HeaderText="客戶性別" SortExpression="客戶性別" />
                <asp:BoundField DataField="客戶生日" HeaderText="客戶生日" SortExpression="客戶生日" />
                <asp:BoundField DataField="客戶電話" HeaderText="客戶電話" SortExpression="客戶電話" />
                <asp:BoundField DataField="客戶地址" HeaderText="客戶地址" SortExpression="客戶地址" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ButtonType="Button" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="客戶編號" DataSourceID="SqlDataSource1" PageSize="5" Width="508px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:BoundField DataField="客戶編號" HeaderText="客戶編號" ReadOnly="True" SortExpression="客戶編號" />
                <asp:BoundField DataField="客戶姓名" HeaderText="客戶姓名" SortExpression="客戶姓名" />
                <asp:BoundField DataField="客戶性別" HeaderText="客戶性別" SortExpression="客戶性別" />
                <asp:BoundField DataField="客戶生日" HeaderText="客戶生日" SortExpression="客戶生日" />
                <asp:BoundField DataField="客戶電話" HeaderText="客戶電話" SortExpression="客戶電話" />
                <asp:BoundField DataField="客戶地址" HeaderText="客戶地址" SortExpression="客戶地址" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
    </div>
</asp:Content>
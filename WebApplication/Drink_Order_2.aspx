<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Drink_Order_2.aspx.cs" Inherits="WebApplication.Drink_Order_2" %>

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
        .auto style1 {
            text-align: center;
        }
    </style>

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <h1 class="textAlign">泡沫紅茶店 Online飲料訂購系統</h1>
        <br />
        客戶名稱：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        客戶電話：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        備&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 註：<asp:TextBox ID="TextBox3" runat="server" Height="50px"
            Width="250px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1_Order" runat="server" Text="==開始訂購==" OnClick="Button1_Order_Click" />
        &nbsp;<asp:Label ID="Label1_order_id" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource_Order_M" runat="server"
            ConnectionString="<%$ ConnectionStrings:CollectionWebApp_dbConnectionString %>"
            InsertCommand="INSERT INTO [Drink_Order_M] ([order_time], [user_name], [user_phone], [memo]) VALUES (getdate(), @user_name, @user_phone, @memo)" OnInserted="SqlDataSource_Order_M_Inserted">
            <InsertParameters>
                <asp:Parameter Name="order_time" Type="DateTime" />
                <asp:ControlParameter ControlID="TextBox1" Name="user_name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="user_phone" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="memo" PropertyName="Text" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <hr />
        &nbsp;&nbsp;&nbsp;<br />
        <b>
            <span class="style6">飲料：

    <asp:DropDownList ID="DropDownList1" runat="server"
        DataSourceID="SqlDataSource_Drink" DataTextField="drink_name"
        DataValueField="id"
        OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        AutoPostBack="True">
    </asp:DropDownList>
            </span>
            <asp:SqlDataSource ID="SqlDataSource_Drink" runat="server"
                ConnectionString="<%$ ConnectionStrings:CollectionWebApp_dbConnectionString %>"
                SelectCommand="SELECT [id], [drink_name] FROM [Drink_Product]"></asp:SqlDataSource>
            &nbsp;&nbsp;

    <span class="style6">
        <asp:Label ID="Label2_drink_name" runat="server" ForeColor="Blue"></asp:Label>
        &nbsp;&nbsp; / &nbsp;

    <asp:TextBox ID="TextBox4_no" runat="server" Width="50px"></asp:TextBox>杯
    &nbsp;&nbsp;&nbsp;

    <asp:DropDownList ID="DropDownList2_ice" runat="server">
        <asp:ListItem Value="去冰" Selected="True">去冰</asp:ListItem>
        <asp:ListItem Value="少冰">少冰</asp:ListItem>
        <asp:ListItem Value="溫">溫</asp:ListItem>
        <asp:ListItem Value="熱">熱</asp:ListItem>
    </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList3_sweet" runat="server">
        <asp:ListItem Value="無糖" Selected="True">無糖</asp:ListItem>
        <asp:ListItem Value="少糖">少糖</asp:ListItem>
        <asp:ListItem Value="半糖">半糖</asp:ListItem>
        <asp:ListItem Value="全糖">全糖</asp:ListItem>
    </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2_Drink" runat="server" Text="輸入飲料與種類"
        OnClick="Button2_Drink_Click" />
        </b>
        <br />
        </span>

    &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource_Order_D" runat="server" OnInserted="SqlDataSource_Order_D_Inserted"
        ConnectionString="<%$ ConnectionStrings:CollectionWebApp_dbConnectionString %>"
        InsertCommand="INSERT INTO [Drink_Order_D] ([order_id], [drink_id], [drink_name], [ice_degree], [sweet_degree], [drink_no]) VALUES (@order_id, @drink_id, @drink_name, @ice_degree, @sweet_degree, @drink_no)"
        DeleteCommand="DELETE FROM [Drink_Order_D] WHERE [id] = @id"
        SelectCommand="SELECT * FROM [Drink_Order_D] WHERE ([order_id] = @order_id)">
        <SelectParameters>
            <asp:SessionParameter Name="order_id" SessionField="order_m_id" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="order_id" SessionField="order_m_id" />
            <asp:ControlParameter ControlID="DropDownList1" Name="drink_id"
                PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="Label2_drink_name" Name="drink_name"
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2_ice" Name="ice_degree"
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3_sweet" Name="sweet_degree" PropertyName="SelectedValue"
                Type="String" />
            <asp:ControlParameter ControlID="TextBox4_no" Name="drink_no" PropertyName="Text"
                Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
        <hr />
        <b>&lt;明細表&gt;&nbsp; <span class="style7">搭配 SqlDatasource_Oder_D</span></b><br />
        &nbsp;&nbsp;

    <asp:GridView ID="GridView1" runat="server" CellPadding="3"
        GridLines="Horizontal" AutoGenerateColumns="False"
        Style="font-size: small" DataSourceID="SqlDataSource_Order_D"
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" DataKeyNames="id" Width="498px">
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="飲料id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="drink_name" HeaderText="飲料名稱" SortExpression="drink_name" />
            <asp:BoundField DataField="ice_degree" HeaderText="冰量" SortExpression="ice_degree" />
            <asp:BoundField DataField="sweet_degree" HeaderText="糖度" SortExpression="sweet_degree" />
            <asp:BoundField DataField="drink_no" HeaderText="數量" SortExpression="drink_no" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>

        <br />

        <br />
        <asp:Button ID="Button3_End" runat="server"
            Text="完成此訂單，結案！" />
    </div>
</asp:Content>
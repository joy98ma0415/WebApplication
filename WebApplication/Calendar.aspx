<%@ Page Title="行事曆" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="WebApplication.Calendar" %>

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
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br /><br />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </asp:Panel>

    <div>
        <h1 class="textAlign">行事曆</h1>
    </div>

    <div>
        <br />
        年：<asp:DropDownList ID="DropDownList1" runat="server" Width="60px">
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2009</asp:ListItem>
            <asp:ListItem>2008</asp:ListItem>
            <asp:ListItem>2007</asp:ListItem>
            <asp:ListItem>2006</asp:ListItem>
            <asp:ListItem>2005</asp:ListItem>
            <asp:ListItem>2004</asp:ListItem>
            <asp:ListItem>2003</asp:ListItem>
            <asp:ListItem>2002</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp; /&nbsp;&nbsp;
            月：<asp:DropDownList ID="DropDownList2" runat="server" Width="60px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" Style="height: 26px" />
        &nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Caption="月曆" CaptionAlign="Top" DayNameFormat="Shortest" Font-Names="Comic Sans MS" Font-Size="16px" ForeColor="#663399" Height="320px" OnDayRender="Calendar1_DayRender" SelectionMode="DayWeek" ShowGridLines="True" Width="808px" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" BorderColor="#FFCC99" BorderWidth="2pt" HorizontalAlign="Center" CssClass=".auto style1" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Names="Calibri" Font-Size="16pt" ForeColor="#FFFFCC" Height="1px" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
        <asp:Label ID="Label1" runat="server" Text="您選的日期是："></asp:Label>
        <asp:Label ID="LblMsg" runat="server"></asp:Label>
        <br />
    </div>
</asp:Content>
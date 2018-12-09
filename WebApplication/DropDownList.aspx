<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DropDownList.aspx.cs" Inherits="WebApplication.DropDownList" %>

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
        <h1 class="textAlign">DropDownList範例</h1>
    </div>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ToolTip="網頁技術介紹" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">請選擇</asp:ListItem>
            <asp:ListItem Value="HTML">HTML</asp:ListItem>
            <asp:ListItem Value="CSS">CSS</asp:ListItem>
            <asp:ListItem Value="JavaScript">JavaScript</asp:ListItem>
            <asp:ListItem Value="Aspnet">Asp.Net for C#</asp:ListItem>
            <asp:ListItem Value="PHP">PHP</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Panel ID="panelChoose" runat="server">
        </asp:Panel>
        <asp:Panel ID="panelHTML" runat="server" BorderWidth="1px" GroupingText="HTML" Height="100px" ScrollBars="Auto" Width="300px">
            <asp:Label ID="LabelHTML" runat="server" Text="HTML介紹" ForeColor="Blue"></asp:Label>
            <br />
            <asp:Label ID="LabelHTMLInd" runat="server" Text="是一種用於建立網頁的標準標示語言。HTML是一種基礎技術，常與CSS、JavaScript一起被眾多網站用於設計令人賞心悅目的網頁、網頁應用程式以及行動應用程式的使用者介面。網頁瀏覽器可以讀取HTML檔案，並將其彩現成視覺化網頁。HTML描述了一個網站的結構語意隨著線索的呈現，使之成為一種標示語言而非程式語言。 "></asp:Label>
        </asp:Panel>
        <asp:Panel ID="PanelCSS" runat="server" BorderWidth="1px" GroupingText="CSS" Height="100px" ScrollBars="Auto" Width="300px">
            <asp:Label ID="LabelCSS" runat="server" Text="CSS介紹" ForeColor="Blue"></asp:Label>
            <br />
            <asp:Label ID="LabelCSSInd" runat="server" Text="CSS是一種用來為結構化文件（如HTML文件或XML應用）添加樣式（字型、間距和顏色等）的電腦語言，由W3C定義和維護。目前最新版本是CSS2.1，為W3C的推薦標準。CSS3現在已被大部分現代瀏覽器支援，而下一版的CSS4仍在開發中。 "></asp:Label>
        </asp:Panel>
        <asp:Panel ID="PanelJavaScript" runat="server" BorderWidth="1px" GroupingText="JavaScript" Height="100px" ScrollBars="Auto" Width="300px">
            <asp:Label ID="LabelJavaScript" runat="server" Text="JavaScript介紹" ForeColor="Blue"></asp:Label>
            <br />
            <asp:Label ID="LabelJavaScriptInd" runat="server" Text="通常縮寫為JS，是一種進階的，解釋執行的程式語言。JavaScript是一門基於原型、函式先行的語言，是一門多範式的語言，它支援物件導向編程，指令式程式設計，以及函數語言程式設計。它已經由ECMA（歐洲電腦製造商協會）通過ECMAScript實現語言的標準化。它被世界上的絕大多數網站所使用，也被世界主流瀏覽器支援。"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="PanelAspnet" runat="server" BorderWidth="1px" GroupingText="ASP.NET" Height="100px" ScrollBars="Auto" Width="300px">
            <asp:Label ID="LabelAspnet" runat="server" Text="ASP.NET介紹" ForeColor="Blue"></asp:Label>
            <br />
            <asp:Label ID="LabelAspnetInd" runat="server" Text="ASP.NET是由微軟在.NET Framework框架中所提供，開發Web應用程式的類別庫，封裝在System.Web.dll檔案中，顯露出System.Web命名空間，並提供ASP.NET網頁處理、擴充以及HTTP通道的應用程式與通訊處理等工作，以及Web Service的基礎架構。ASP.NET是ASP技術的後繼者，但它的發展性要比ASP技術要強大許多。"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="PanelPHP" runat="server" BorderWidth="1px" GroupingText="PHP" Height="100px" ScrollBars="Auto" Width="300px">
            <asp:Label ID="Label5" runat="server" Text="PHP介紹" ForeColor="Blue"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="是開源的通用電腦手稿語言，尤其適用於網路開發並可嵌入HTML中使用。PHP的語法借鑑吸收C語言、Java和Perl等流行電腦語言的特點，易於一般程式設計師學習。PHP的主要目標是允許網路開發人員快速編寫動態頁面，但PHP也被用於其他很多領域。"></asp:Label>
        </asp:Panel>
    </div>
</asp:Content>
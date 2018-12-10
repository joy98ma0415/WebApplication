<%@ Page Title="AboutPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
    </asp:Panel>
    <br />
    <br />
    <table class="col-md-12" style="width: 100%; background-image: url('images/5-120601094P5-50.gif');">

        <tr>
            <h1 style="border-style: groove; border-width: inherit; border-color: #808000; font-family: 標楷體; color: #800000; text-decoration: underline" class="text-center">我的自傳</h1>
            <h2 style="font-family: 標楷體">大家好：</h2>
            <h4 style="font-family: 標楷體">我是馬顥心，畢業於中華科技大學 資訊管理系，在校的四年裡，我不斷充實自己，全面發展，以銳意進取和踏實誠信的作風及表現贏得了老師和同學的信任和讚譽。</h4>
            <h4 style="font-family: 標楷體">從小對電腦就有美麗的憧憬，加上興趣的趨使下，選擇育達高職 資料處理科來修業，三年來的學習讓我對各項軟體的應用有相當程度的體會與認識。
                            育達高職畢業後，考上 中華科技大學 資訊管理系，大學期間因課程的安排接觸到了數位內容學程，其中的電腦繪畫和網頁設計深深吸引了我，除了電腦知識外，還須結合大量美學，這個發現讓我確認了未來發展之路。</h4>
            <h4 style="font-family: 標楷體">在未踏入大學生活前的暑假，我曾到朱江圖書股份有限公司打工，雖然只是一個小小的工讀生，但讓從未接觸過圖書業的我對圖書業的作業流程有了一定的認識和了解。</h4>
            <h4 style="font-family: 標楷體">因為早就確認要把資訊相關領域作為自己未來的發展方向，所以在學期間積極的進修有關電腦繪畫和網頁程式和軟體程式的課程，學習過Adobe Illustrator、Adobe Photoshop、ASP.NET、HTML+CSS、PHP+MySQL和C#。</h4>
            <h4 style="font-family: 標楷體">我的反應快，在資訊這個一日千里的產業中，可跟得上變化；我主動積極，對不懂的事務有強烈的求知欲；這些都有助於我在職場中學習、發展。</h4>
            <h4 style="font-family: 標楷體">將職業結合興趣，才能更投入、走得更長遠，網頁程式設計師是我一直以來夢想的職業；久聞貴公司培訓制度完善，鼓勵員工進修，我相信在這樣的環境中必能一步一腳印，紮實學習打好根基，同時發揮我的長處，在這個產業中一展抱負。</h4>
            <h4 style="font-family: 標楷體">我雖然是一個新手，但我的主動積極與對這個行業的熱愛，會讓我快速學習，奠定紮實的基礎，並不斷吸收新知，努力取得相關證照，結合美學與資訊，朝著自己的目標一步步的前進。</h4>
            <h4 style="font-family: 標楷體">任何工作都得從基礎做起，因此短期之內，我希望充實自己更多相關知識，儘速熟悉相關的程式語言；中期希望期待累積實務經驗，同時不斷自我進修，加強專業能力，讓自己更具競爭力；長期希望在五年之內能夠在目前申請的這個職位上沉澱下來，通過不斷的努力後，最好能有幾次晉陞，希望可以從資訊助理做到資訊部門的小主管。</h4>
            <h4 style="font-family: 標楷體">我明白要擔任好一名程式設計師，並不是件輕而易舉的事；但面對工作，我擁有堅定的心智與絕對的熱忱，我相信我能做到，也希望貴公司賦予我證明自己的機會。</h4>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </tr>
    </table>
</asp:Content>
<%@ Page Title="ASP.NET作品集" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection1.aspx.cs" Inherits="WebApplication.Collection1" %>

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

    <h1 class="text-center">我的ASP.NET作品集</h1>
    <br />
    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Img" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Six</h1>
            <h3>第六個ASP.NET網頁</h3>
            <h3 class="text-right">-登入系統網頁版-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="LoginWebApp/Login.aspx">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>

    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image1" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Seven</h1>
            <h3>第七個ASP.NET網頁</h3>
            <h3 class="text-right">-利用ListView顯示資料網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="ListView">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>

    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image2" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Eight</h1>
            <h3>第八個ASP.NET網頁</h3>
            <h3 class="text-right">-圖片輪播網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="img/ImageSlideShow.aspx">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>

    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image3" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Nine</h1>
            <h3>第九個ASP.NET網頁</h3>
            <h3 class="text-right">-寄送Email網頁版-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="#">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>

    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image4" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/" />
        </div>
        <div class="col-md-5">
            <h1>Project Ten</h1>
            <h3>第十個ASP.NET網頁</h3>
            <h3 class="text-right">-Repeater Control顯示資料網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="#">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>

    <!-- Pagination -->
    <div class="textAlign">
        <ul class="pagination justify-content-center" style="width: 479px; margin-left: 370px">
            <li class="page-item">
                <a class="page-link" href="Collection" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collection">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collection1">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collection2">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collectio2" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </div>
</asp:Content>
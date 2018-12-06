<%@ Page Title="ASP.NET作品集" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection.aspx.cs" Inherits="WebApplication.Collection" %>

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

    <h1 class="text-center">我的ASP.NET作品集</h1>
    <br />
    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="FirstImg" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/01.png" />
        </div>
        <div class="col-md-5">
            <h1>Project One</h1>
            <h3>第一個ASP.NET網頁</h3>
            <h3 class="text-right">-資料型別範例網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="First">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>
    <!-- Project Two -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image1" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/BMI.png" />
        </div>
        <div class="col-md-5">
            <h1>Project Two</h1>
            <h3>第二個ASP.NET網頁</h3>
            <h3 class="text-right">-BMI計算網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="BMI">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>
    <!-- Project Three -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image2" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/For.png" />
        </div>
        <div class="col-md-5">
            <h1>Project Three</h1>
            <h3>第三個ASP.NET網頁</h3>
            <h3 class="text-right">-For迴圈網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="For">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>
    <!-- Project Four -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Image3" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/" />
        </div>
        <div class="col-md-5">
            <h1>Project Four</h1>
            <h3>第四個ASP.NET網頁</h3>
            <h3 class="text-right">-個人行事曆網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="Calendar">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>
    <!-- Project Five -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="CRUDImg" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/" />
        </div>
        <div class="col-md-5">
            <h1>Project Five</h1>
            <h3>第五個ASP.NET網頁</h3>
            <h3 class="text-right">-檔案上傳網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="FileUpload.aspx">View Project</a>
        </div>
    </div>
    <!-- /.row -->
    <hr>
    <!-- Pagination -->
    <div class="textAlign">
        <ul class="pagination justify-content-center" style="width: 479px; margin-left: 370px">
            <li>
                <a class="page-link" href="Collection">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collection1">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collectio2">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="Collection1" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </div>
</asp:Content>
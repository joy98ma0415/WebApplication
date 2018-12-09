<%@ Page Title="ASP.NET作品集" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Collection2.aspx.cs" Inherits="WebApplication.Collection2" %>

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

    <h1 class="text-center">我的作品集</h1>
    <br />
    <!-- Project One -->
    <div class="row">
        <div class="col-md-7">
            <asp:Image ID="Img" runat="server" Height="150" Width="300" Style="margin-top: 10px" ImageUrl="~/images/CRUD.png" />
        </div>
        <div class="col-md-5">
            <h1>Project Eleven</h1>
            <h3>第十一個ASP.NET網頁</h3>
            <h3 class="text-right">-具備CRUD功能客戶資料網頁-</h3>
            <br />
            <br />
            <a class="btn btn-primary" href="CRUD.aspx">View Project</a>
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
            <h1>Project Twelve</h1>
            <h3>第十二個ASP.NET網頁</h3>
            <h3 class="text-right">-網頁-</h3>
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
            <asp:Image ID="Image2" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Thirteen</h1>
            <h3>第十三個ASP.NET網頁</h3>
            <h3 class="text-right">-網頁-</h3>
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
            <asp:Image ID="Image3" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Fourteen</h1>
            <h3>第十四個ASP.NET網頁</h3>
            <h3 class="text-right">-網頁-</h3>
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
            <asp:Image ID="Image4" runat="server" Height="150" Width="300" Style="margin-top: 10px" />
        </div>
        <div class="col-md-5">
            <h1>Project Fifteen</h1>
            <h3>第十五個ASP.NET網頁</h3>
            <h3 class="text-right">-網頁-</h3>
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
                <a class="page-link" href="Collection1" aria-label="Previous">
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
        </ul>
    </div>
</asp:Content>
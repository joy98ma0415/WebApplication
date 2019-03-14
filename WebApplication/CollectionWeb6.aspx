<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CollectionWeb6.aspx.cs" Inherits="WebApplication.CollectionWeb6" %>

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
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/01/div.html">
                    <img class="card-img-top" src="images/HTML01.png" alt="" width="400" height="200"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/01/div.html">Project One</a>
                    </h4>
                    <p class="card-text">這是我的第一個網頁，利用DIV完成單欄式網頁排版設計</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/02/">
                    <img class="card-img-top" src="images/HTML02.png" alt="" width="400" height="200"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/02/">Project Two</a>
                    </h4>
                    <p class="card-text">這是我的第二個網頁，利用DIV完成二欄式網頁排版設計</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/03/">
                    <img class="card-img-top" src="images/HTML03.png" alt="" width="400" height="200"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/03/">Project Three</a>
                    </h4>
                    <p class="card-text">這是我的第三個網頁，利用 DIV 完成三欄式網頁排版設計</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/04/">
                    <img class="card-img-top" src="images/HTML04.png" alt="" width="400" height="200"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/04/">Project Four</a>
                    </h4>
                    <p class="card-text">這是我的第四個網頁，利用html製作login畫面</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/2013_Website/table_resume.html">
                    <img class="card-img-top" src="images/HTML05.png" alt="" width="400" height="200"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/2013_Website/table_resume.html">Project Five</a>
                    </h4>
                    <p class="card-text">這是我的第五個網頁，利用table製作個人資料表</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/2013_Website/resume.html">
                    <img class="card-img-top" src="images/HTML06.png" alt="" width="400" height="200"></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="https://ynnsqucvqrvscaczlr9rgw-on.drv.tw/2013_Website/resume.html">Project Six</a>
                    </h4>
                    <p class="card-text">這是我的第六個網頁，利用html+css製作個人履歷表</p>
                </div>
            </div>
        </div>
    </div>

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
                <a class="page-link" href="CollectionWeb1">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="CollectionWeb2">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="CollectionWeb3">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="CollectionWeb4">4</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="CollectionWeb5">5</a>
            </li>
        </ul>
    </div>
</asp:Content>
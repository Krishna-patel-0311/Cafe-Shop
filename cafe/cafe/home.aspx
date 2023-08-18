<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="cafe.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

    <%--carousel--%>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="images/sl2.png" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/sl3.png" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/sl4.png" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <%--About--%>

    <div class="container mt-4">
        <div class="jumbotron" style="background-color: #272b2f;">
            <div class="container">
                <h1 class="display-4 mb-3" style="color: red">Hello,
                    <asp:Label ID="lb_name" runat="server"></asp:Label></h1>
                <p style="color: white">MCafe has been successfully owned and operated since 2022 and welcomes you to drop by and join the locals in our fun and friendly atmosphere.</p>
                <p style="color: white">Our goal is to offer great food at a reasonable price while maintaining great quality and service.</p>
                <p><a class="btn btn-success btn-lg" href="Aboutus.aspx" role="button">About Us &raquo;</a></p>
            </div>
        </div>
    </div>

    <%--Chef--%>

    <div class="bg-dark text-uppercase py-4 mt-5 mb-5">
        <h2 style="text-align: center"><b style="color: orange">Our Chef</b></h2>
    </div>

    <div class="mb-5">
        <div class="text-bg-darkme-md-4 text-center">
            <div class="my-1 py-1">
                <h2 class="display-5" style="color: white">MASTER CHEF</h2>
                <p class="lead" style="color: white">JOHN STEFF</p>
            </div>
            <div class="bg-light shadow-sm mx-auto" style="width: 348px; height: 417px;">
                <img src="images/chef1.png" />
            </div>
        </div>
    </div>

    <%--Our Food--%>

    <div class="bg-dark text-uppercase py-4 mb-5">
        <h2 style="text-align: center"><b style="color: orange">Our Foods </b></h2>
    </div>

    <div class="container">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-90" style="background-color: #272b2f">
                    <img src="images/c1.jpg" class="card-img-top"
                        alt="Skyscrapers" />
                    <div class="card-body">
                        <h5 class="card-title" style="color: white"><b>Burger</b></h5>
                        <p class="card-text" style="color: white">Eat clean, stay fit, and have a burger to stay sane.</p>
                        <%--<a href="#" class="btn btn-success">Explore</a>--%>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-90" style="background-color: #272b2f">
                    <img src="images/c2.jpg" class="card-img-top"
                        alt="Los Angeles Skyscrapers" />
                    <div class="card-body">
                        <h5 class="card-title" style="color: white"><b>Pizza</b></h5>
                        <p class="card-text" style="color: white">Keep your friends close and your pizza closer.</p>
                        <%--<a href="#" class="btn btn-success">Explore</a>--%>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-90" style="background-color: #272b2f">
                    <img src="images/c3.jpg" class="card-img-top"
                        alt="Palm Springs Road" />
                    <div class="card-body">
                        <h5 class="card-title" style="color: white">Coffee</h5>
                        <p class="card-text" style="color: white">With enough coffee, You could rule the world</p>
                        <%-- <a href="#" class="btn btn-success">Explore</a>--%>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="container mt-4 mb-1">
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <div class="col">
                <div class="card h-90" style="background-color: #272b2f">
                    <img src="images/c4.jpg" class="card-img-top"
                        alt="Skyscrapers" />
                    <div class="card-body">
                        <h5 class="card-title" style="color: white"><b>Cold Coffee and Drink</b></h5>
                        <p class="card-text" style="color: white">When it's hot, it's time for a cold coofee and drink.</p>
                        <%--<a href="#" class="btn btn-success">Explore</a>--%>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-90" style="background-color: #272b2f">
                    <img src="images/c5.jpg" class="card-img-top"
                        alt="Los Angeles Skyscrapers" />
                    <div class="card-body">
                        <h5 class="card-title" style="color: white"><b>Sweet</b></h5>
                        <p class="card-text" style="color: white">You can’t buy happiness, but you can buy sweets and that’s kind of the same thing.</p>
                        <%--<a href="#" class="btn btn-success">Explore</a>--%>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-90" style="background-color: #272b2f">
                    <img src="images/c6.jpg" class="card-img-top"
                        alt="Palm Springs Road" />
                    <div class="card-body">
                        <h5 class="card-title" style="color: white">Fries</h5>
                        <p class="card-text" style="color: white">Life is uncertain, but fries are always a sure thing.</p>
                        <%--<a href="#" class="btn btn-success">Explore</a>--%>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <%--Servive--%>

    <div class="bg-dark text-uppercase py-4 mt-5">
        <h2 style="text-align: center"><b style="color: orange">Our Services </b></h2>
    </div>

    <div class=" mb-2 p-5">
        <div class="text-center">
            <%--<h2 class="section-heading text-uppercase py-4 mb-4" style="color:black">Services</h2>--%>
        </div>
        <div class="row text-center">
            <div class="col-md-3 mb-4">
                <span class="fa-stack fa-4x">
                    <img src="images/247-support.png" style="width: 100px; height: 100px" />
                </span>
                <h4 class="my-3 text-dark text-uppercase mt-4">24/7 Services</h4>
            </div>
            <div class="col-md-3 mb-4">
                <span class="fa-stack fa-4x">
                    <img src="images/online-order.png" style="width: 100px; height: 100px" />

                </span>
                <h4 class="my-3 text-dark text-uppercase mt-4">Order Online</h4>

            </div>
            <div class="col-md-3 mb-4">
                <span class="fa-stack fa-4x">
                    <img src="images/best-seller.png" style="width: 100px; height: 100px" />
                </span>
                <h4 class="my-3 text-dark text-uppercase mt-4">Quality Food</h4>
            </div>

            <div class="col-md-3 mb-4">
                <span class="fa-stack fa-4x">
                    <img src="images/serving-food.png" style="width: 100px; height: 100px" />
                </span>
                <h4 class="my-3 text-dark text-uppercase mt-4">Fast Service</h4>
            </div>
        </div>
    </div>
</asp:Content>

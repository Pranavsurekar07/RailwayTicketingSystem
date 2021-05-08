<%@ Page Title="Railway Ticketing Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <script src="https://ajax.googleapes.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--- Carousel -->

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <div class="item active" id="slider1">
                <img src="Images/slide1.jpg" alt="..." aria-setsize="150" />
                <div class="carousel-caption">
                    <h2>Welcome to Indian Railway</h2>

                    <p><a class="btn btn-lg btn-primary" href="register.aspx" role="button">Register Today</a></p>
                </div>
            </div>
            <div class="item" id="slider2">
                <img src="Images/slider2.jpg" alt="..." />
                <div class="carousel-caption">
                </div>
            </div>

            <div class="item" id="slider3">
                <img src="Images/slide3.jpg" alt="..." />
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item" id="slider4">
                <img src="Images/slide4.jpg" alt="..." />
                <div class="carousel-caption">
                </div>
            </div>
            <div class="item" id="slider5">
                <img src="Images/slide5.jpg" alt="..." />
                <div class="carousel-caption">
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>




    <!--- Middle Contents -->
    <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="Images/Alco_in_Jessore.jpg" alt="thumb01" width="140" height="140" />

                <p>
                    <span style="padding-left: 2px; color: #2089FF; font-weight: bold; font-size: 16px;">Indian Railways</span>
                    is one of the biggest rail network in the world. It provides comfortable journey for passengers through out India.
				Every day Indian Railways sells millions of railway tickets to millions of passengers.
				Considering the number of booking counters available and the long queues at the booking counters, 
				it takes a lot of time for the passenger to get a railway ticket reserved or canceled.
				The time consuming process of reservation and cancellation is reduced with the website which provides details 
				about all the trains, reservations of train ticket, cancellations of train ticket and some more features as an one step process.
                </p>

            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="Images/expresstrain.jpg" alt="thumb02" width="140" height="140" />

                <p>
                    <span style="padding-left: 2px; color: #2089FF; font-weight: bold; font-size: 16px;">Express Railways</span>
                    Mail/Express trains are Regular Express rail services of India. Express trains make a small number of stops, unlike Passenger/Local trains. In some cases, trains run express where there is overlapping local train service available, and run local at the tail ends of the line, where there is no supplemental local service. Because of their limited stops, these trains are able to obtain the highest speeds of any trains in India.

An express train is one where the average speed, excluding halts, is greater than 36 km/h. Including halts the speed may sometimes fall into the region of around 20 km/h for express trains.

The Duronto Express trains introduced in 2009 (which run between major cities without any intermediate halts) are projected to be the fastest trains in India when new services are introduced with a higher speed limit of 120–130 km/h. Despite being limited to a lower speed limit, they take as much time as a Rajdhani or Shatabdi on the same route, courtesy the non-stop nature of their journey. Rajdhani Express which was introduced in 1969 to connect New Delhi with the state capitals in India, travels at speeds up to 130 km/h.
                </p>

            </div>
            <div class="col-lg-4">
                <img class="img-circle" src="Images/superfast.jpg" alt="thumb03" width="140" height="140" />

                <p>
                    Superfast Mail/Express trains are express rail services of the Indian Railways. They make few stops, unlike other Mail/Express trains, achieving somewhat shorter journey times. Tickets cost more than Mail/Express rates. As of 2015, 450 pairs of Superfast trains ran on the Indian Railways. The 12908/Maharashtra Sampark Kranti Express (NZM/Hazrat Nizamuddin - BDTS/Bandra Terminus) is the fastest non-Shatabdi, non-Rajdhani Mail/Express train in India.

In some cases, trains run Superfast where there is an overlapping Mail/Express service available, and run regular Mail/Express trains where there is no supplementary Mail/Express service.

Trains with an average speed, excluding halts, equalling or exceeding 55 kilometres per hour (34 mph) (60 kilometres per hour (37 mph) until the early 1990s) on both up and down journeys fall into the Superfast category and are numbered with a prefix of 12 or 22 or 20 (previously 2). Including halts (both revenue and scheduled technical halts) the average speed often is below 55 km/h.

Increased stops for various reasons led to a significant reduction in average speed of many trains, despite improvements in track and haulage.
                </p>

            </div>
        </div>
    </div>
    <!--- Middle Contents -->

    <!--- Carousel -->
</asp:Content>


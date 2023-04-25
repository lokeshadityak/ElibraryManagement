<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ElibraryManagement.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-color:aliceblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section><img src="web/img/home-bg.jpg" class="img-fluid"/></section>
    
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12" style="text-align:center">
                    <h4 >Our Features</h4>
                    <h6 >3 Primary Features</h6>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 ">
                    <center>
                        <img src="web/img/digital-inventory.png" width="150px"/>
                        <h6>Digital Book Inventry</h6>
                        <p class="text-justify">There are a number of factors that can affect how quickly the browser is able to load and render a web page, and blockage or delays across any of them can have a significant impact on LCP.</p>
                    </center>
                </div>
                <div class="col-md-4 ">
                    <center>
                        <img src="web/img/search-online.png"  width="150px"/>
                        <h6>Online Book Search</h6>
                        <p class="text-justify">There are a number of factors that can affect how quickly the browser is able to load and render a web page, and blockage or delays across any of them can have a significant impact on LCP.</p>
                    </center>
                </div>
                <div class="col-md-4 ">
                    <center>
                        <img src="web/img/defaulters-list.png" width="150px"/>
                        <h6>Digital Book Inventry</h6>
                        <p class="text-justify">There are a number of factors that can affect how quickly the browser is able to load and render a web page, and blockage or delays across any of them can have a significant impact on LCP.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <section class="mt-1"><img src="web/img/in-homepage-banner.jpg" class="img-fluid"/></section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12" style="text-align:center">
                    <h4 >Our Process</h4>
                    <h6 >Simple 3 Steps Process</h6>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 ">
                    <center>
                        <img src="web/img/sign-up.png" width="150px"/>
                        <h6>SignUp</h6>
                        <p class="text-justify">There are a number of factors that can affect how quickly the browser is able to load and render a web page, and blockage or delays across any of them can have a significant impact on LCP.</p>
                    </center>
                </div>
                <div class="col-md-4 ">
                    <center>
                        <img src="web/img/search-online.png"  width="150px"/>
                        <h6>Online Book Search</h6>
                        <p class="text-justify">There are a number of factors that can affect how quickly the browser is able to load and render a web page, and blockage or delays across any of them can have a significant impact on LCP.</p>
                    </center>
                </div>
                <div class="col-md-4 ">
                    <center>
                        <img src="web/img/library.png" width="150px"/>
                        <h6>Visit Us</h6>
                        <p class="text-justify">There are a number of factors that can affect how quickly the browser is able to load and render a web page, and blockage or delays across any of them can have a significant impact on LCP.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

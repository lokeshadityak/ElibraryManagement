<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookissueing.aspx.cs" Inherits="ElibraryManagement.bookissueing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card ">
                    <center>
                        <h5>Book Issuing</h5>
                        <img src="web/img/books.png" alt="Card image cap" width="70px" />
                        <hr />
                        <div class="card-body">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Go" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly="True" placeholder="Member Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="True" placeholder="Book Name"></asp:TextBox>
                                    </div>
                                </div>

                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6">
                                    <p>Start Date</p>
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <p>End Date</p>
                                    <div class="form-group">
                                        
                                        <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-6">
                                    
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-info w-100" ID="Button3" runat="server" Text="Issue" />
                                        
                                    </div>
                                </div>
                                <div class="col-6">
                                    
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-primary w-100" ID="Button2" runat="server" Text="Return" />
                                    </div>
                                </div>
                            </div>
                        </div>

                    </center>
                </div>
                
            </div>

            <div class="col-md-7">
                <div class="card ">
                    <center>

                        <div class="card-body ">
                            <h5 class="card-title ">Issued Book List</h5>
                            <hr />
                        </div>
                    </center>

                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>

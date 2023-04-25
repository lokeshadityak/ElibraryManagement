<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="publishermanagement.aspx.cs" Inherits="ElibraryManagement.publishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card ">
                    <center>
                        <h5>Publisher Details</h5>
                        <img src="web/img/publisher.png" alt="Card image cap" width="100px" />
                        <hr />
                        <div class="card-body">
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <div class="input-group">

                                            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Go" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-8">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Publisher Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            
                        </div>
                        <div class="row">
                                <div class="col-4">
                                    <asp:Button Class="btn btn-md btn-block btn-success" ID="Button2" runat="server" Text="Add" />
                                </div>
                                <div class="col-4">
                                    <asp:Button Class="btn btn-md btn-block btn-warning" ID="Button3" runat="server" Text="Update" />
                                </div>
                                <div class="col-4">
                                    <asp:Button Class="btn btn-md btn-block btn-danger" ID="Button4" runat="server" Text="Delete" />
                                </div>
                            </div><br/>
                    </center>
                </div>
                <a href="home.aspx"><< back to home</a>
            </div>

            <div class="col-md-7">
                <div class="card ">
                    <center>
                        
                        <div class="card-body ">
                            <h5 class="card-title ">Publisher Deatails</h5>
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

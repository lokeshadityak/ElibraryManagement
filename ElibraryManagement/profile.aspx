<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="ElibraryManagement.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card ">
                    <center>
                        <img src="web/img/generaluser.png" alt="Card image cap" width="100px" />
                        <div class="card-body">
                            <h5 class="card-title">User Profile</h5>
                            <span>Account Status - </span>
                            <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label1" runat="server" Text="Loading"></asp:Label>
                            <br />
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                    <br />
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="dd-MM-yyyy" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <br />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Contact No." TextMode="Number"></asp:TextBox>
                                    </div>
                                    <br />
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>
                                    </div>
                                    <br />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">

                                            <asp:ListItem Text="Select" Value="City"></asp:ListItem>
                                            <asp:ListItem Text="Hyderabad" Value="Hyderabad"></asp:ListItem>
                                            <asp:ListItem Text="Bangalore" Value="Bangalore"></asp:ListItem>
                                            <asp:ListItem Text="Chennai" Value="Chennai"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <br />
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                    </div>
                                    <br />
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Address" Rows="2" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col">
                                    <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Old Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-8 mx-auto">
                                    <center>
                                        <div class="form-group ">
                                            <asp:Button CssClass="btn btn-info btn-md w-100" ID="Button1" runat="server" Text="Update" />
                                        </div>
                                    </center>
                                </div>
                            </div>



                        </div>
                    </center>
                </div>
                <a href="home.aspx"><< back to home</a>
            </div>

            <div class="col-md-7">
                <div class="card ">
                    <center>
                        <img src="web/img/books1.png" alt="Card image cap" width="100px" />
                        <div class="card-body p-0">
                            <h5 class="card-title ">Your Issued Books</h5>

                            <asp:Label class="badge rounded-pill bg-info text-dark" ID="Label2" runat="server" Text="Your Books"></asp:Label>
                            <br />
                        </div>
                    </center>

                    <hr />
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

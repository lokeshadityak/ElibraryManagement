<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ElibraryManagement.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Sign up page here</p>

    <div class="container">
        <div class="row">
            <center>
                <div class="col-md-6 mx-auto">
                    <div class="card ">
                        <center>
                            <img src="web/img/generaluser.png" alt="Card image cap" width="100px" />
                            <div class="card-body">
                                <h5 class="card-title">User SignUp</h5>
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
                                        <label>State</label>
                                        <div class="form-group">
                                            <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">

                                                <asp:ListItem Text="Select" Value="City"></asp:ListItem>
                                                <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                                <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                                <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem>
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
                                
                                <div class="row">
                                    <div class="col">
                                        <span class="badge rounded-pill bg-info text-dark">Login Credentials</span>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID"></asp:TextBox>
                                        </div>
                                        <br />
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <br />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-info btn-lg w-100" ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click" />
                                </div>
                                <br />

                            </div>
                        </center>
                    </div>
                    <a href="home.aspx"><< back to home</a>
                </div>
            </center>

        </div>

    </div>
</asp:Content>

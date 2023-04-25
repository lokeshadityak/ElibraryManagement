<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ElibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <center>
                <div class="col-md-6">
                    <div class="card ">
                        <center>
                            <img src="web/img/adminuser.png" alt="Card image cap" width="150px" />
                            <div class="card-body">
                                <h5 class="card-title">Admin Login</h5> <br/>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>  <br/>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                </div><br/>
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-info btn-lg w-100" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div><br/>
                                
                            </div>
                        </center>
                    </div>
                    <a href="home.aspx"><< back to home</a>
                </div>
            </center>

        </div>

    </div>
</asp:Content>

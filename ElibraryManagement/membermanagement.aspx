<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="membermanagement.aspx.cs" Inherits="ElibraryManagement.membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card ">
                    <center>
                        <h5>Member Details</h5>
                        <img src="web/img/generaluser.png" alt="Card image cap" width="100px" />
                        <hr />
                        <div class="card-body">
                            <div class="row">
                                <div class="col-3">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                            <asp:Button CssClass="btn btn-info" ID="Button4" runat="server" Text="Go" />
                                        </div>

                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Account Status"></asp:TextBox>
                                            <asp:LinkButton Class="btn btn-success btn-sm" ID="LinkButton1" runat="server"><i class="fa-sharp fa-solid fa-circle-check"></i></asp:LinkButton>
                                            <asp:LinkButton Class="btn btn-warning btn-sm" ID="LinkButton2" runat="server"><i class="fa-sharp fa-solid fa-circle-pause"></i></asp:LinkButton>
                                            <asp:LinkButton Class="btn btn-danger btn-sm" ID="LinkButton3" runat="server"><i class="fa-sharp fa-solid fa-circle-pause"></i></asp:LinkButton>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-3">
                                    <div class="form-group">
                                        
                                            <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="DOB" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Contact No." ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-5">
                                    <div class="form-group">
                                        
                                            <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Email" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        
                                            <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="State" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        
                                            <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Pincode" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        
                                            <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Full Address" ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col">
                                    
                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-danger w-100" ID="Button3" runat="server" Text="Delete Permanantly" />
                                        
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
                            <h5 class="card-title ">Members List</h5>
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

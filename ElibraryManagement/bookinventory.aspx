<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookinventory.aspx.cs" Inherits="ElibraryManagement.bookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card ">
                    <center>
                        <h5>Book Details</h5>
                        <img src="web/img/books.png" alt="Card image cap" width="100px" />
                        <hr />
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                            <asp:Button CssClass="btn btn-info" ID="Button4" runat="server" Text="Go" />
                                        </div>

                                    </div>
                                </div>
                                <div class="col-8">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Book Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-4">
                                    <label>Language</label>
                                    <div class="form-group">
                                        <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">

                                            <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                            <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                            <asp:ListItem Text="Kannada" Value="Kannada"></asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>
                                    <label>Publisher Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList Class="form-control" ID="DropDownList2" runat="server">

                                            <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                            <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                            <asp:ListItem Text="Publisher 3" Value="Publisher 3"></asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>

                                </div>
                                <div class="col-4">
                                    <label>Author Name</label>
                                    <div class="form-group">
                                        <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">

                                            <asp:ListItem Text="A1" Value="A1"></asp:ListItem>
                                            <asp:ListItem Text="A2" Value="A2"></asp:ListItem>
                                            <asp:ListItem Text="A3" Value="A3"></asp:ListItem>
                                        </asp:DropDownList>
                                        
                                    </div>
                                    <label>Publishing Date</label>
                                    <div class="form-group">
                                        
                                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Date" ReadOnly="True" TextMode="Date"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-4">
                                    <label>Genre</label>
                                    <div class="form-group">

                                        <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple">
                                            <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                            <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                            <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                            <asp:ListItem Text="Comedy" Value="Comedy"></asp:ListItem>
                                            <asp:ListItem Text="Sci-Fi" Value="Sci-Fi"></asp:ListItem>
                                            <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                            <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
                                        </asp:ListBox>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">

                                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Edition" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Cost" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">

                                        <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>

                                    </div>
                                </div>
                            </div>
                            <br />

                            <div class="row">
                                <div class="col-4">
                                    <label>Actual Stock</label>
                                    <div class="form-group">

                                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Actual Stock" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <label>Current Stock</label>
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Current Stock" ReadOnly="True" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <label>Stock Issued</label>
                                    <div class="form-group">

                                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Pages" ReadOnly="True"></asp:TextBox>

                                    </div>
                                </div>
                            </div>

                            <br/>

                            <div class="row">
                                <div class="col">
                                    <div class="form-group">

                                        <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Book Description"  TextMode="MultiLine" Rows="2"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-4">

                                    <div class="form-group">
                                        <asp:Button CssClass="btn btn-info w-100" ID="Button3" runat="server" Text="Add" />
                                    </div>
                                </div>
                                <div class="col-4">

                                    <div class="form-group">
                                        
                                        <asp:Button CssClass="btn btn-warning w-100" ID="Button6" runat="server" Text="Update" />
                                        
                                    </div>
                                </div>
                                <div class="col-4">

                                    <div class="form-group">
                                        
                                        <asp:Button CssClass="btn btn-danger w-100" ID="Button10" runat="server" Text="Delete" />
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

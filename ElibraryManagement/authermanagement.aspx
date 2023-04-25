<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authermanagement.aspx.cs" Inherits="ElibraryManagement.authermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card ">
                    <center>
                        <h5>Author Details</h5>
                        <img src="web/img/writer.png" alt="Card image cap" width="100px" />
                        <hr />
                        <div class="card-body">
                            <div class="row">
                                <div class="col-5">
                                    <div class="form-group">
                                        <div class="input-group">

                                            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Author ID"></asp:TextBox>
                                            <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Check" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <div class="form-group">
                                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Author Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="row">
                            <div class="col-4">
                                <asp:Button Class="btn btn-md btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button Class="btn btn-md btn-block btn-warning" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button Class="btn btn-md btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
                        <br />
                    </center>
                </div>
                <a href="home.aspx"><< back to home</a>
            </div>

            <div class="col-md-7">
                <div class="card ">
                    <center>

                        <div class="card-body ">
                            <h5 class="card-title ">Author Deatails</h5>
                            <hr />
                        </div>
                    </center>

                    <div class="row">
                        <div class="col">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <asp:GridView class="table table-stripped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="author_id" HeaderText="Author ID" SortExpression="author_id" />
                                    <asp:BoundField DataField="author_name" HeaderText="Author Name" SortExpression="author_name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>

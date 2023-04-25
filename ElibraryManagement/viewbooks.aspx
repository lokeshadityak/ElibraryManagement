<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="ElibraryManagement.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <div class="card ">
                    <center>

                        <div class="card-body ">
                            <h5 class="card-title ">Books List</h5>
                            <hr />
                        </div>
                    </center>

                    <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-stripped table-bordered" ID="GridView2" runat="server"></asp:GridView>
                        </div>
                    </div>
                </div>
        </div>
        
    </div>
</asp:Content>

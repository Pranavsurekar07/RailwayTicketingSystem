<%@ Page Title="Train Time Table" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="traintimetable.aspx.cs" Inherits="traintimetable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="container">
        <h2>Train Time Table</h2>
    </div>
    <hr />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </div>
                </div>
            </div>
</asp:Content>


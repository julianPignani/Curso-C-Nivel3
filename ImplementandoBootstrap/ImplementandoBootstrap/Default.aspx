<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ImplementandoBootstrap.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card text-center mb-3" style="width: 60rem">
        <div class="container">
            <div class="row">
                <div class="col-3"></div>
                <div class="col">
                    <div class="mb-3">
                        <label for="txtUsername" class="form-label">Username</label>
                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtPass" class="form-label">Password</label>
                        <asp:TextBox ID="txtPass" CssClass="form-control" type="password" runat="server"></asp:TextBox>
                    </div>
                    <asp:Button Text="Ingresar" ID="btnIngresar" OnClick="btnIngresar_Click" CssClass="btn btn-primary" runat="server" />
                </div>
                <div class="col-3"></div>
            </div>
        </div>
    </div>
</asp:Content>

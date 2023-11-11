<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgregarAuto.aspx.cs" Inherits="ListadoDeAutos.AgregarAuto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <h2 style="color:Blue" >Cargar un nuevo Vehiculo</h2>
            </div>
            <div class="mb-3">
                <label for="txtId" id="lblId" class="form-label">ID</label>
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtMarca" id="lblMarca" class="form-label">Marca del Vehiculo</label>
                <asp:TextBox ID="txtMarca" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="ddlColor" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColor" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo del Vehiculo</label>
                <asp:TextBox ID="txtModelo" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:CheckBox ID="chboxUsado" CssClas="form-control" runat="server" />
                <asp:Label Text="Usado" CssClass="form-check-label" runat="server" />
            </div>
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" Text="Importado" runat="server" GroupName="tipoVehiculo" />
                <asp:RadioButton ID="rdbNacional" Checked="true" Text="Nacional" runat="server" GroupName="tipoVehiculo" />
            </div>
            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" OnClick="btnAceptar_Click" CssClass="btn btn-primary" runat="server" />
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>

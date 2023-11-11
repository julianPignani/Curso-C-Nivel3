<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ListadoDeAutos.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-8">
            <asp:GridView ID="dgvAutos" CssClass="table table-dark table-bordered" AutoGenerateColumns="false" runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Marca" DataField="Marca" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <a href="AgregarAuto.aspx">Agregar</a>
        </div>
    </div>
</asp:Content>

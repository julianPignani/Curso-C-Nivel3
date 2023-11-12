<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ListadoDeAutos.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .oculto{
            display: none;
        }
    </style>
    <div class="row">
        <div class="col-8">
            <asp:GridView ID="dgvAutos" CssClass="table table-dark table-bordered" DataKeyNames="Id" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" AutoGenerateColumns="false" runat="server">
                <Columns>
                    <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" /> 
                    <asp:BoundField HeaderText="Marca" DataField="Marca" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                    <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="Seleccionar" />
                </Columns>
            </asp:GridView>
        </div>
        <div>
            <a href="AgregarAuto.aspx">Agregar</a>
        </div>
    </div>
</asp:Content>

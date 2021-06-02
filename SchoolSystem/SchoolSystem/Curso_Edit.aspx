<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Curso_Edit.aspx.cs" Inherits="SchoolSystem.Curso_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlUpdate" Visible="true">
        <h1>Atualizar Curso</h1>
        <ul>
            <li>
                <asp:Label ID="Label7" runat="server" Text="Cód. Matéria"></asp:Label>
                <asp:DropDownList ID="ddlCodMat" runat="server"></asp:DropDownList>
            </li>
            <li>
                <asp:Label ID="Label6" runat="server" Text="Cód. Curso"></asp:Label>
                <asp:TextBox ID="tbCodMateria" Text="2013" Enabled="false" CssClass="radiusInput disable" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label4" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox1" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label5" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="TextBox2" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Button ID="bntAtualizar" CssClass="btn btnEdit" runat="server" Text="Atualizar" />
            </li>
        </ul>
    </asp:Panel>
</asp:Content>

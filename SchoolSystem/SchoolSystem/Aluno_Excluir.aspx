<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Aluno_Excluir.aspx.cs" Inherits="SchoolSystem.Alunos_Excluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlDelete" Visible="true">
        <h1>Excluir Aluno</h1>
        <ul>            
            <li>
                <asp:Label Text="Matricula" ID="label8" runat="server"></asp:Label>
                <asp:TextBox ID="tbIdMatricula" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label2" runat="server" Text="Endereço"></asp:Label>
                <asp:TextBox ID="tbEndereco" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label4" runat="server" Text="CEP"></asp:Label>
                <asp:TextBox ID="tbCep" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <%--<li>
                <asp:Label ID="Label5" runat="server" Text="Telefone"></asp:Label>
                <asp:TextBox ID="tbTelefone" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label6" runat="server" Text="Celular"></asp:Label>
                <asp:TextBox ID="tbCelular" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label7" runat="server" Text="Data de Nascimento"></asp:Label>
                <asp:TextBox ID="tbDataNasc" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>            
            <li>
                <asp:Label ID="Label3" runat="server" Text="Data de Cadastro"></asp:Label>
                <asp:TextBox ID="tbDataCadastro" Text="07/07/2013" Enabled="false" CssClass="radiusInput disable" runat="server"></asp:TextBox>
            </li>--%>

            <li>
                <asp:Button ID="btnExcluir" CssClass="btnDelete btn" OnClick="btnExcluir_Click" runat="server" Text="Excluir" />
            </li>
        </ul>
    </asp:Panel>
</asp:Content>

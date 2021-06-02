<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Aluno.aspx.cs" Inherits="SchoolSystem.Alunos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:Panel runat="server" ID="pnlShowData" Visible="true">
        <h1>Todas os Alunos Cadastrados</h1>
        <asp:GridView ID="gwAluno" runat="server" AutoGenerateColumns="False" EmptyDataText="Não Existem Aluno(s) Cadastrados...">
            <Columns>
                <asp:BoundField DataField="idAluno" HeaderText="Matricula" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereço" />
                <asp:BoundField DataField="DataNascimento" DataFormatString="{0:d/MM/yyyy}" HeaderText="Data de Nascimento" />
                <asp:BoundField DataField="dataCadastro" DataFormatString="{0:d/MM/yyyy}" HeaderText="Data do Cadastro" />                
                <asp:HyperLinkField DataNavigateUrlFormatString="Aluno_Excluir.aspx?id={0}" Text="Excluir" DataNavigateUrlFields="idAluno" />
            </Columns>
        </asp:GridView>        
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlSearch" Visible="true">
        <h1>Pesquisa de Aluno(s)</h1>
        <fieldset>
            <legend>Opções de Pesquisa</legend>
            <asp:RadioButtonList ID="rlbTypeSearch" CssClass="rlbTypeSearch" runat="server" RepeatLayout="UnorderedList">
                <asp:ListItem Value="ID" Selected="True">Código</asp:ListItem>
                <asp:ListItem>Nome</asp:ListItem>
                <asp:ListItem Value="Descricao">Descrição</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <ul>
            <li>
                <asp:Label Text="Código" ID="label1" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqID" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label Text="Nome" ID="label9" runat="server"></asp:Label>
                <asp:TextBox ID="tbPesqNome" Text="" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Label ID="Label10" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="tbPesqDescricao" CssClass="radiusInput" runat="server"></asp:TextBox>
            </li>
            <li>
                <asp:Button ID="btnSearch" CssClass="btn btnSearch" runat="server" Text="Pesquisar" />
            </li>
        </ul>
    </asp:Panel>  
</asp:Content>

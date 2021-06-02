<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SchoolSystem.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <asp:TextBox ID="tbHome" Text="Bem Vindo(a) ao School System! " runat="server" Height="46px" OnTextChanged="tbHome_TextChanged" Width="303px"></asp:TextBox>
</asp:Content>

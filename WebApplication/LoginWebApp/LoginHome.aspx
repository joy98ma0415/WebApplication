<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginHome.aspx.cs" Inherits="WebApplication.LoginWebApp.LoginHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Welcome" CssClass="style5"></asp:Label>
        <br />
        <br />
        <asp:Button ID="ButtonLogout" runat="server" Text="Logout" OnClick="ButtonLogout_Click" />
    </div>
</asp:Content>
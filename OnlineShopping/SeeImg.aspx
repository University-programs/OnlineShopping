<%@ Page Title="" Language="C#" MasterPageFile="~/Backstage.Master" AutoEventWireup="true" CodeBehind="SeeImg.aspx.cs" Inherits="OnlineShopping.SeeImg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:Image ID="Image1" runat="server" />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="返回商品管理" class="btn btn-primary btn-flat m-b-30 m-t-30" OnClick="btnSubmit_Click" />
    </form>
    
</asp:Content>

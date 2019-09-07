<%@ Page Title="" Language="C#" MasterPageFile="~/Backstage.Master" AutoEventWireup="true" CodeBehind="UserManager.aspx.cs" Inherits="OnlineShopping.UserManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th{
            text-align:center;
        }
        tbody tr td:last-child {
            text-align: center;
        }
        tbody tr:last-child td table{
            margin:0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopping %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" Width="70%" Font-Size="Large" HorizontalAlign="Center" PageSize="15" >
            <Columns>
                <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" />
                <asp:BoundField DataField="NickName" HeaderText="用户昵称" SortExpression="NickName" />
                <asp:CheckBoxField DataField="IsAdmin" HeaderText="是否管理员" SortExpression="IsAdmin" />
                <asp:HyperLinkField DataNavigateUrlFields="uid"  DataNavigateUrlFormatString="UserEdit.aspx?uid={0}" Text="编辑"/>
                <asp:HyperLinkField DataNavigateUrlFields="uid"  DataNavigateUrlFormatString="UserDelete.aspx?uid={0}" Text="删除"/>
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
    </form>
</asp:Content>

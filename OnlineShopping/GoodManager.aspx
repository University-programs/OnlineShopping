<%@ Page Title="" Language="C#" MasterPageFile="~/Backstage.Master" AutoEventWireup="true" CodeBehind="GoodManager.aspx.cs" Inherits="OnlineShopping.GoodsManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>商品管理</title>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>商品管理</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineShopping %>" SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" Width="90%" Font-Size="Large" HorizontalAlign="Center" PageSize="15" EmptyDataText="数据库中无任何信息" >
            <Columns>
                <asp:BoundField DataField="gid" HeaderText="商品编号" SortExpression="GoodId" InsertVisible="False" />
                <asp:BoundField DataField="GoodName" HeaderText="商品名称" SortExpression="GoodName" />
                <asp:BoundField DataField="GoodPrice" DataFormatString="{0:c}" HeaderText="商品价格" SortExpression="GoodPrice" />
                <asp:BoundField DataField="Category" HeaderText="商品类别" SortExpression="Category" />
                <asp:BoundField DataField="GoodNum" HeaderText="商品数量" SortExpression="GoodNum" />
                <asp:HyperLinkField HeaderText="商品图片" DataNavigateUrlFields="GoodPic" DataNavigateUrlFormatString="./Images/{0}" Text="点击查看图片" />
                <asp:BoundField DataField="GoodShow" HeaderText="商品简介" SortExpression="GoodShow" />
                <asp:BoundField DataField="GoodTime" HeaderText="上架时间" SortExpression="GoodTime" />
                <asp:HyperLinkField DataNavigateUrlFields="gid"  DataNavigateUrlFormatString="GoodEdit.aspx?gid={0}" Text="编辑"/>
                <asp:HyperLinkField DataNavigateUrlFields="gid"  DataNavigateUrlFormatString="GoodDelete.aspx?gid={0}" Text="删除"/>
            </Columns>
            <PagerSettings FirstPageText="首页" LastPageText="末页" NextPageText="下一页" PreviousPageText="上一页" Mode="NextPreviousFirstLast" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
    </form>
</asp:Content>

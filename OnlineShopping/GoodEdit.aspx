﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Backstage.Master" AutoEventWireup="true" CodeBehind="GoodEdit.aspx.cs" Inherits="OnlineShopping.GoodEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>修改商品信息</title>
    <style>
        .ddlist{
            width:100%;
            font-size:1.5em;
        }
        .GoodPic{
            height:150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>商品信息</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" style="width:70%;margin:0 auto">
        <div class="form-group">
			<label>商品编号</label>
            <asp:TextBox ID="txtgid" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
		</div>
		<div class="form-group">
			<label>商品名称</label>
            <asp:TextBox ID="txtGoodName" runat="server" class="form-control" placeholder="请输入商品名称"></asp:TextBox>
		</div>
        <div class="form-group">
			<label>商品价格</label>
            <asp:TextBox ID="txtGoodPrice" runat="server" class="form-control" placeholder="请输入商品价格"></asp:TextBox>
		</div>
        <div class="form-group">
			<label>商品类别</label><br />
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="ddlist">
                <asp:ListItem Value="0">请选择商品类别</asp:ListItem>
                <asp:ListItem Value="1">服饰首饰</asp:ListItem>
                <asp:ListItem Value="2">数码家具</asp:ListItem>
                <asp:ListItem Value="3">学习用品</asp:ListItem>
                <asp:ListItem Value="4">其他类别</asp:ListItem>
            </asp:DropDownList>
		</div>
        <div class="form-group">
			<label>商品数量</label>
            <asp:TextBox ID="txtGoodNum" runat="server" class="form-control" placeholder="请输入商品数量"></asp:TextBox>
		</div>
        <div class="form-group">
			<label>商品图片</label>
            <asp:FileUpload ID="fuploadGoodPic" runat="server" /><p style="color:red">不修改无需上传</p>
		</div>
        <div class="form-group">
			<label>商品介绍</label>
            <asp:TextBox ID="txtGoodShow" runat="server" class="form-control" placeholder="请输入商品介绍"></asp:TextBox>
		</div>
        <asp:Button ID="btnSubmit" runat="server" Text="确认提交" class="btn btn-primary btn-flat m-b-30 m-t-30" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="取消更改" class="btn btn-primary btn-flat m-b-30 m-t-30" OnClick="btnCancel_Click" />
	</form>
</asp:Content>

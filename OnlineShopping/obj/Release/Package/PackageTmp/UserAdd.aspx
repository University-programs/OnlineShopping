﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Backstage.Master" AutoEventWireup="true" CodeBehind="UserAdd.aspx.cs" Inherits="OnlineShopping.UserAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>添加管理员</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h1>用户信息</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" style="width:70%;margin:0 auto">
		<div class="form-group">
			<label>用户名</label>
            <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="请输入用户名"></asp:TextBox>
		</div>
        <div class="form-group">
			<label>昵称</label>
			<asp:TextBox ID="txtNickName" runat="server" class="form-control" placeholder="请输入昵称昵称"></asp:TextBox>
		</div>
        <div class="form-group">
			<label>新密码</label>
			<asp:TextBox ID="txtNewUserPassword" runat="server" class="form-control" placeholder="该项为空不修改密码" TextMode="Password"></asp:TextBox>
		</div>
        <div class="form-group">
			<label>确认新密码</label>
			<asp:TextBox ID="txtEnterUserPassword" runat="server" class="form-control" placeholder="该项为空不修改密码" TextMode="Password"></asp:TextBox>
		</div>
        <asp:Button ID="btnSubmit" runat="server" Text="确认提交" class="btn btn-primary btn-flat m-b-30 m-t-30" OnClick="btnSubmit_Click" />
	</form>
</asp:Content>

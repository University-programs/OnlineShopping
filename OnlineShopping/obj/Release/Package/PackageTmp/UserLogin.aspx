<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="OnlineShopping.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="Shared/bootstrap.min.css" />
    <script type="text/javascript" src="Scripts/bootstrap.js"></script>
</head>
<body>
    <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<div class="container-fluid">
						 <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a class="brand" href="Index.aspx">网上商城</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
									<a href="Index.aspx">主页</a>
								</li>
								
								
							</ul>
							<ul class="nav pull-right">
								<li>
									<a href="GoodCar.aspx">购物车</a>
								</li>
								<li class="divider-vertical">
								</li>
								<li>
									<a href=".aspx">我的信息</a>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				
			</div>
			<form class="form-horizontal" runat="server">
				<div class="control-group">
					 <label class="control-label" for="inputEmail">账号</label>
					<div class="controls">
						<asp:TextBox ID="txtuid" Text="" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="control-group">
					 <label class="control-label" for="inputPassword">密码</label>
					<div class="controls">
						<asp:TextBox ID="txtpwd" TextMode="Password" Text="" runat="server"></asp:TextBox>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						 <%--<label class="checkbox"><input type="checkbox" /> Remember me</label>--%> <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="登陆" OnClick="btnLogin_Click" />
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>

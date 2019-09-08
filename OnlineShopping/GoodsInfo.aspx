<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodsInfo.aspx.cs" Inherits="OnlineShopping.GoodsInfo" %>

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
								<li class="dropdown">
									 <a class="dropdown-toggle" href="#" data-toggle="dropdown">下拉菜单<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">下拉导航1</a>
										</li>
										<li>
											<a href="#">下拉导航2</a>
										</li>
										<li>
											<a href="#">其他</a>
										</li>
										<li class="divider">
										</li>
										<li class="nav-header">
											标签
										</li>
										<li>
											<a href="#">链接1</a>
										</li>
										<li>
											<a href="#">链接2</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul class="nav pull-right">
								<li>
									<a href="#">我的购物车</a>
								</li>
								<li class="divider-vertical">
								</li>
								<li>
									<a href="#">我的信息</a>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				<div class="hero-unit">
                    <img src='Images/<% Response.Write(dt.Rows[0][6].ToString()); %>' style="width:200px;height:200px" />
                    <h3><% Response.Write(dt.Rows[0][2].ToString()); %></h3>
				<p>
					<% Response.Write(dt.Rows[0][7].ToString()); %>
				</p>
				<p>
					<label>价格：<% Response.Write(dt.Rows[0][3].ToString()); %>￥</label><a class="btn btn-primary btn-large" href='GoodCarAdd.ashx?gid=<% Response.Write(dt.Rows[0][1].ToString()); %>'>添加购物车</a>
				</p>
			</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>

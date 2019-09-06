<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlineShopping.Index" %>

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
						 <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a> <a class="brand" href="#">网上商城</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
									<a href="#">主页</a>
								</li>
								<li>
									<a href="#">链接</a>
								</li>
								<li>
									<a href="#">链接</a>
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
									<a href="#">购物车</a>
								</li>
								<li class="divider-vertical">
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
										<li>
											<a href="#">链接3</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				
			</div>
			<form class="form-search" runat="server">
                <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" RepeatLayout="Flow" runat="server">
                    <asp:ListItem Text="全部" Selected="True" Value="0"></asp:ListItem>
                    <asp:ListItem Text="服饰首饰" Value="1"></asp:ListItem>
                    <asp:ListItem Text="数码家具" Value="2"></asp:ListItem>
                    <asp:ListItem Text="学习用品" Value="3"></asp:ListItem>
                    <asp:ListItem Text="其他类别" Value="4"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:TextBox ID="txtSerch" class="input-medium search-query" runat="server"></asp:TextBox><asp:Button ID="btnSearch" runat="server" class="btn" Text="查找" />
			</form>
			<ul class="thumbnails">
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src='Images/<% Response.Write(dt.Rows[goodid][6].ToString()); %>' />
						<div class="caption">
							<h3>
								<% Response.Write(dt.Rows[goodid][2].ToString()); %>
							</h3>
							<p>
								<% Response.Write(dt.Rows[goodid][7].ToString()); %>
							</p>
							<p>
								<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">加入购物车</a>
							</p>
						</div>
					</div>
                    <% goodid++; %>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src='Images/<% Response.Write(dt.Rows[goodid][6].ToString()); %>' />
						<div class="caption">
							<h3>
								<% Response.Write(dt.Rows[goodid][2].ToString()); %>
							</h3>
							<p>
								<% Response.Write(dt.Rows[goodid][7].ToString()); %>
							</p>
							<p>
								<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">加入购物车</a>
							</p>
						</div>
					</div>
                    <% goodid++; %>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src='Images/<% Response.Write(dt.Rows[goodid][6].ToString()); %>' />
						<div class="caption">
							<h3>
								<% Response.Write(dt.Rows[goodid][2].ToString()); %>
							</h3>
							<p>
								<% Response.Write(dt.Rows[goodid][7].ToString()); %>
							</p>
							<p>
								<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">加入购物车</a>
							</p>
						</div>
					</div>
                    <% goodid++; %>
				</li>
			</ul>
            <ul class="thumbnails">
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src='Images/<% Response.Write(dt.Rows[goodid][6].ToString()); %>' />
						<div class="caption">
							<h3>
								<% Response.Write(dt.Rows[goodid][2].ToString()); %>
							</h3>
							<p>
								<% Response.Write(dt.Rows[goodid][7].ToString()); %>
							</p>
							<p>
								<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">加入购物车</a>
							</p>
						</div>
					</div>
                    <% goodid++; %>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src='Images/<% Response.Write(dt.Rows[goodid][6].ToString()); %>' />
						<div class="caption">
							<h3>
								<% Response.Write(dt.Rows[goodid][2].ToString()); %>
							</h3>
							<p>
								<% Response.Write(dt.Rows[goodid][7].ToString()); %>
							</p>
							<p>
								<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">加入购物车</a>
							</p>
						</div>
					</div>
                    <% goodid++; %>
				</li>
				<li class="span4">
					<div class="thumbnail">
						<img alt="300x200" src='Images/<% Response.Write(dt.Rows[goodid][6].ToString()); %>' />
						<div class="caption">
							<h3>
								<% Response.Write(dt.Rows[goodid][2].ToString()); %>
							</h3>
							<p>
								<% Response.Write(dt.Rows[goodid][7].ToString()); %>
							</p>
							<p>
								<a class="btn btn-primary" href="#">浏览</a> <a class="btn" href="#">加入购物车</a>
							</p>
						</div>
					</div>
                    <% goodid++; %>
				</li>
			</ul>
            <div class="pagination text-center">
				<ul>
					<li>
						<a href="#">上一页</a>
					</li>
					<li>
						<a href="#">1</a>
					</li>
					<li>
						<a href="#">2</a>
					</li>
					<li>
						<a href="#">3</a>
					</li>
					<li>
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">下一页</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>

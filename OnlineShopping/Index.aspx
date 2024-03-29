﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="OnlineShopping.Index" %>

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
                                <li class="active">
									<a href="Register.aspx">注册</a>
								</li>
							</ul>
							<ul class="nav pull-right">
								<li>
									<a href="GoodCar.aspx">购物车</a>
								</li>
								<li class="divider-vertical">
								</li>
								<li class="dropdown">
									<a href="UserInfo.aspx">我的信息</a>
								</li>
							</ul>
						</div>
						
					</div>
				</div>
				
			</div>
			<form class="form-search" runat="server">
                <asp:RadioButtonList ID="rdobtn" RepeatDirection="Horizontal" RepeatLayout="Flow" runat="server">
                    <asp:ListItem Text="全部" Selected="True" Value="0"></asp:ListItem>
                    <asp:ListItem Text="服饰首饰" Value="1"></asp:ListItem>
                    <asp:ListItem Text="数码家具" Value="2"></asp:ListItem>
                    <asp:ListItem Text="学习用品" Value="3"></asp:ListItem>
                    <asp:ListItem Text="其他类别" Value="4"></asp:ListItem>
                </asp:RadioButtonList>
                <asp:TextBox ID="txtSerch" class="input-medium search-query" runat="server"></asp:TextBox><asp:Button ID="btnSearch" runat="server" class="btn" Text="查找" />
			</form>
			
				<%
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (i==0||i%3==0)
                        {
                            Response.Write("<ul class='thumbnails'>");
                        }
                        Response.Write(@"<li class='span4'><div class='thumbnail'><img alt='300x200' style='width:200px;height:200px;' src='Images/" + dt.Rows[goodid][6].ToString() + @"' />
						<div class='caption'><h3>" + dt.Rows[goodid][2].ToString() + @"</h3><p>" + dt.Rows[goodid][7].ToString() + @"</p><p>
								<a class='btn btn-primary' href='GoodsInfo.aspx?gid="+dt.Rows[goodid][1].ToString()+@"'>浏览</a> <a class='btn' href='GoodsInfo.aspx?gid="+dt.Rows[goodid][1].ToString()+@"'>加入购物车</a>
                                <asp:Label CssClass='pull-right'>价格：" + dt.Rows[goodid][3].ToString() + @"￥</asp:Label>
							</p>
						</div>
					</div>
                    </li>");
                        goodid++;
                        if ((i+1)%3==0||i==dt.Rows.Count-1)
                        {
                            Response.Write("</ul>");
                        }
                    }
                %>
			
           
            <hr />
            <div class="pagination text-center">
				<ul>
					<li>
						<a href='Index.aspx?page=<% Response.Write(nowPage-1);%>'>上一页</a>
					</li>
                    <%
                        
                        for (int i = 0; i < totalPage; i++)
                        {
                            Response.Write(@"<li><a href='Index.aspx?page=" + (i + 1) + "'>" + (i + 1) + "</a></li>");
                        }


                    %>
					
					<li>
						<a href='Index.aspx?page=<% Response.Write(nowPage+1); %>'>下一页</a>
					</li>
				</ul>
			</div>
                
		</div>
	</div>
</div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoodCar.aspx.cs" Inherits="OnlineShopping.GoodCar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a><a class="brand" href="Index.aspx">网上商城</a>
                            <div class="nav-collapse collapse navbar-responsive-collapse">
                                <ul class="nav">
                                    <li class="active">
                                        <a href="Index.aspx">主页</a>
                                    </li>
                                </ul>
                                <ul class="nav pull-right">
                                    <li>
                                        <a href="#">购物车</a>
                                    </li>
                                    <li class="divider-vertical"></li>
                                    <li>
                                        <a href="UserInfo.aspx">我的信息</a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>

                </div>
                <form runat="server">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>名称
                                </th>
                                <th>图片
                                </th>
                                <th>价格
                                </th>
                                <th>数量
                                </th>
                                <th>移除
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                double totalpay = 0;
                                for (int i = 0; i < gdt.Rows.Count; i++)
                                {
                                    Response.Write("<tr><td>" + gdt.Rows[i][2].ToString() + "</td>");
                                    Response.Write("<td><img src='Images/" + gdt.Rows[i][6].ToString() + "' style='width:200px;height:200px'/></td>");
                                    totalpay += Convert.ToDouble(dt.Rows[i][3].ToString()) * Convert.ToDouble(gdt.Rows[i][3].ToString());
                                    Response.Write("<td>" + Convert.ToDouble(dt.Rows[i][3].ToString()) * Convert.ToDouble(gdt.Rows[i][3].ToString()) + "￥</td>");
                                    Response.Write("<td>" + dt.Rows[i][3].ToString() + "</td>");
                                    Response.Write("<td><a href='GoodCarEdit.ashx?cid="+dt.Rows[i][0].ToString()+"&fun=1'>删除</a></td>");
                                    Response.Write("</tr>");
                                }
                            %>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                
                                <td>总金额：<% Response.Write(totalpay); %>￥
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

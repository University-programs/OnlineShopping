<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="OnlineShopping.UserInfo" %>

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
                                        <a href="GoodCar.aspx">购物车</a>
                                    </li>
                                    <li class="divider-vertical"></li>
                                    <li class="dropdown">
                                        <a href="UserInfo.aspx">我的信息</a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>

                </div>
                <form method="post" runat="server" style="width: 70%; margin: 0 auto">
                    <div class="form-group">
                        <label>用户名</label>
                        <asp:TextBox ID="txtUserName" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>昵称</label>
                        <asp:TextBox ID="txtNickName" runat="server" class="form-control" placeholder="请输入昵称昵称"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>原密码</label>
                        <asp:TextBox ID="txtOldUserPassword" runat="server" class="form-control" placeholder="该项为空不修改密码" TextMode="Password"></asp:TextBox>
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
                    <asp:Button ID="btnCancel" runat="server" Text="取消更改" class="btn btn-primary btn-flat m-b-30 m-t-30" OnClick="btnCancel_Click" />
                </form>
            </div>
        </div>
    </div>

</body>
</html>

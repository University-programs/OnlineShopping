<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineShopping.Register" %>

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
                                        <a href="Index.aspx">返回</a>
                                    </li>

                                </ul>
                                <ul class="nav pull-right">
                                </ul>
                            </div>

                        </div>
                    </div>

                </div>
                <div class="row-fluid">
                    <div class="span2">
                    </div>
                    <div class="span6">
                        <form runat="server">
                            <fieldset>
                                <legend>新用户注册</legend>
                                <label>帐户</label><asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
                                <span class="help-block">登录使用的帐户.</span>
                                <label>昵称</label><asp:TextBox ID="txtNname" runat="server"></asp:TextBox>
                                <span class="help-block">您的昵称</span>
                                <label>密码</label><asp:TextBox TextMode="Password" ID="txtPwd" runat="server"></asp:TextBox>
                                <span class="help-block">登陆的密码</span>

                                <label class="checkbox">
                                    <input type="checkbox" />
                                    勾选同意</label>
                                <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="注册" OnClick="btnLogin_Click" />
                            </fieldset>
                        </form>
                    </div>
                    <div class="span4">
                    </div>
                </div>

            </div>
    </div>
    </div>

</body>
</html>

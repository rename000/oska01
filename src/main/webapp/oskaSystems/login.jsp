<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../common/commom.jsp" %>

<!DOCTYPE html>
<html lang="en" class="bg-dark" style="background-color: white !important;">
<head>
    <meta charset="utf-8" />
    <title>后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <link href="<%= basePath%>static/img/favicon.png" rel="shortcut icon" type="image/x-icon"/>
    <link rel="stylesheet" href="<%=basePath%>static/css/QB.v2.css" type="text/css" />
    <link rel="stylesheet" href="<%=basePath%>static/css/signin.css" type="text/css" />
</head>
<body class="bg-body">
<section id="content" class="m-t-lg wrapper-md animated fadeInUp" style="margin-top: 0;margin: auto;">
    <div class="container aside-xxl">
        <a class="navbar-brand block" style="margin-top: 20%;"><h1 class="h1-size">后台管理系统</h1></a>
        <section class="panel panel-default bg-white m-t-lg" style="margin: 30% 10%;">
            <header class="me-header">
                <%--<strong><img src="<%=basePath%>static/img/signin_head.png" /></strong>--%>
            </header>
            <div  class="panel-body wrapper-lg">
                <div class="form-group">
                    <label class="control-label">登入账户</label>
                    <input id="userName" type="username" placeholder="请输入账户" class="form-control input-lg" value="">
                </div>
                <div class="form-group">
                    <input id="passWord" type="password"  placeholder="请输入密码" class="form-control input-lg" value="">
                </div>
                <button  id='loginBtn' class="btn btn-twitter btn-block">立即登入</button>
            </div>
        </section>
    </div>
</section>
<!-- footer -->
<footer id="footer">
    <div class="row padder text-center bg-white" style="padding: 15px;vertical-align: middle;">
        <div class="col-sm-3 col-sm-offset-2 me-no-line">
            <p>技术支持:LH</p>
        </div>
        <div class="col-sm-2 me-no-line">
            <p>服务热线:12345678901</p>
        </div>
        <div class="col-sm-2 me-no-line">
            <p>关注我们:后台管理系统</p>
        </div>
    </div>
</footer>
<!-- / footer -->
<script src="<%=basePath%>static/js/QB.v2.js"></script>
</body>
</html>
<script type="text/javascript">
    $("#loginBtn").click(function () {
        var userNameVal = $("#userName").val();
        var passWordVal = $("#passWord").val();
        if(userNameVal=='' || userNameVal==undefined){
            alert("请输入用户名");
            return;
        }
        if(passWordVal=='' || passWordVal==undefined){
            alert("请输入密码");
            return;
        }
        var jsonObj = {
            userName: userNameVal,
            passWord: passWordVal
        };
        login(jsonObj);
    })

    function login(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'user/userlogin',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    window.location.href = "<%=basePath%>" + data.msg;
                }else{
                    alert(data.msg);
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
        $.ajax(option);
    }
</script>
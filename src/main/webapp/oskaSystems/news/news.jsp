<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="../commonSys/systemHeader.jsp" %>

<style>
    .panel-default>.panel-heading {background: #fff;}
</style>
<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
    <li><a href="<%=basePath%>oskaSystems/index/index.jsp"><i class="fa fa-home"></i> 主页</a></li>
    <li class="active"><a href="#"><i class="fa fa-columns"></i> 新闻管理</a></li>
</ul>

<section class="panel panel-default">
    <header class="panel-heading"> 首页新闻 </header>

    <div class="table-responsive">
        <table class="table table-striped b-t b-light text-sm">
            <thead>
            <tr>
                <th>新闻ID</th>
                <th style="width: 18%">新闻标题</th>
                <th style="width: 18%">新闻类型</th>
                <th>新闻描述</th>
                <th style="min-width: 100px">发行日期</th>
                <th>点击数</th>
                <th style="min-width: 100px">操作</th>
            </tr>
            </thead>
            <tbody id="firstWeb">
            <%--<tr>--%>
            <%--<td>2017</td>--%>
            <%--<td>红木地板</td>--%>
            <%--<td>红木地板木质非常好</td>--%>
            <%--<td>http://wwww.badu.com</td>--%>
            <%--<td>--%>
            <%--<a class="a-c-blue m-r">编辑</a>--%>
            <%--<a class="c-red y-pointer m-r">删除</a>--%>
            <%--</td>--%>
            <%--</tr>--%>
            </tbody>
        </table>
    </div>
</section>


<section class="panel panel-default">
    <header class="panel-heading"> 推荐新闻 </header>

    <div class="table-responsive">
        <table class="table table-striped b-t b-light text-sm">
            <thead>
            <tr>
                <th>新闻ID</th>
                <th style="width: 18%">新闻标题</th>
                <th style="width: 18%">新闻类型</th>
                <th>新闻描述</th>
                <th style="min-width: 100px">发行日期</th>
                <th>点击数</th>
                <th style="min-width: 100px">操作</th>
            </tr>
            </thead>
            <tbody id="recommendList">
            <%--<tr>--%>
            <%--<td>2017</td>--%>
            <%--<td>红木地板</td>--%>
            <%--<td>红木地板木质非常好</td>--%>
            <%--<td>http://wwww.badu.com</td>--%>
            <%--<td>--%>
            <%--<a class="a-c-blue m-r">编辑</a>--%>
            <%--<a class="c-red y-pointer m-r">删除</a>--%>
            <%--</td>--%>
            <%--</tr>--%>
            </tbody>
        </table>
    </div>
</section>

<section class="panel panel-default">
    <header class="panel-heading"> 新闻管理列表 （企业新闻／行业新闻）</header>
    <div class="row text-sm wrapper">
        <div class="col-sm-6 m-b-xs">
            <a href="<%=basePath%>oskaSystems/news/newsAdd.jsp" class="btn btn-sm btn-primary">新增新闻</a>
        </div>

        <form id="formObj">
            <div class="col-sm-3">
                <select id="newsType" name="newsType" class="form-control" placeholder="新闻类型" style="height: 30px;padding: 5px 10px;">
                    <option value="">(全部)新闻</option>
                    <option value="1">企业新闻 </option>
                    <option value="2">行业新闻</option>
                </select>
            </div>

            <div class="col-sm-3">
                <div class="input-group">
                    <input name="newsTitle" type="text" class="input-sm form-control" placeholder="新闻标题">
                    <span class="input-group-btn">
                    <button id="searchBtn" class="btn btn-sm btn-default" type="button">搜索</button>
                    </span>
                </div>
            </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-striped b-t b-light text-sm">
            <thead>
            <tr>
                <th>新闻ID</th>
                <th style="width: 18%">新闻标题</th>
                <th style="width: 18%">新闻类型</th>
                <th style="width: 30%">新闻描述</th>
                <th style="min-width: 100px">发行日期</th>
                <th>点击数</th>
                <th style="min-width: 100px">操作</th>
            </tr>
            </thead>
            <tbody id="newsList">
            <%--<tr>--%>
            <%--<td>2017</td>--%>
            <%--<td>红木地板</td>--%>
            <%--<td>红木地板木质非常好</td>--%>
            <%--<td>http://wwww.badu.com</td>--%>
            <%--<td>--%>
            <%--<a class="a-c-blue m-r">编辑</a>--%>
            <%--<a class="c-red y-pointer m-r">删除</a>--%>
            <%--</td>--%>
            <%--</tr>--%>
            </tbody>
        </table>
    </div>
    <footer class="panel-footer">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-3 text-left text-center-xs">
                <%--<small class="text-muted inline m-t-sm m-b-sm">当前展示20-30条,总共 50 条;每页10条;</small>--%>
                <small class="text-muted inline m-t-sm m-b-sm">总共 <span id="total">--</span> 条</small>
            </div>

            <div class="col-lg-9 col-md-9 col-sm-9 text-right text-center-xs" id="paging">
                <%--<ul class="pagination pagination-sm m-t-none m-b-none inline-li m-b">--%>
                <%--<li><a href="#"><i class="fa fa-chevron-left"></i></a></li>--%>
                <%--<li><a href="#">1</a></li>--%>
                <%--<li class="active"><a href="#">2</a></li>--%>
                <%--<li><a href="#">3</a></li>--%>
                <%--<li><a href="#">4</a></li>--%>
                <%--<li><a href="#">5</a></li>--%>
                <%--<li><a href="#">...</a></li>--%>
                <%--<li><a href="#"><i class="fa fa-chevron-right"></i></a></li>--%>
                <%--</ul>--%>
            </div>

            <%--<div class="col-lg-2 col-md-2 col-sm-2 text-right text-center-xs">--%>
            <%--<div class="input-group m-auto dis-table">--%>
            <%--<span class="t-cell"><button class="btn btn-sm btn-default" type="button">首页</button></span>--%>
            <%--<span class="t-cell"><button class="btn btn-sm btn-default" type="button">尾页</button></span>--%>
            <%--<span class="t-cell in-v-m"><input type="tel" class="input-sm form-control m-l" value="" placeholder="填页数" style="width: 60px;"></span>--%>
            <%--<span class="t-cell"><button class="btn btn-sm btn-default" type="button">跳转</button></span>--%>
            <%--</div>--%>
            <%--</div>--%>
        </div>
    </footer>
</section>

<%@include file="../commonSys/systemFooter.jsp" %>

<script type="text/javascript">


    //获得首页新闻列表
    function getFirstWebList(){
        var jsonObject = {type:2};
        var option = {
            url:'<%=basePath%>' + 'news/getNewsList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    console.log('dataList===='+JSON.stringify(dataList));
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['newsId'] +"</td>"+
                                "<td>"+ dataList[i]['newsTitle'] +"</td>"+
                                "<td>"+ dataList[i]['newsTypeDesc'] +"</td>"+
                                "<td>"+ ( dataList[i]['newsInfo'].length>30?dataList[i]['newsInfo'].substr(0,30)+'...':dataList[i]['newsInfo'] ) +"</td>"+
                                "<td> "+ dataList[i]['createTime'] +" </td>"+
                                "<td> "+ dataList[i]['clickNum'] +" </td>"+
                                "<td>"+
                                "<a class='a-c-blue m-r editBtn' href='<%=basePath%>oskaSystems/news/newsEdit.jsp?active=3&type=2&newsId=" + dataList[i]['newsId'] + "' >编辑</a>"+
                                "</td></tr>";
                    }

                    $("#firstWeb").html(htmlStr);
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
        $.ajax(option);
    }

    //获得推荐新闻列表
    function getRecommendList(){
        var jsonObject = {type:3};
        var option = {
            url:'<%=basePath%>' + 'news/getNewsList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    console.log('dataList===='+JSON.stringify(dataList));
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['newsId'] +"</td>"+
                                "<td>"+ dataList[i]['newsTitle'] +"</td>"+
                                "<td>"+ dataList[i]['newsTypeDesc'] +"</td>"+
                                "<td>"+ ( dataList[i]['newsInfo'].length>30?dataList[i]['newsInfo'].substr(0,30)+'...':dataList[i]['newsInfo'] ) +"</td>"+
                                "<td> "+ dataList[i]['createTime'] +" </td>"+
                                "<td> "+ dataList[i]['clickNum'] +" </td>"+
                                "<td>"+
                                "<a class='a-c-blue m-r editBtn' href='<%=basePath%>oskaSystems/news/newsEdit.jsp?active=3&type=3&newsId=" + dataList[i]['newsId'] + "'>编辑</a>"+
                                "</td></tr>";
                    }

                    $("#recommendList").html(htmlStr);
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
        $.ajax(option);
    }

    //获得新闻列表
    function getList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'news/getNewsList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    console.log('dataList===='+JSON.stringify(dataList));
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['newsId'] +"</td>"+
                                "<td>"+ dataList[i]['newsTitle'] +"</td>"+
                                "<td>"+ dataList[i]['newsTypeDesc'] +"</td>"+
                                "<td>"+ ( dataList[i]['newsInfo'].length>30?dataList[i]['newsInfo'].substr(0,30)+'...':dataList[i]['newsInfo'] ) +"</td>"+
                                "<td> "+ dataList[i]['createTime'] +" </td>"+
                                "<td> "+ dataList[i]['clickNum'] +" </td>"+
                                "<td>"+
                                "<a class='a-c-blue m-r editBtn' href='<%=basePath%>oskaSystems/news/newsEdit.jsp?active=3&type=1&newsId=" + dataList[i]['newsId'] + "' >编辑</a>"+
                                "<a class='c-red y-pointer m-r delBtn' id='del_" + dataList[i]['newsId'] + "'>删除</a>"+
                                "</td></tr>";
                    }

                    $("#newsList").html(htmlStr);
                    $("#total").html(data.data.count);
                    createPagePlugin(data.data.count,jsonObj.size);
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
        $.ajax(option);
    }

    //获得新闻列表
    function getnewsList(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'news/getNewsList',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    var dataList = data.data.dataList;
                    console.log('dataList===='+JSON.stringify(dataList));
                    var htmlStr = "";
                    for(var i=0;i<dataList.length;i++){
                        htmlStr +=  "<tr><td>"+ dataList[i]['newsId'] +"</td>"+
                            "<td>"+ dataList[i]['newsTitle'] +"</td>"+
                            "<td>"+ dataList[i]['newsTypeDesc'] +"</td>"+
                            "<td>"+ ( dataList[i]['newsInfo'].length>30?dataList[i]['newsInfo'].substr(0,30)+'...':dataList[i]['newsInfo'] ) +"</td>"+
                            "<td> "+ dataList[i]['createTime'] +" </td>"+
                            "<td> "+ dataList[i]['clickNum'] +" </td>"+
                            "<td>"+
                            "<a class='a-c-blue m-r editBtn' href='<%=basePath%>oskaSystems/news/newsEdit.jsp?active=3&type=1&newsId=" + dataList[i]['newsId'] + "' >编辑</a>"+
                            "<a class='c-red y-pointer m-r delBtn' id='del_" + dataList[i]['newsId'] + "'>删除</a>"+
                            "</td></tr>";
                    }

                    $("#newsList").html(htmlStr);
                }else{
                    console.log("code为0； 查询失败")
                }
            },
            error:function(msg){
                console.log(msg);
            }
        };
        $.ajax(option);
    }

    //删除新闻
    function delBtnFun(jsonObj){
        var jsonObject = jsonObj;
        var option = {
            url:'<%=basePath%>' + 'news/deleteNews',
            type:'post',
            data:{jsonObject:JSON.stringify(jsonObject)},
            success:function(data){
//            console.log(data);
                data = JSON.parse(data);
                if(data.code=='1'){
                    alert(data.msg);
                    var jsonObjS = {nub:"",size:""};
                    getnewsList(jsonObjS);
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

    //searchBtn
    $("#searchBtn").click(function(){
        var jsonObj = {nub:0,size:1,type:1};
        var formObj = $("#formObj").serializeObject();
        jsonObj = $.extend(jsonObj,formObj);
        console.log("jsonObj===============" + JSON.stringify(jsonObj));
        getList(jsonObj);
    });

    //editBtn
    <%--$("body").on("click",".editBtn",function(){--%>
        <%--var newsIdVal = $(this).attr("id").split("_")[1];--%>
        <%--if(newsIdVal=="" || newsIdVal==undefined){--%>
            <%--alert("获取Id异常！");--%>
        <%--}else {--%>
            <%--window.location.href = "<%=basePath%>" + "oskaSystems/news/newsEdit.jsp?newsId=" + newsIdVal;--%>
        <%--}--%>
    <%--});--%>

    //delBtn
    $("body").on("click",".delBtn",function(){
        if(confirm("确定要删除吗？")){
            var newsIdVal = $(this).attr("id").split("_")[1];
            var jsonObj = {newsId:newsIdVal};
            console.log("jsonObj===========" + JSON.stringify(jsonObj));
            delBtnFun(jsonObj);
        }
    });

    //分页 pagePlugin
    var createPagePlugin = function(total, size) {
        $("#paging").empty();
        paging = pagePlugin.createPaging({
            renderTo: 'paging',
            total: total,
            pageSize: size,
            currentPage:1
        });
        paging.goPage = function(from, to) {
            pageFun(from - 1, size);
        }
    };
    //翻页
    var pageFun = function(from,pageSize){
        var jsonObj = {nub: "" + from,size: "" + pageSize,type:1};
        var formObj = $("#formObj").serializeObject();
        jsonObj = $.extend(jsonObj,formObj);
        getnewsList(jsonObj);
    }

    //初始化
    function init(){
        getFirstWebList();
        getRecommendList();
        var jsonObj = {nub:0,size:1,type:1};
        getList(jsonObj);
    }
    init();
</script>
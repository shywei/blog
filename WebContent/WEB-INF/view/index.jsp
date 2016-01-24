<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>姑射蝉</title>
<script>
    $(document).ready(function(){
        $("#add").click(function(){
            $("#send").attr('href',"${pageContext.request.contextPath}/say?id="+$("#id").val());
        });
        $("#upload").fileinput({
            uploadUrl: "${pageContext.request.contextPath}/upload", // server upload action
            uploadAsync: true,
            language: 'zh', //设置语言
            //uploadUrl: uploadUrl, //上传的地址
            allowedFileExtensions: ['jpg', 'gif', 'png','css','pptx','txt'],//接收的文件后缀
            //showUpload: true, //是否显示上传按钮
            showCaption: false,//是否显示文件名文本框
            browseClass: "btn btn-primary", //按钮样式     
            //dropZoneEnabled: false,//是否显示拖拽区域,只有ajax类型的有效
            //minImageWidth: 50, //图片的最小宽度
            //minImageHeight: 50,//图片的最小高度
            //maxImageWidth: 1000,//图片的最大宽度
            //maxImageHeight: 1000,//图片的最大高度
            //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
            //minFileCount: 0,
            maxFileCount: 4, //表示允许同时上传的最大文件个数
            enctype: 'multipart/form-data',
            //validateInitialCount:true,//是否验证数量
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",//无法预览的文件的显示图标
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！"//错误消息
        });
    });
</script>
</head>
<body>    
    <div class="home">    
        <div class="header row-fluid">
        <c:if test="${not empty sessionScope.user}">
            <div class="pull-right">
                <a class="headItem"  href="${ctx}/logout">退出</a>
            </div>
            <div class="pull-right">
                <a class="headItem"  href="${ctx}/articles/form">新文章</a>
            </div>
            </c:if>
            <div class="pull-right">
                <a class="headItem"  href="${ctx}/guestBook">留言板</a>
            </div>
            <c:if test="${empty sessionScope.user}">
            <div class="pull-right">
                <a class="headItem"  onclick="login()">登录</a>
            </div>
            </c:if>
        </div>
        <div class="jumbotron" style="background-color: inherit;margin-bottom:0px;">            
            <div class="container welcome">
                <h1>聒噪千年</h1>
                <p>藐姑射之山</p>
                <p>有神人居焉</p>
                <p>肌肤若冰雪</p>
                <p>淖约若处子</p>
                <p>不食五谷</p>
                <p>吸风饮露</p>
                <p>乘云气</p>
                <p>御飞龙</p>
                <p>而游乎四海之外</p>
                <p>——《庄子·逍遥游》</p>
                <p>
                    <a class="ghost-button-transition" href="${ctx}/articles/list" role="button">进入博客</a>
                </p>
            </div>
        </div>
        <!-- 
        <div class="container">
            <h1>上传文件测试</h1>
            <div class="row-fluid">
                <div class="span2"></div>
                <div class="span8">
                    <input id="upload" name="upload" type="file" multiple
                        class="file-loading">
                </div>
                <div class="span2"></div>
            </div>
        </div> -->
    </div>
    <div class="contents">
        <div class="container">
         <br>
         <c:forEach begin="0" end="2" items="${articles}" var="article">
         <div class="article">
             <h2 class="articleTicle">${article.title}</h2>
             <p class="articleDate">${fn:substring(article.create_date,0,19)}</p>
             <hr>
             <div>${article.content}</div>             
             <hr>
             <div class="row-fluid">
                 <a href="${ctx}/articles/view?id=${article.id}#comment" class="pull-left comment">
                 评论(${article.count})
                 </a>
                 <a href="${ctx}/articles/view?id=${article.id}" class="pull-right comment">
                 查看全文
                 </a>
                 <br>
             </div>
         </div>         
         <br>
         </c:forEach>
        </div>
    </div>
    <div class="footer">
        <div class="container">
            <br>
            <div class="row">
                <div class="col-sm-3">
                    <h5>最新文章</h5>
                    <div class="row">
                        <div class="col-xs-12">
                            <p><a href="${ctx}/articles/view?id=${articles[0].id}">${articles[0].title}&nbsp;&nbsp;<span style="font-size:12px;">${fn:substring(articles[0].create_date,0,10)}</span></a></p>
                            <p><a href="${ctx}/articles/view?id=${articles[1].id}">${articles[1].title}&nbsp;&nbsp;<span style="font-size:12px;">${fn:substring(articles[1].create_date,0,10)}</span></a></p>
                            <p><a href="${ctx}/articles/view?id=${articles[2].id}">${articles[2].title}&nbsp;&nbsp;<span style="font-size:12px;">${fn:substring(articles[2].create_date,0,10)}</span></a></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <h5>友情链接</h5>
                    <div class="row">
                        <div class="col-xs-12">
                            <a href="http://slfmessi.github.io/" target="_blank">琛珏的个人网站</a>
                        </div>
                        <div class="col-xs-12">
                            <a href="http://v3.bootcss.com/" target="_blank">Bootstrap中文文档</a>
                        </div>                        
                    </div>
                </div>
                <div class="col-sm-3">
                    <h5>标签云</h5>
                    <div class="row">
                        <div class="col-xs-12">
                            <a href="${ctx}/404">你点我试试</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <h5>关于作者</h5>
                    <div class="row">
                        <div class="col-xs-12">
                            <p><a href="${ctx}/aboutme">本站说明</a></p>
                            <p><a href="${ctx}/guestBook">在线留言</a></p>
                            <p><a href="http://weibo.com/u/1795303815" target="_blank">新浪微博</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <br>
        </div>
        <div class="foot">
            <div>
                <span style="color:#A8A9AD">Copyright ©2016 <a href="${ctx}">姑射蝉</a></span>
            </div>
        </div>
    </div>
</body>
</html>
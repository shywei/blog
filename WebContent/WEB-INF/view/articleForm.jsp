<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>新文章</title>
<script type="text/javascript">
    $(document).ready(function(){
        //alert("${articles}");
        $("#save").click(function(){
            $("#content").val(UE.getEditor('container').getContent());
            $("#contentText").val(UE.getEditor('container').getContentTxt());
            $("#inputForm").attr("action","${ctx}/articles/save");
            $("#inputForm").submit();
        });
        $("#temp").click(function(){
            $("#content").val(UE.getEditor('container').getContent());
            $("#contentText").val(UE.getEditor('container').getContentTxt());
            $("#inputForm").attr("action","${ctx}/articles/temp");
            $("#inputForm").submit();
        });
    });
</script>
</head>
<body>
<%@ include file="/WEB-INF/view/include/header.jsp"%>
    <div class="contents">
        <div class="container">
        <br>
            <form id="inputForm" class="form-horizontal" method="post">
                <input type="hidden" id="id" name="id" value="${articles[0].id}">
                <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="title" name="title" value="${articles[0].title}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">正文</label>
                    <div class="col-sm-10">
                        <input type="hidden" class="form-control" id="content" name="content">
                        <input type="hidden" class="form-control" id="contentText" name="contentText">
                        <!-- 加载编辑器的容器 -->
                        <script id="container" name="ue_content" type="text/plain">
                ${articles[0].content}
                   </script>
                        <!-- 实例化编辑器 -->
                        <script type="text/javascript">
                        var ue = UE.getEditor('container');
                        </script>
                    </div>
                </div>        
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button id="save" class="btn btn-default">发布</button>
                        <button id="temp" class="btn btn-default">存为草稿</button>
                        <button id="view" class="btn btn-default">预览</button>
                        <button id="back" class="btn btn-default">返回</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="borderImage"></div>
    </div>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>
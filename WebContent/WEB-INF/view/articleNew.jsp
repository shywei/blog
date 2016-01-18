<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>新文章</title>
</head>
<body>
	<div class="container">
	<br>
		<form class="form-horizontal">
			<input type="hidden" id="${article.id}">
			<div class="form-group">
				<label for="title" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="title">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">正文</label>
				<div class="col-sm-10">
					<input type="hidden" class="form-control" id="content" name="content">
					<!-- 加载编辑器的容器 -->
					<script id="container" name="ue_content" type="text/plain">
        		这里写你的初始化内容
   				</script>
					<!-- 实例化编辑器 -->
					<script type="text/javascript">
		        	var ue = UE.getEditor('container');
		    		</script>
				</div>
			</div>		
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">发布</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
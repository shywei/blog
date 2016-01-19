<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>文章详情</title>
</head>
<body>
<%@ include file="/WEB-INF/view/include/header.jsp"%>
    <div class="contents">
        <div class="container">
         <br>
         <div class="article">
             <h2 class="articleTitle">${articles[0].title}</h2>
             <p class="articleTitle articleDate">发表于：${fn:substring(articles[0].create_date,0,19)} 更新于：${fn:substring(articles[0].update_date,0,19)}</p>
             <hr>
             <div>${articles[0].content}</div>             
             <hr>
             <div class="row-fluid">
                 <a class="pull-left">
                 评论（${articles[0].count}）
                 </a>
                 <a href="${ctx}/articles/form?articleId=${articles[0].id}" class="pull-right">
                 修改
                 </a>
                 <br>
             </div>
         </div>         
         <br>
        </div>
        <div class="borderImage"></div>
    </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>
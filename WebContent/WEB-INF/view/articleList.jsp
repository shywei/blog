<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>文章列表</title>
</head>
<body>
<%@ include file="/WEB-INF/view/include/header.jsp"%>
    <div class="contents">
    <br>
        <div class="container">        
         <c:forEach items="${articles}" var="article">
         <div class="article">
             <h2 class="articleTicle">${article.title}</h2>
             <p class="articleDate">${fn:substring(articles[0].create_date,0,19)}</p>
             <hr>
             <div>${article.content}</div>             
             <hr>
             <div class="row-fluid">
                 <a class="pull-left">
                 评论（${article.count}）
                 </a>
                 <a href="${ctx}/articles/view?id=${article.id}" class="pull-right">
                 全文链接
                 </a>
                 <br>
             </div>
         </div>         
         <br>
         </c:forEach>
        </div>
        <div class="borderImage"></div>
    </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>
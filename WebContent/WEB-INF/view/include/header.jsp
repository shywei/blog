<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>  
<div id="header" class="contents row-fluid">
    <div class="header">
        <div class="row-fluid">
            <c:if test="${not empty sessionScope.user}">
            <div class="pull-right">
                <a class="tabs"  href="${ctx}/logout">退出</a>
            </div>             
            <div class="pull-right">
                <a class="tabs"  href="${ctx}/articles/form">新文章</a>
            </div>
            </c:if>
            <c:if test="${empty sessionScope.user}">
            <div class="pull-right">
                <a class="tabs" onclick="login()">登录</a>
            </div>        
            </c:if>
        </div>
        <div class="row-fluid">
            <div class="container">
                <h1>姑射蝉</h1>
                <h4>聒噪千年</h4>
            </div>
        </div>
    </div>
    <div class="container">
        <a class="tabs"  href="${ctx}/articles/list">首页</a>
        <a class="tabs"  href="${ctx}/articles/list">归档</a>
        <c:if test="${not empty sessionScope.user}">
        <a class="tabs"  href="${ctx}/articles/templist">草稿箱</a>
        </c:if>
        <a class="tabs"  href="${ctx}/guestBook">留言板</a>
        <a class="tabs"  href="${ctx}/aboutme">关于我</a>
    </div>
    <div class="borderImage"></div>
</div>
<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>404-ERROR</title>
<script type="text/javascript" >
    $(document).ready(function(){
        if($("#mainContent").height()<$(document).height())
            $("#mainContent").height($(document).height());
    });
</script>
</head>
<body class="contents">
    <div id="mainContent" class="contents">
        <div class="container" style="text-align:center">
           <br>
            <div class="row">
               <img src="${ctxStatic}/images/y.png">
           </div>
           <br>  
           <div class="row">      
               <img src="${ctxStatic}/images/lzy.jpg">
           </div>
           <br>
               <div class="row">
               <a href="${ctx}/articles/list"><img title="回到首页" src="${ctxStatic}/images/hgj.png"></a>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="${ctx}/guestBook"><img title="去喷作者" src="${ctxStatic}/images/fnmdx.png"></a>    
            </div>    
        </div>
   </div>
</body>
</html>
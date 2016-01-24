<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>关于作者</title>
<script type="text/javascript" >
    $(document).ready(function(){
        if($("#mainContent").height()<$(document).height()-$("#header").height()-$("#footer").height())
            $("#mainContent").height($(document).height()-$("#header").height()-$("#footer").height());
    });
</script>
</head>
<body>
<%@ include file="/WEB-INF/view/include/header.jsp"%>
    <div id="mainContent" class="contents">
    <br>
        <div class="container">        
               <dl>
                 <dt><h2>关于我</h2></dt>
                 <dd>&nbsp;&nbsp;单身狗 程序员 dota2 巴萨 日漫痴...大抵如此。</dd>
                 <br>
                 <dd>
                     <ul>
                         <li>新浪微博：<a href="http://weibo.com/u/1795303815" target="_blank">申胖子不二</a></li>
                         <li>电子邮箱：shy_we@163.com</li>
                         <li>LinkedIn：<a href="http://www.linkedin.com/in/yawei-shen-177059108" target="_blank">yawei shen</a></li>
                     </ul>                 
                 </dd>
                 <dt><h2>关于本站</h2></dt>
                 <dd>&nbsp;&nbsp;本站是作者出于学习的目的一时冲动……</dd>
                 <br>
                 <dd>
                     <ul>
                         <li>使用Spring+Bootstrap搭建于百度云开放平台，具体实现请参见源码。</li>
                         <li>风格部分参考了<a href="http://www.lofter.com/" target="_blank">网易LOFTER</a>。</li>
                         <li>源代码托管于github：<a href="https://github.com/shywei/blog" target="_blank">github.com/shywei/blog</a></li>
                     </ul>
                 </dd>
                 <dt><h2>版权申明</h2></dt>
                 <dd>&nbsp;&nbsp;虽然根本没什么人看，但说一下感觉很高大上呢。</dd>
                 <br>
                 <dd>
                     <ul>
                         <li>本站源代码开源，使用mit协议（基本就是没有限制，随意使用）。</li>
                         <li>本站所有文章作者保留一切权利，个人转载请标明原作者及原文地址，商业用途请联系作者（醒醒）。</li>
                     </ul>
                 </dd>
             </dl>             
        </div>        
    </div>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>
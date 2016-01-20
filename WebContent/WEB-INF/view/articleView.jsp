<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>文章详情</title>
<script type="text/javascript" >
    $(document).ready(function(){
        $("#anonymous").change(function(){
            if($("#anonymous").is(':checked')){
                $("#createBy").val("不愿透露姓名的王司徒");
                $("#createBy").attr("readonly","readonly");
                $("#commentType").val("1");
                $("#commentContent").attr('placeholder',"粗鄙之语");
            }                
            else{
                $("#createBy").removeAttr("readonly");
                $("#createBy").val("");
                $("#commentType").val("0");
                $("#commentContent").attr('placeholder',"必有高论");
            }                
        });
        $("#newComment").validate({
        	 rules: {
        		   createBy: {
        		    	required: true,
        		    	maxlength: 10
        		   },
        		   commentContent: {
        		    	required: true,
        		    	maxlength: 300
        		   }
       		  },
        	messages: {
        		   createBy: {
        		    	required: "无名之辈不得插嘴",
        		    	maxlength: "10字以上请充值"
        		   },
        		   commentContent: {
        		    	required: "没话说你点什么点",
        		    	maxlength: "超过300字的评论没人会看的"
        		   }
       		  }
        })
    });
</script>
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
             <div class="articleContent">${articles[0].content}</div>             
             <div class="borderLine"></div>
             <div class="row-fluid">
                 <!-- JiaThis Button BEGIN -->
                <div class="jiathis_style"><span class="jiathis_txt">分享到：</span>
                    <a class="jiathis_button_qzone"></a>
                    <a class="jiathis_button_tsina"></a>
                    <a class="jiathis_button_tqq"></a>
                    <a class="jiathis_button_weixin"></a>
                    <a class="jiathis_button_renren"></a>
                    <a class="jiathis_button_douban"></a>
                    <a class="jiathis_button_email"></a>
                    <a class="jiathis_button_fb"></a>
                    <a class="jiathis_button_twitter"></a>
                    <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank"></a>
                </div>
                               
                 
                 <a href="${ctx}/articles/delete?articleId=${articles[0].id}" class="pull-right comment">
                 删除
                 </a>
                 <a href="${ctx}/articles/form?articleId=${articles[0].id}" class="pull-right comment">
                 修改
                 </a>
                 <br>
             </div>
         </div>         
         <br>
        </div>
        <div class="container">
            <div class="article">
                <form id="newComment" class="form-horizontal" method="post" action="${ctx}/comments/save">
                    <input type="hidden" value="${articles[0].id}" id="articleId" name="articleId">
                    <div class="form-group">
                        <label for="createBy" class="col-sm-2 control-label item-label">来者何人</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="createBy" name="createBy" placeholder="可是诸葛孔明？">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="col-sm-2 control-label  item-label">安敢饶舌</label>
                        <div class="col-sm-10">
                          <input id="commentType" name="commentType" type="hidden" value="0">
                          <input id="anonymous" type="checkbox">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="content" class="col-sm-2 control-label  item-label">我有一言</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="commentContent" name="commentContent" placeholder="必有高论"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">                     
                              <button type="submit" class="btn btn-default">住口！</button> 
                          </div>
                       </div>
                </form>               
             </div>
             <br>
         </div>
        <div class="container">
            <div class="article">
                <p class="pull-left comment">评论(${articles[0].count}) </p>
                <br>
                <div class="row-fluid">
                    <c:if test="${not empty comments}">
                    <ul class="notes">
                    <c:forEach items="${comments}" var="comment">
                        <li class="note">
                            <span>
                            <c:if test="${comment.type eq 1}">
                                <b class="userTitle">腐 
草之萤光</b>&nbsp;
                            </c:if>
                            <c:if test="${comment.type eq 0}">
                                <b class="userTitle">天空之皓月</b>&nbsp;
                            </c:if>
                                <b>${comment.create_by}</b>&nbsp;
                                发表于&nbsp; ${fn:substring(articles[0].create_date,0,19)}
                            </span>
                            <p>${comment.content}</p>
                        </li>
                    </c:forEach>
                    </ul>
                    </c:if>
                    <c:if test="${empty comments}">
                       <ol class="notes">
                           <li class="note">
                           当前还没有评论。
                           </li>
                       </ol>
                    </c:if>
                </div>
             </div>
         </div>
        <div class="borderImage"></div>
    </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp"%>
    <script type="text/javascript" >
        var jiathis_config={
            summary:"${fn:substring(articles[0].content_text,0,30)}",
            title:"《${articles[0].title}》——姑射蝉"
        }
    </script>
    <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
    <!-- JiaThis Button END --> 
</body>
</html>
<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>留言板</title>
<script type="text/javascript" >
    $(document).ready(function(){
        if($("#mainContent").height()<$(document).height()-$("#header").height()-$("#footer").height())
            $("#mainContent").height($(document).height()-$("#header").height()-$("#footer").height());
        $("#anonymous").change(function(){
            if($("#anonymous").is(':checked')){
                $("#createBy").val("不愿透露姓名的王司徒");
                $("#createBy").attr("readonly","readonly");
                $("#noteType").val("1");
                $("#noteContent").attr('placeholder',"粗鄙之语");
            }                
            else{
                $("#createBy").removeAttr("readonly");
                $("#createBy").val("");
                $("#noteType").val("0");
                $("#noteContent").attr('placeholder',"必有高论");
            }                
        });
        $("#newNote").validate({
             rules: {
                   createBy: {
                        required: true,
                        maxlength: 10
                   },
                   noteContent: {
                        required: true,
                        maxlength: 300
                   }
                 },
            messages: {
                   createBy: {
                        required: "无名之辈不得插嘴",
                        maxlength: "10字以上请充值"
                   },
                   noteContent: {
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
    <div id="mainContent" class="contents">
         <br>
        <div class="container">
            <div class="article">
                <form id="newNote" class="form-horizontal" method="post" action="${ctx}/guestBook/save">
                    <div class="form-group">
                        <label for="createBy" class="col-sm-2 control-label item-label">来者何人</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="createBy" name="createBy" placeholder="可是诸葛孔明？">
                        </div>
                      </div>
                       <div class="form-group">
                        <label class="col-sm-2 control-label  item-label">安敢饶舌</label>
                        <div class="col-sm-10">
                          <input id="noteType" name="noteType" type="hidden" value="0">
                          <input id="anonymous" type="checkbox">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="content" class="col-sm-2 control-label  item-label">我有一言</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="noteContent" name="noteContent" placeholder="必有高论"></textarea>
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
                <p class="pull-left comment">留言数(${fn:length(guestbook)}) </p>
                <br>
                <div class="row-fluid">
                    <c:if test="${not empty guestbook}">
                    <ul class="notes">
                    <c:forEach items="${guestbook}" var="note">
                        <li class="note">
                            <span>
                            <c:if test="${note.type eq 1}">
                                <b class="userTitle">腐 
草之萤光</b>&nbsp;
                            </c:if>
                            <c:if test="${note.type eq 0}">
                                <b class="userTitle">天空之皓月</b>&nbsp;
                            </c:if>
                                <b>${note.create_by}</b>&nbsp;
                                发表于&nbsp; ${fn:substring(note.create_date,0,19)}
                            </span>
                            <p>${note.content}</p>
                        </li>
                    </c:forEach>
                    </ul>
                    </c:if>
                    <c:if test="${empty guestbook}">
                       <ol class="notes">
                           <li class="note">
                           当前还没有留言。
                           </li>
                       </ol>
                    </c:if>
                </div>
             </div>
         </div>
    </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp"%>
</body>
</html>
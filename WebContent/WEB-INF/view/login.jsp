<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%@ include file="/WEB-INF/view/include/head.jsp"%>
<title>${articles[0].title}</title>
<script type="text/javascript" >
    $(document).ready(function(){
        $("#myAlert").hide();
        $("#loginForm").validate({
             rules: {
                   name: {
                        required: true,
                        maxlength: 50
                   },
                   password: {
                        required: true,
                        maxlength: 50
                   }
                 },
            messages: {
                   name: {
                        required: "名字都卜填登录个妮儿啊",
                        maxlength: "太长不看"
                   },
                   password: {
                        required: "密码都没有的咯",
                        maxlength: "太长不看"
                   }
                 },
            submitHandler: function(form){
                //loading('正在提交，请稍等...');
                $.ajax({
                    type: "GET",
                     url: "${pageContext.request.contextPath}/user/login?name="+$("#name").val()+"&password="+$("#password").val(),
                     //data: {title:$("#title").val(), encoding:$("#encoding").val()},
                     async: true,
                     dataType: "json",
                     success:function(data){
                         if(data==false){
                             $("#myAlert").show();
                         }
                         else if(data=='already'){
                             top.$('#jBox-overlay').click();
                         }
                         else if(data==true){
                             top.location.reload();
                         }
                     }
                })

            }
        })
    });
</script>
</head>
<body>
    <div class="container">        
           <br>                
        <div id="myAlert" class="alert alert-warning">
           <a href="#" class="close" data-dismiss="alert">&times;</a>
           <strong>用户名或者密码不正确</strong>
        </div>
         <form id="loginForm" class="form-horizontal">
               <div class="form-group"><label class="col-sm-2 control-label item-label"></label><h1 class="col-sm-10">お帰り</h1></div>
             <div class="form-group">
                 <label for="name" class="col-sm-2 control-label item-label">用户名</label>
                 <div class="col-sm-10">
                     <input type="text" class="form-control" id="name" name="name" value="${name}" placeholder="name">
                 </div>
               </div>
                <div class="form-group">
                 <label for="password" class="col-sm-2 control-label  item-label">密码</label>
                 <div class="col-sm-10">
                   <input id="password" name="password" class="form-control" type="password" value="${password}" placeholder="password">
                 </div>
               </div>                      
               <div class="form-group">
                 <div class="col-sm-offset-2 col-sm-10">                     
                       <button type="submit" class="btn btn-default">登录</button> 
                   </div>
                </div>
         </form>               
     </div>
     <br>
</body>
</html>
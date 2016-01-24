<script src="${ctx}/static/jquery-2.2.0.min.js" type="text/javascript"></script>
<link href="${ctx}/static/bootstrap-3.3.4-dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/kartik-v-bootstrap-fileinput-186574d/css/fileinput.min.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/bootstrap-3.3.4-dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/static/kartik-v-bootstrap-fileinput-186574d/js/fileinput.min.js" type="text/javascript"></script>
<script src="${ctx}/static/kartik-v-bootstrap-fileinput-186574d/js/fileinput_locale_zh.js" type="text/javascript"></script>
<link href="${ctx}/static/css/blog.css" type="text/css" rel="stylesheet" />
<!-- 配置文件 -->
<script type="text/javascript" src="${ctx}/static/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="${ctx}/static/ueditor/ueditor.all.js"></script>
<script src="${ctx}/static/jquery-validation-1.14.0/dist/jquery.validate.min.js" type="text/javascript"></script>
<link href="${ctx}/static/jquery-validation-1.14.0/demo/site-demos.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/jBox-0.3.2/jBox.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/jBox-0.3.2/jBox.min.js" type="text/javascript"></script>
<script type="text/javascript">
function login(){
    informModal = new jBox('Modal',{  
         content:'<iframe id="loginFrame" name="loginFrame" src="${ctx}/login" style="overflow:visible;display: block;min-height:400px" scrolling="no" frameborder="0" width="100%"></iframe>',
         width: 800,
         constructOnInit: true
     }).open(); 
}
</script>

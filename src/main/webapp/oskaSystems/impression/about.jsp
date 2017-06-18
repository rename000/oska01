<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="a-content m-v-40 text-center">
    <h3 class="h3">项目描述</h3>
    <div id="div1" style="height: 300px;">
        <p>请输入内容...</p>
    </div>
</div>

<script type="text/javascript" src="../../js/wangEditor/wangEditor.min.js" ></script>
<script>
    var editor = new wangEditor('div1');
    editor.create();
</script>

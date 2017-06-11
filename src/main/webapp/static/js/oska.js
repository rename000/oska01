/**
 * Created by liuhan on 2017/6/11.
 */
//upload file
function uploadFileFun (fileId,inputId,uploadAction,callback){
    $("#"+fileId).fileinput({
        showUpload: false,
        language:'zh',
        uploadAsync:true,
        dropZoneEnabled:false,
        uploadUrl:uploadAction,
        maxFileCount: 1,
        maxImageWidth: 600,
        resizeImage: false,
        showCaption: false,
        showPreview: false,
        //browseClass: "btn",
        previewFileIcon: ""
        //allowedFileExtensions : ['png','jpg','xls']//允许的文件类型
    }).on("filebatchselected", function(event, files) {

        $(this).fileinput("upload");
        //showMessage('<i class="fa fa-spinner uploadAct"></i> &nbsp;正在上传中...');

    }).on("fileuploaded", function(event, data) {

        //$('.uploadAct').parent().parent().parent().remove();
        alert('上传成功!');

        var dataList = data.response;
        callback(dataList);

    }).on('fileuploaderror', function(msg) {

        //$('.uploadAct').parent().parent().parent().remove();
        alert('上传失败!');
        console.log('上传失败,请检查接口是否正确; '+'errorMsg:'+JSON.stringify(msg));
    });
};


//upload file success
function successFun(filePath,datas,inputID,imgID){
    console.log("datas========="+ JSON.stringify(datas));
    var datas = eval(datas);
    var fileUrl = datas['data']['fileUrl'];
    //console.log('fileName==='+fileName);
    //var fileUrl = filePath + fileName;
    //console.log('fileUrl==='+fileUrl);
    $('#'+imgID).attr('src',fileUrl);
    $('#'+inputID).val(fileUrl);
    console.log('upload data:'+JSON.stringify(datas));
}

//表单序列化json对象
$.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [ o[this.name] ];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
}
/**
 * 封装GET POST的请求
 * @author Jayin Ton
 */
if ("undefined" == typeof $) throw new Error("QC Client's JavaScript requires jQuery"); 

var qc = {};
qc.base_url = "/LightMeeting";
qc.debug = false;

qc.log = function(msg){
    if(this.debug){
        console.log(msg);
    }
}
//  GET
qc.get =  function (url,params,success_handler,error_hander,faild_hander){
    // $.get(url,params)
    if(params && typeof params === 'object'){
         for (var key in params){
            url += '/' + key + '/' + params[key];
        }
    }
    url = qc.base_url + url;

    qc.log("GET url : " );
    qc.log(url);

    $.get(url,function(json){
        qc.log("Return : " );
        qc.log(json);
        //success
        if(json.code){
            if(success_handler){
                success_handler(json.response);
            }
        }else{
            //error
            if(error_hander){
                error_hander(json.msg);
            }
        }
    },'json').fail(faild_hander);
}
// POST
qc.post = function(url,data,success_handler,error_hander,faild_hander){
    url = qc.base_url + url;

    qc.log("POST url : " );
    qc.log(url);
    qc.log("Data : " );
    qc.log(data);

    $.post(url,data,function(json){
        qc.log("Return : " );
        qc.log(json);
        if(json.code){
            if(success_handler){
                success_handler(json.response);
            }
        }else{
            if(error_hander){
                error_hander(json.msg);
            }
        }
    },'json').fail(faild_hander);
}






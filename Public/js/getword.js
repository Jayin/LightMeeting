function getsymbol(wid){
	showtab_a(1,wid);
	showtab(1,wid);
	
	if($("#sycontent"+wid).html()!=""){
		return ;
	}
	$("#sycontent"+wid).empty();
	url="../fanyi/getsymbol?wid="+wid;
	$.get(url,function(data){
		var obj = eval('(' + data + ')');

		for (x in obj){
			//alert("part:"+obj[x].part+"mean:"+obj[x]);
			$("#sycontent"+wid).append(obj[x].part);
			means=obj[x].means;
			for(y in means){
				$("#sycontent"+wid).append(means[y]);
			}

			$("#sycontent"+wid).append("<br />");
			
		}
		//把字符串转换成json
		
	});
	
	//$("#sycontent"+wid).append("hello");
}


function getcizuxiyu(wid){
	showtab_a(2,wid);
	showtab(2,wid);
	if($("#cicontent"+wid).html()!=""){
		return ;
	}
	$("#cicontent"+wid).empty();
	url="../fanyi/getcizuxiyu?wid="+wid;
	$.get(url,function(data){
		var obj = eval('(' + data + ')');
		var i=1;
		
		if(obj=='' || obj==null){
			$("#cicontent"+wid).append("查无该词例句");
		}else{
			for (x in obj){
				
				$("#cicontent"+wid).append(i+":"+obj[x].cizu_name);
				$("#cicontent"+wid).append("<br />&nbsp;"+obj[x].jx_cn_mean);
				$("#cicontent"+wid).append("<br />&nbsp;"+obj[x].jx_en_mean);
				lj=obj[x].lj;
				$("#cicontent"+wid).append("<br />&nbsp;"+lj.lj_ly);
				$("#cicontent"+wid).append("<br />&nbsp;"+lj.lj_ls);
				
				i++;
				$("#cicontent"+wid).append("<br /><br />");
				
			}
		}

		//把字符串转换成json
		
	});
}


function getcollins(wid){
	showtab_a(3,wid);
	showtab(3,wid);
	
	if($("#cocontent"+wid).html()!=""){
		return ;
	}
	$("#cocontent"+wid).empty();
	url="../fanyi/getcollins?wid="+wid;
	$.get(url,function(data){
		var obj = eval('(' + data + ')');
		var i=1;
		if(obj=='' || obj==null){
			$("#cocontent"+wid).append("该词无此字典内容");
		}else{
			for (x in obj){
				//alert("part:"+obj[x].part+"mean:"+obj[x]);
				$("#cocontent"+wid).append(i+":"+obj[x].tran);
				$("#cocontent"+wid).append("<br />&nbsp;"+obj[x].def);
				example=obj[x].example;
				$("#cocontent"+wid).append("<br />&nbsp;"+example.tran);
				$("#cocontent"+wid).append("<br />&nbsp;"+example.ex);
				
				i++;
				$("#cocontent"+wid).append("<br /><br />");
				
			}
		}

		//把字符串转换成json
		
	});
}

function getexchange(wid){
	showtab_a(4,wid);
	showtab(4,wid);
	
	if($("#excontent"+wid).html()!=""){
		return ;
	}
	$("#excontent"+wid).empty();
	url="../fanyi/getexchange?wid="+wid;
	$.get(url,function(data){
		var obj = eval('(' + data + ')');
		if(obj=='' || obj==null){
			$("#excontent"+wid).append("该词无此字典内容");
		}else{
				$("#excontent"+wid).append(" 第三人称单数："+obj.word_third);
				$("#excontent"+wid).append("<br/> 复数："+obj.word_pl);
				$("#excontent"+wid).append("<br/> 过去分词："+obj.word_done);
				$("#excontent"+wid).append("<br/> 过去式："+obj.word_past);
				$("#excontent"+wid).append("<br/> 现在进行时："+obj.word_ing);
		}

		//把字符串转换成json
		
	});
}

function showtab(num,wid){
	//控制特定id模块上的显示
	$('#tab-content-1'+wid).hide(100);
	$('#tab-content-2'+wid).hide(100);
	$('#tab-content-3'+wid).hide(100);
	$('#tab-content-4'+wid).hide(100);
	$('#tab-content-'+num+""+wid).show(100);
	
}

function showtab_a(num,wid){
	//更换选中的背景
	$('#tab-but1'+wid).removeClass('tab-active');
	$('#tab-but2'+wid).removeClass('tab-active');
	$('#tab-but3'+wid).removeClass('tab-active');
	$('#tab-but4'+wid).removeClass('tab-active');
	$('#tab-but'+num+""+wid).addClass('tab-active');
	
}


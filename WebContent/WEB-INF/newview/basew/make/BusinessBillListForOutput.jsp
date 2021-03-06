<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ${pageContext.request.contextPath} -->
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META http-equiv=Pragma content=no-cache>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Expires content=0>
<TITLE>产量登记 | 管理易-广告加工制作管理软件  企业版 9.28  | 易凯软件</TITLE>
<script src="${pageContext.request.contextPath}/jswf/minierp.js?ver=ent9.27"></script>
<head>
<link href="${pageContext.request.contextPath}/css/Query.css?ver=ent9.27" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/calendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.css?ver=ent9.27" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/BillList.css?ver=ent9.27" />
<script src="${pageContext.request.contextPath}/jswf/QueryList.js?ver=ent9.27"></script>
<script src="${pageContext.request.contextPath}/jswf/popup_ext.js?ver=ent9.27"></script>
<script src="/calendar/dhtmlgoodies_calendar/dhtmlgoodies_calendar.js?ver=ent9.27"></script>
<script language="javascript">
	function refreshWin(){
		if(popRetVal!=null){
			window.location=window.location;
		}
	}
	function doNew(id){
		var url="${pageContext.request.contextPath}/make/OutputFullForm.html?item_id="+id;
		ShowIframe("产量登记",url,900,500,"refreshWin()");
	}
	function doMultiNew(){
		var ob_arr = document.getElementsByName("query_checkbox");
		var str="",wcId="";
		for (i=0;i<ob_arr.length;i++){
			if (ob_arr[i].checked == true){
				if(wcId!="" && wcId!=ob_arr[i].getAttribute("wc_id")){
					ShowAlert("提示框","同一工作中心的项目才能批量登记",200,100);
					return;
				}
				
				if(str!=""){
					str=str+";";
				}
				str = str+ob_arr[i].value;
				wcId=ob_arr[i].getAttribute("wc_id");
			}
		}
		if(str!=""){
			var url="../make/OutputMultForm.html?wc_id="+wcId+"&item_id="+str;
			ShowIframe("产量登记",url,900,300,"refreshWin()");
		}else{
			ShowAlert('提示框','请选择要登记的项目',200,100);
		}
	}
	function showOutput(bbCode,wcId,mtId){
		var url='${pageContext.request.contextPath}/make/OutputSearchResult.html?search_type=1&cb_bb_code=1&bb_code='+bbCode+'&cb_wc=1&wc_id='+wcId;
		if(mtId!=null && mtId!="" && mtId!="0"){
			url=url+'&cb_mt=1&mt_id='+mtId;
		}
		showWin(1024,600,url);
	}
	function doJump(pageIndex){
		if(window.event.keyCode==13){
			doGo(pageIndex);
		}
	}
	function doCancel(){
		window.close();
	}
	function doInit(){
		//Window_Onload();
		if(window.screen.availWidth>1024){
			var w=window.screen.availWidth*0.98;
			window.resizeTo(w,600);
			//居中
			var resizeWinTop=(window.screen.availHeight-600)/2;
			var resizeWinLeft=(window.screen.availWidth-w)/2;
			window.moveTo(resizeWinLeft,resizeWinTop);
		}
		document.getElementById("bill_code").focus();
	}
	function createPageParaStr(){
		var str="start_date="+encodeURIComponent(document.getElementById("start_date").value);
		str=str+"&end_date="+encodeURIComponent(document.getElementById("end_date").value);
		str=str+"&del_start="+encodeURIComponent(document.getElementById("del_start").value);
		str=str+"&del_end="+encodeURIComponent(document.getElementById("del_end").value);
		str=str+"&est_name="+encodeURIComponent(document.getElementById("est_name").value);
		str=str+"&bill_code="+encodeURIComponent(document.getElementById("bill_code").value);
		str=str+"&cont"+encodeURIComponent(document.getElementById("cont").value);
		str=str+"&mng_name="+encodeURIComponent(document.getElementById("mng_name").value);
		str=str+"&desi_name="+encodeURIComponent(document.getElementById("desi_name").value);
		str=str+"&foll_name="+encodeURIComponent(document.getElementById("foll_name").value);
		str=str+"&intr_name="+encodeURIComponent(document.getElementById("intr_name").value);
		str=str+"&crea_name="+encodeURIComponent(document.getElementById("crea_name").value);
		str=str+"&wc_id="+document.getElementById("wc_id").value;
		str=str+"&ts_id="+document.getElementById("ts_id").value;
		str=str+"&fc="+encodeURIComponent(document.getElementById("fc").value);
		str=str+"&requ="+encodeURIComponent(document.getElementById("requ").value);
		str=str+"&mt_id="+document.getElementById("mt_id").value;
		str=str+"&order_by="+document.getElementById("order_by").value;
		str=str+"&order_sc="+document.getElementById("order_sc").value;
		var maked="A";
		if(document.getElementById("make1").checked){
			maked="Y";
		}else if(document.getElementById("make2").checked){
			maked="N";
		}
		str=str+"&maked="+maked;
		
		var comp="A";
		if(document.getElementById("comp1").checked){
			comp="Y";
		}else if(document.getElementById("comp2").checked){
			comp="N";
		}
		str=str+"&comp="+comp;
		return str;
	}
	
	function createProgramParaStr(){
		var str="start_date="+encodeURIComponent(document.getElementById("hid_start_date").value);
		str=str+"&end_date="+encodeURIComponent(document.getElementById("hid_end_date").value);
		str=str+"&del_start="+encodeURIComponent(document.getElementById("hid_del_start").value);
		str=str+"&del_end="+encodeURIComponent(document.getElementById("hid_del_end").value);
		str=str+"&est_name="+encodeURIComponent(document.getElementById("hid_est_name").value);
		str=str+"&bill_code="+encodeURIComponent(document.getElementById("hid_bill_code").value);
		str=str+"&cont="+encodeURIComponent(document.getElementById("hid_cont").value);
		str=str+"&mng_name="+encodeURIComponent(document.getElementById("hid_mng_name").value);
		str=str+"&desi_name="+encodeURIComponent(document.getElementById("hid_desi_name").value);
		str=str+"&foll_name="+encodeURIComponent(document.getElementById("hid_foll_name").value);
		str=str+"&intr_name="+encodeURIComponent(document.getElementById("hid_intr_name").value);
		str=str+"&crea_name="+encodeURIComponent(document.getElementById("hid_crea_name").value);
		str=str+"&wc_id=";
		str=str+"&ts_id=2";
		str=str+"&requ="+encodeURIComponent(document.getElementById("hid_requ").value);
		str=str+"&fc="+encodeURIComponent(document.getElementById("hid_fc").value);
		str=str+"&mt_id=";
		str=str+"&order_by=";
		str=str+"&order_sc=";
		str=str+"&maked=";
		str=str+"&comp=";
		return str;
	}
	function doSearch(){
		var str;
		if(IsAdvSearch){//高级
			str="search_type=1";
			if(document.getElementById("cb_bill_code").checked){
				var billCode=document.getElementById("bill_code").value.trim();
				if(billCode==null || billCode==""){
					ShowAlert('提示框','请输入业务单号',200,100);
					return;
				}
				str=str+"&cb_bill_code=1";
			}
			if(document.getElementById("cb_order_date").checked){
				if(!checkDateStr(document.getElementById("start_date").value,"订货开始日期")){
					return;
				}
				if(!checkDateStr(document.getElementById("end_date").value,"订货结束日期")){
					return;
				}
				str=str+"&cb_order_date=1";
			}
			if(document.getElementById("cb_del_date").checked){
				if(!checkDateStr(document.getElementById("del_start").value,"交货开始日期")){
					return;
				}
				if(!checkDateStr(document.getElementById("del_end").value,"交货结束日期")){
					return;
				}
				str=str+"&cb_del_date=1";
			}
			if(document.getElementById("cb_fc").checked){
				var fc=document.getElementById("fc").value.trim();
				if(fc==null || fc==""){
					ShowAlert('提示框','请输入内容',200,100);
					return;
				}
				str=str+"&cb_fc=1";
			}
			if(document.getElementById("cb_requ").checked){
				var requ=document.getElementById("requ").value.trim();
				if(requ==null || requ==""){
					ShowAlert('提示框','请输入制作要求',200,100);
					return;
				}
				str=str+"&cb_requ=1";
			}
			if(document.getElementById("cb_est").checked){
				var estName=document.getElementById("est_name").value.trim();
				if(estName==null || estName==""){
					ShowAlert('提示框','请输入订货单位',200,100);
					return;
				}
				str=str+"&cb_est=1";
			}
			if(document.getElementById("cb_mt").checked){
				var mtId=document.getElementById("mt_id").value;
				if(mtId==null || mtId=="" || mtId=="0"){
					ShowAlert('提示框','请选择项目类型',200,100);
					return;
				}
				str=str+"&cb_mt=1";
			}
			if(document.getElementById("cb_wc").checked){
				var wcId=document.getElementById("wc_id").value;
				if(wcId==null || wcId=="" || wcId=="0"){
					ShowAlert('提示框','请选择工作中心',200,100);
					return;
				}
				str=str+"&cb_wc=1";
			}
			if(document.getElementById("cb_cont").checked){
				var cont=document.getElementById("cont").value.trim();
				if(cont==null || cont==""){
					ShowAlert('提示框','请输入摘要',200,100);
					return;
				}
				str=str+"&cb_cont=1";
			}
			if(document.getElementById("cb_mng").checked){
				var mngName=document.getElementById("mng_name").value.trim();
				if(mngName==null || mngName==""){
					ShowAlert('提示框','请输入业务员姓名',200,100);
					return;
				}
				str=str+"&cb_mng=1";
			}
			if(document.getElementById("cb_desi").checked){
				var desiName=document.getElementById("desi_name").value.trim();
				if(desiName==null || desiName==""){
					ShowAlert('提示框','请输入设计员姓名',200,100);
					return;
				}
				str=str+"&cb_desi=1";
			}
			if(document.getElementById("cb_foll").checked){
				var follName=document.getElementById("foll_name").value.trim();
				if(follName==null || follName==""){
					ShowAlert('提示框','请输入跟单人姓名',200,100);
					return;
				}
				str=str+"&cb_foll=1";
			}
			if(document.getElementById("cb_intr").checked){
				var intrName=document.getElementById("intr_name").value.trim();
				if(intrName==null || intrName==""){
					ShowAlert('提示框','请输入业务来源',200,100);
					return;
				}
				str=str+"&cb_intr=1";
			}
			if(document.getElementById("cb_crea").checked){
				var creaName=document.getElementById("crea_name").value.trim();
				if(creaName==null || creaName==""){
					ShowAlert('提示框','请输入开单人姓名',200,100);
					return;
				}
				str=str+"&cb_crea=1";
			}
			if(document.getElementById("cb_ts").checked){
				var tsId=document.getElementById("ts_id").value;
				if(tsId==null || tsId=="" || tsId=="0"){
					ShowAlert('提示框','请选择帐套',200,100);
					return;
				}
				str=str+"&cb_ts=1";
			}
			if(document.getElementById("cb_order").checked){
				var orderBy=document.getElementById("order_by").value;
				if(orderBy==null || orderBy==""){
					ShowAlert('提示框','请选择排序类型',200,100);
					return;
				}
				str=str+"&cb_order=1";
			}
			if(document.getElementById("cb_make").checked){
				str=str+"&cb_make=1";
			}
			if(document.getElementById("cb_comp").checked){
				str=str+"&cb_comp=1";
			}
		}else{//快速
			str="search_type=2";
		}
		var paraStr=createPageParaStr();
		if(paraStr!=""){
			str=str+"&"+paraStr;
		}
		window.location="/make/BusinessBillListForOutput.html?"+str;
	}
	function doGo(pageIndex){
		var str=getSearchCondition();
		str=str+"&current_page="+pageIndex;
		window.location="/make/BusinessBillListForOutput.html?"+str;
	}
	function getSearchCondition(){
		var searchType="1";
		var str="search_type="+searchType;
		if(searchType=="1"){//高级
			
			
			
			
			
			
			
			
			
			
			
			str=str+"&cb_ts=1";
			
			
			
			
			
			
		}else{//快速
			
		}
		var paraStr=createProgramParaStr();
		if(paraStr!=""){
			str=str+"&"+paraStr;
		}
		return str;
	}
	function DoubleClick(it){
		var ob_arr = document.getElementsByName("query_checkbox");
		var id="";
		if(ob_arr.length>=it.getAttribute("index")){
			id=ob_arr[it.getAttribute("index")-1].value;
		}
		if(id==""){
			return;
		}
		doNew(id);
	}
	function doAutoCheck(objId){
		if(document.getElementById(objId).style.visibility!="hidden"){
			document.getElementById(objId).checked=true;
		}
	}
	function doDownload(){
		var str=getSearchCondition();
		window.location="/make/BusinessBillListForOutput.html?content_type=EXCEL&"+str;
	}
	function selectStafferName(objId,checkObjId){
		var url="../base/StafferMainForSelect.html";
		var cb="selectStafferNameCallBack('"+objId+"','"+checkObjId+"')";
		ShowIframe("选择员工",url,800,500,cb,900,600);
	}
	function selectStafferNameCallBack(objId,checkObjId){
		if(popRetVal!=null){
			var arr=popRetVal.split(";");
			document.getElementById(objId).value=arr[1];
			doAutoCheck(checkObjId);
		}
	}
	function checkInput(){
		if(window.event.keyCode==13){
			doSearch();
		}
	}
	function showList(type,id){
		var str="search_type=1";
		if(type=="UN_MAKE"){
			str=str+"&cb_make=1&maked=N";
		}else if(type=="MAKE"){
			str=str+"&cb_make=1&maked=Y";
		}else if(type=="WC"){
			str=str+"&cb_wc=1&wc_id="+id;
		}else{
			return;
		}
		window.location="/make/BusinessBillListForOutput.html?"+str;
	}
	function selectEstName(){
		var url="../base/EstablishmentListForSelect.html?type=CLIENT";
		ShowIframe("选择客户",url,900,500,"selectEstNameCallBack()");
	}
	function selectEstNameCallBack(){
		if(popRetVal!=null){
			document.getElementById("est_name").value=popRetVal[1];
			doAutoCheck("cb_est");
		}
	}
</script>
</head>
<body oncontextmenu="return false">
<div class="Wrap"><!-- 页面主框架 -->
    
	<div id="ListContainer" class="Container"><!-- 主体容器 -->
	    
	    <!-- 标题栏 -->
	    <div class="Heading BillIcon">
	        <div class="HeadingContent">
	            <h1>产量登记</h1>
	            <span class="Note">最近60天的项目可以在这里登记每道工序的产量，通过录入制作人与完成比例（1表示完成100%，0.5表示完成50%，以此类推）来计算制作人员的产量，可以同时将项目设置为已完工，已完工的项目字体为<span style="color:blue">蓝色</span></span>
	        </div>
	    </div>
	
		<!-- 主内容 -->
		<div class="Content">
	        <!-- 筛选控件栏 -->
	        <div class="FilterBar ClearFix">
	            <div class="SearchIcon"></div>
	            <span class="fl">
	            	<table class="MoreOption" cellpadding="0" cellspacing="0">
	            		<th class="c1" width="80px">
	            			<input type="checkbox" name="cb_bill_code" id="cb_bill_code"  style="visibility:hidden;" />
	            			业务单号
	            		</th>
	            		<td class="c1" width="260px">
	            			<input type="text" class="TextBox" maxlength="50" name="bill_code" id="bill_code" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_bill_code');" value="" >
							<input type="hidden" id="hid_bill_code" value="">
	            		</td>
	            	</table>
	            </span>
	            <span class="fr">
	            	<a href="javascript:;" id="lnkMoreOption">更多查询选项</a>
		  			<input type="button" value=" 查 询" onClick="doSearch();" class="buttom search-but">
		  			<input type="button" value=" 登 记" onClick="doMultiNew();" class="buttom search-add">
		  			<input type="button" value=" 导 出" onClick="doDownload();" class="buttom search-out" >
	            </span>
				<div id="dvMoreOptionBox" class="MoreOptionBox" style="display:none;">
					<table class="MoreOption" cellpadding="0" cellspacing="0">
						<tr>
							<th class="c1" width="80px">
			        			<input name="" type="checkbox" name="cb_order_date" id="cb_order_date" >
			        			订货日期
			        		</th>
			        		<td width="260px">
			        			<input type="text" class="TextBox Datetime" maxlength="15" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_order_date');" id="start_date" name="start_date" value="" >
								<img src="../images/calendar.gif" class="imgIconButton" onClick="displayCalendar(document.getElementById('start_date'),'yyyy-mm-dd',this,false,'doAutoCheck(\'cb_order_date\')');">
								<input type="hidden" id="hid_start_date" value="">
					            	至
								<input type="text" class="TextBox Datetime" maxlength="15" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_order_date');" id="end_date" name="end_date" value="" >
								<img src="../images/calendar.gif" class="imgIconButton" onClick="displayCalendar(document.getElementById('end_date'),'yyyy-mm-dd',this,false,'doAutoCheck(\'cb_order_date\')');">
								<input type="hidden" id="hid_end_date" value="">
			    			</td>
			    			<th class="c2" width="80px">
			        			<input type="checkbox" name="cb_make" id="cb_make" >
			        			开工状态
			        		</th>
			        		<td class="c3" width="180px">
			        			<input type="radio" name="make" id="make1" onClick="doAutoCheck('cb_make');" >已开工
								<input type="radio" name="make" id="make2" onClick="doAutoCheck('cb_make');" checked="true">未开工
			    			</td>
			    			<th class="c2" width="80px">
			        			<input type="checkbox" name="cb_mng" id="cb_mng" >
			        			业务员
			        		</th>
			    			<td class="c3" width="180px">
			        			<input type="text" class="TextBox" maxlength="15" name="mng_name" id="mng_name" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_mng');" value="" >
	                        	<img src="${pageContext.request.contextPath}/images/make-a.gif" class="imgIconButton" onClick="selectStafferName('mng_name','cb_mng');" />
	                        	<input type="hidden" id="hid_mng_name" value="">
			    			</td>
			    		</tr>
			    		<tr>
							<th class="c1">
			        			<input name="" type="checkbox" name="cb_del_date" id="cb_del_date" >
			        			交货日期
			        		</th>
			        		<td>
			        			<input type="text" class="TextBox Datetime" maxlength="15" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_del_date');" id="del_start" name="del_start" value="" >
								<img src="${pageContext.request.contextPath}/images/calendar.gif" class="imgIconButton" onClick="displayCalendar(document.getElementById('del_start'),'yyyy-mm-dd',this,false,'doAutoCheck(\'cb_del_date\')');">
								<input type="hidden" id="hid_del_start" value="">
					            	至
								<input type="text" class="TextBox Datetime" maxlength="15" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_del_date');" id="del_end" name="del_end" value="" >
								<img src="${pageContext.request.contextPath}/images/calendar.gif" class="imgIconButton" onClick="displayCalendar(document.getElementById('del_end'),'yyyy-mm-dd',this,false,'doAutoCheck(\'cb_del_date\')');">
								<input type="hidden" id="hid_del_end" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_comp" id="cb_comp" >
			        			完工状态
			        		</th>
			        		<td class="c3">
			        			<input type="radio" name="comp" id="comp1" onClick="doAutoCheck('cb_comp');" >已完工
								<input type="radio" name="comp" id="comp2" onClick="doAutoCheck('cb_comp');" checked="true">未完工
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_desi" id="cb_desi" >
			        			设计员
			        		</th>
			    			<td class="c3">
			        			<input type="text" class="TextBox" maxlength="15" name="desi_name" id="desi_name" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_desi');" value="" >
	                        	<img src="${pageContext.request.contextPath}/images/make-a.gif" class="imgIconButton" onClick="selectStafferName('desi_name','cb_desi');" />
	                        	<input type="hidden" id="hid_desi_name" value="">
			    			</td>
			    		</tr>
			    		<tr>
							<th class="c1">
			        			<input type="checkbox" name="cb_est" id="cb_est" >
			        			订货单位
			        		</th>
			        		<td class="c1">
			        			<input type="text" class="TextBox" maxlength="50" name="est_name" id="est_name" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_est');" value="" >
								<img class="imgIconButton" src="${pageContext.request.contextPath}/images/make-a.gif" onClick="selectEstName();" />
								<input type="hidden" id="hid_est_name" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_fc" id="cb_fc" >
	                        	内容
			        		</th>
			    			<td class="c3">
			        			<input type="text" class="TextBox" maxlength="50" name="fc" id="fc" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_fc');" value="">
								<input type="hidden" id="hid_fc" value="">
			        		</td>
			        		<th class="c2">
			        			<input type="checkbox" name="cb_foll" id="cb_foll" >
			        			跟单员
			        		</th>
			    			<td class="c3">
			        			<input type="text" class="TextBox" maxlength="15" name="foll_name" id="foll_name" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_foll');" value="" >
	                        	<img src="${pageContext.request.contextPath}/images/make-a.gif" class="imgIconButton" onClick="selectStafferName('foll_name','cb_foll');" />
	                        	<input type="hidden" id="hid_foll_name" value="">
			    			</td>
			    		</tr>
			    		<tr>
			    			<th class="c1">
			        			<input type="checkbox" name="cb_cont" id="cb_cont" >
			        			摘要
			        		</th>
			        		<td class="c1">
			        			<input type="text" class="TextBox" maxlength="50" name="cont" id="cont" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_cont');" value="" >
								<input type="hidden" id="hid_cont" value="">
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_requ" id="cb_requ" >
	                        	制作要求
			        		</th>
			    			<td class="c3">
			        			<input type="text" class="TextBox" maxlength="50" name="requ" id="requ" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_requ');" value="">
								<input type="hidden" id="hid_requ" value="">
			        		</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_intr" id="cb_intr" >
			        			业务来源
			        		</th>
			    			<td class="c3">
			        			<input type="text" class="TextBox" maxlength="15" name="intr_name" id="intr_name" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_intr');" value="" >
	                        	<img src="${pageContext.request.contextPath}/images/make-a.gif" class="imgIconButton" onClick="selectStafferName('intr_name','cb_intr');" />
	                        	<input type="hidden" id="hid_intr_name" value="">
	                    	</td>
			    		</tr>
			    		<tr>
			    			<th class="c1">
			        			<input type="checkbox" name="cb_wc" id="cb_wc" >
			        			工作中心
			        		</th>
			        		<td class="c1">
			        			<select name="wc_id" id="wc_id" onFocus="doAutoCheck('cb_wc');">
					  				<option value="0">==请选择==</option>
					  				
					  				<option value="1" >默认工作中心</option>
					  				
					  				<option value="10" >型材仓库</option>
					  				
					  				<option value="12" >标识部</option>
					  				
					  				<option value="13" >标牌部</option>
					  				
								</select>
			    			</td>
			    			<th class="c2">
			        			<input type="checkbox" name="cb_mt" id="cb_mt" >
	                        	项目类型
			        		</th>
			    			<td class="c3">
			        			<select name="mt_id" id="mt_id" onFocus="doAutoCheck('cb_mt');">
									<option value="0">==请选择==</option>
									
<option value='10'>标牌</option>
<option value='11'>标识</option>
<option value='109'>标识标牌</option>
<option value='110'>&nbsp;|--指示牌</option>
<option value='111'>&nbsp;|--警示牌</option>
<option value='112'>&nbsp;|--桌牌</option>
<option value='113'>&nbsp;|--立牌</option>
<option value='114'>&nbsp;|--展示牌</option>
<option value='115'>&nbsp;|--户外标识</option>
<option value='116'>广告字</option>
<option value='117'>&nbsp;|--不发光立体字</option>
<option value='118'>&nbsp;|--背光立体字</option>
<option value='119'>&nbsp;|--发光立体字</option>
<option value='120'>&nbsp;|--光树脂发光立体字</option>
<option value='121'>&nbsp;|--立体发光立体字</option>
<option value='13'>型材销售</option>
<option value='17'>&nbsp;|--画框型材</option>
<option value='18'>&nbsp;|--画框配件</option>
<option value='34'>灯箱</option>
<option value='122'>&nbsp;|--吸塑灯箱</option>
<option value='123'>&nbsp;|--超薄灯箱</option>
<option value='124'>&nbsp;|--落地式灯箱</option>
<option value='125'>&nbsp;|--软膜灯箱</option>
<option value='126'>&nbsp;|--动态灯箱</option>
<option value='127'>&nbsp;|--LED灯箱</option>
<option value='128'>门头店招</option>
<option value='129'>&nbsp;|--彩条店招</option>
<option value='130'>&nbsp;|--模组店招</option>
<option value='131'>&nbsp;|--拉布内光店招</option>
<option value='132'>&nbsp;|--异形店招</option>
<option value='97'>标牌配件</option>
<option value='98'>东厂</option>
<option value='133'>快展器材</option>
<option value='134'>&nbsp;|--快展背景墙</option>
<option value='135'>&nbsp;|--X展架</option>
<option value='136'>&nbsp;|--易拉宝</option>
<option value='137'>&nbsp;|--注水旗杆</option>
<option value='138'>&nbsp;|--快展套装</option>
<option value='99'>成品标牌</option>
<option value='139'>展柜展架</option>
<option value='140'>&nbsp;|--靠墙柜</option>
<option value='141'>&nbsp;|--中岛柜</option>
<option value='142'>&nbsp;|--平柜</option>
<option value='143'>&nbsp;|--收银台</option>
<option value='144'>&nbsp;|--挂架</option>
<option value='145'>&nbsp;|--端架</option>
<option value='146'>&nbsp;|--地台</option>
<option value='147'>印刷</option>
<option value='148'>&nbsp;|--名片</option>
<option value='149'>&nbsp;|--宣传单</option>
<option value='150'>&nbsp;|--画册</option>
<option value='151'>&nbsp;|--手提袋</option>
<option value='152'>&nbsp;|--台挂历</option>
<option value='153'>促销用品</option>
<option value='154'>&nbsp;|--吊旗</option>
<option value='155'>&nbsp;|--太阳伞</option>
<option value='156'>&nbsp;|--条幅横幅</option>
<option value='157'>&nbsp;|--挂墙展板</option>
<option value='158'>&nbsp;|--拱门气球</option>
<option value='159'>&nbsp;|--礼品</option>
<option value='103'>喷绘</option>
<option value='104'>&nbsp;|--挂画</option>
<option value='105'>&nbsp;|--灯箱画片</option>
<option value='106'>&nbsp;|--高精图像片</option>
<option value='107'>&nbsp;|--户外彩喷</option>
<option value='108'>&nbsp;|--车身彩绘</option>
								</select>
			        		</td>
			    			
			    			<th class="c3">
			        			<input type="checkbox" name="cb_crea" id="cb_crea" >
			        			开单人
			        		</th>
			    			<td class="c3">
			        			<input type="text" class="TextBox" maxlength="15" name="crea_name" id="crea_name" onKeyUp="checkInput();" onFocus="doAutoCheck('cb_crea');" value="">
								<img class="imgIconButton" src="${pageContext.request.contextPath}/images/make-a.gif" onClick="selectStafferName('crea_name','cb_crea');" />
								<input type="hidden" id="hid_crea_name" value="">
			    			</td>
			    		</tr>
			    		<tr>
			    			<th class="c1">
			        			<input type="checkbox" name="cb_ts" id="cb_ts" checked="true">
			        			账套
			        		</th>
			        		<td class="c1">
			        			<select name="ts_id" id="ts_id" onFocus="doAutoCheck('cb_ts');">
					  				<option value="0">==请选择账套==</option>
					  				
					  				<option value="1" >新异</option>
					  				
					  				<option value="2" selected>网络公司</option>
					  				
				  				</select>
			    			</td>
			    			<th class="c2">&nbsp;</th>
			    			<td class="c3">&nbsp;</td>
			    			<th class="c2">&nbsp;</th>
			        		<td class="c3">&nbsp;</td>
			    			<th class="c3">&nbsp;</th>
			    			<td class="c3">&nbsp;</td>
			    		</tr>
					</table>
			    	
					<div class="OptionOrderBy">
						<input type="checkbox" name="cb_order" id="cb_order" >
						排序类型
						<select name="order_by" id="order_by" onFocus="doAutoCheck('cb_order');">
					  		<option value="">==请选择==</option>
					  		<option value="ORDER_DATE" >订货日期</option>
					  		<option value="DELIVER_DATE" >交货日期</option>
					  		<option value="BILL_CODE" >业务单号</option>
				  		</select>
				  		<select name="order_sc" id="order_sc" onFocus="doAutoCheck('cb_order');">
					  		<option value="ASC" >升序</option>
					  		<option value="DESC" >降序</option>
				  		</select>
	                    <span class="fr"><a href="javascript:;" id="lnkHiddenOption">隐藏查询选项</a></span>
	                </div>
				</div>
			</div>
			
			<!-- 提示信息显示栏 -->
	        <div class="MsgBar">
	            
<table width="98%" border="0" cellpadding="0" cellspacing="0">
	<tr id="errorMsgTr" style="display:none">
	  <td>
	  	<div class="msg-error" id="errorMsgTd">
	  	
	  	</div>
	  </td>
	</tr>
</table>
	        </div>
	        
	        <!-- 上栏 分页、操作等 -->
	        <div class="TopToolBar">
	            <table class="ListNoteInfo" cellpadding="0" cellspacing="0">
	            	<tr>
	                	<td>
	                		
						  	制作项目：5
	            			选择：
						  	<a href="javascript:showList('UN_MAKE');">未开工</a>
						  	<a href="javascript:showList('MAKE');">已开工</a>
						  	
						  		<a href="javascript:showList('WC',1);">默认工作中心</a>
						  	
						  		<a href="javascript:showList('WC',10);">型材仓库</a>
						  	
						  		<a href="javascript:showList('WC',12);">标识部</a>
						  	
						  		<a href="javascript:showList('WC',13);">标牌部</a>
						  	
	                	</td>
	            	</tr>
	            </table>
			</div>

		    <div class="table-list">
		        <table width="100%">
		          	<tr>
			          	<th width="14"><input type="checkbox" onClick="javascript:checkall(this);"></th>
						<th width="8%">日期</th>
						<th width="10%">单号</th>
						<th width="8%">订货单位</th>
						<th width="6%">项目类型</th>
						<th width="8%">内容</th>
						<th width="8%">材质</th>
						<th width="9%">规格</th>
						<th width="5%">单位</td>
						<th width="6%">数量</td>
						<th width="9%">制作要求</td>
						<th width="7%">工作中心</td>
						<th width="12%">完成情况</td>
						<th width="4%">操作</th>
		          	</tr> 
						<tbody>
	<s:iterator value="businessBillItemVOss" status="st">
			<tr>
				<td><input type="checkbox" onClick="javascript:ClickCheck(this,true);" name='query_checkbox' value="6695" wc_id="9" ></td>
			
				<td><s:property value="businessBillVO2[#st.index].orderDate" />777</td>
				<td><s:property value="businessBillVO2[#st.index].billCode" /></td>
				<td><s:property value="establishmentVOs[#st.index].estName" /></td>
				<td><s:property value="makeTypeVOs[#st.index].makeType" /></td>
				<td><s:iterator value="%{businessBillItemVOss[#st.index]}">
						<s:property value="finishedContent" />
					</s:iterator>
					</td>
					<td>
					
					 <s:iterator value="%{businessBillItemVOss[#st.index]}">
						<s:property value="proName" />
					</s:iterator> 
					</td>
					<td>
					<s:iterator value="%{businessBillItemVOss[#st.index]}">
						<s:property value="specification" />x<s:property value="amount" />
					</s:iterator></td>
				<td><s:iterator value="%{businessBillItemVOss[#st.index]}">
						<s:property value="priceType" />
					</s:iterator></td>
				<td><s:iterator value="%{businessBillItemVOss[#st.index]}">
						<s:property value="squareNum" />
					</s:iterator></td>
				<td><s:iterator value="%{businessBillItemVOss[#st.index]}">
						<s:property value="makeRequire" />
					</s:iterator></td>
			<td><s:property  value="workCenterVOs[#st.index].wcName"/></td>
				<td><s:property value="businessBillItemExtVOs[#st.index].compStr" /></td>
				<td><s:a action="chanLiangRegister_dengji?businessBillItemVO.id=%{businessBillItemVOss[#st.index][0].id}&businessBillItemVO.wcId=%{businessBillItemVOss[#st.index][0].wcId}&businessBillVO.id=%{businessBillVO2[#st.index].id}">登记</s:a></td>
			</tr>
		</s:iterator>
						</tbody>
		        </table>
			</div>
			
			<!-- 底栏 分页、操作等 -->
	        <div class="BottomToolBar ClearFix">
			    	
    <div class="table-bot">
    	
    	
    	 
    	  <img src="${pageContext.request.contextPath}/images/but001.gif"/>
    	  <img src=${pageContext.request.contextPath}/images/but002.gif"/>
    	    	
    	第 <input type="text" name="pageNumber" style="width:30px" value="1"
    	onKeyDown="javascript:doJump(this.value);" class="TextBox" style="vertical-align:bottom;"> 页 
    	共1页
		
		
        <img src="../images/but003.gif"/>
        <img src="../images/but004.gif"/>
		
    </div>
	        </div>
			
		</div>
	</div>
</div>
</body>
</html>
<script type="text/javascript">
	function ChangeWindowSize( container, maxWidth ){
	    setTimeout( function(){
	        var w1 = document.documentElement.clientWidth-40;
	        if( w1>maxWidth ) w1 = maxWidth;
	        else if( w1<970 ) w1 = 960;
	        container.style.width = w1+'px';
	    }, 300 );
	}
	var IsAdvSearch = false;
	(function(){
		doInit();
	    var ListContainer = document.getElementById('ListContainer');
	    ChangeWindowSize( ListContainer, 2020 );    // 超过 1280 的最大 1260 ，不全部铺满
	
	    var lnkMoreOption   = document.getElementById('lnkMoreOption');
	    var lnkHiddenOption = document.getElementById('lnkHiddenOption');
	    lnkMoreOption.onclick = function(){
	    	IsAdvSearch = true;
	        document.getElementById('dvMoreOptionBox').style.display = 'block';
	        document.getElementById('cb_bill_code').style.visibility = 'visible';
	        this.style.visibility = 'hidden';
	    };
	    lnkHiddenOption.onclick = function(){
	    	IsAdvSearch = false;
	        document.getElementById('dvMoreOptionBox').style.display = 'none';
	        document.getElementById('cb_bill_code').style.visibility = 'hidden';
	        lnkMoreOption.style.visibility = 'visible';
	    };
	})();
</script>

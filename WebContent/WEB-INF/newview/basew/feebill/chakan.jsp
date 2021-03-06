<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="0">
<title>费用单审核| 管理易-广告加工制作管理软件  企业版 9.28 | 易凯软件</title>
<script src="${pageContext.request.contextPath }/jswf/minierp.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/base.css">
<script src="${pageContext.request.contextPath }/jswf/jquery.js"></script>
<script src="${pageContext.request.contextPath }/jswf/popup_ext.js"></script>
<script language="javascript">
	function doCancel(){
		parent.ClosePop();
	}
	function doDisabled(id){
		var url = "../system/CancelReasonNew.html";
		ShowIframe("费用单审核",url,600,260,"doDisabledCallback("+id+")");
	}
	function doDisabledCallback(id){
		if(popRetVal!=null){
			$.post("./PurchaseBillCancel.html",{id:id,reason:popRetVal,show_aler:"Y"},function(data,status){
				parseDisaData(data,status);
			});
		}
	}
	function parseDisaData(data,status){
		if(status=="success"){
			//ie有时候会报个莫名其妙的错误(jquery.js里),好像是在parseData后马上返回就会出现
			setTimeout(function(){
        			parent.popRetVal="OK";
            		parent.ClosePop();
				},300);
		}else{
			ShowAlert('提示框','系统错误：'+status,200,100);
		}
	}
</script>
<%@taglib prefix="s" uri="/struts-tags" %>
</head>
<body oncontextmenu="return false" class="sheet modal-dialog" style=" padding-top:10px;">
<div class="sheet-main" id="bodyDiv" style="width:860px;">
  <div class="sheet-list" style="width:100%">
    <div class="modal-main search-business">
    	<div style="width:100%;">
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
			<tbody><tr>
				<td style="width:33%" rowspan="2"></td>
				<td style="width:33%;text-align:center" rowspan="2"><h2>费用单审核</h2></td>
				<td style="width:34%" class="tr">
					编号：${feeBillVO.billCode}
				</td>
			</tr>
			<tr>
				<td class="tr">日期：${feeBillVO.feeDate}</td>
			</tr>
		</tbody></table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
		    <tbody><tr>
				<td class="InfoTitleDivider"></td>
			</tr>
		</tbody></table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
			<tbody><tr>
		      	<th style="width:10%">收款单位：</th>
		      	<td style="width:23%">${feeBillVO.receiverName}</td>
		      	<th style="width:10%">银行账号：</th>
		     	<td style="width:23%">${bankAccountVO.bankName}</td>
		    	<td class="tr" style="width:34%">付款金额：${feeBillVO.cost}</td>
		    </tr>
		</tbody></table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
		    <tbody><tr>
				<td class="InfoTitleDivider"></td>
			</tr>
		</tbody></table>
		
		<div class="table-list">
			<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" id="itemTbl">
				<tbody id="itemRowTbl">
				<tr>
			<th>费用类型</th>
			<th>金额</th>
			<th>备注</th>
			<th>业务单号</th>
				</tr>
				
				<s:iterator value="feeBillItemVOs" status="st">
			<tr>
				<td><s:property value="%{feeTypeVOs[#st.index].typeName}"/></td>	
			<td>${cost}</td>
			<td>${mark}</td>
			<td>${bbCode }</td>
			</tr>
		</s:iterator>
				</tbody>
		  	</table>
		</div>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
		    <tbody><tr>
				<td class="InfoTitleDivider"></td>
			</tr>
		</tbody></table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-a2 BillElseInfo">
			<tbody><tr>
				<th>经办人：</th>
				<td>${feeBillVO.managerName}</td>
				<th>部门：</th>
					<td>${departmentVO.departmentName}</td>
			</tr>
			<tr>
				<th>摘要：</th>
		    	<td>${feeBillVO.mark}</td>
		    	<th>凭证：</th>
			</tr>
			
		</tbody></table>
		
		<div class="blank12">&nbsp;</div>
		<p class="give">
			<span>开单人：${feeBillVO.createrName}  &${feeBillVO.createTime}</span>
        	<span>审核人：${feeBillVO.examinerName}  &${feeBillVO.examineTime}</span>
			<span>单据帐套：	${tallySetVO.title }</span>
		</p>
		<s:a  class="buttom-a" action="feebillshenhe_ExaminedTongGuo?feeBillVO.id=%{feeBillVO.id}">审核通过</s:a>&nbsp;
<s:a action="feebillshenhe_toback?id=%{id}" class="buttom-a">退出</s:a>
		</div>
   </div>
  </div>
</div>

<audio controls="controls" style="display: none;"></audio></body><style type="text/css">#yddContainer{display:block;font-family:Microsoft YaHei;position:relative;width:100%;height:100%;top:-4px;left:-4px;font-size:12px;border:1px solid}#yddTop{display:block;height:22px}#yddTopBorderlr{display:block;position:static;height:17px;padding:2px 28px;line-height:17px;font-size:12px;color:#5079bb;font-weight:bold;border-style:none solid;border-width:1px}#yddTopBorderlr .ydd-sp{position:absolute;top:2px;height:0;overflow:hidden}.ydd-icon{left:5px;width:17px;padding:0px 0px 0px 0px;padding-top:17px;background-position:-16px -44px}.ydd-close{right:5px;width:16px;padding-top:16px;background-position:left -44px}#yddKeyTitle{float:left;text-decoration:none}#yddMiddle{display:block;margin-bottom:10px}.ydd-tabs{display:block;margin:5px 0;padding:0 5px;height:18px;border-bottom:1px solid}.ydd-tab{display:block;float:left;height:18px;margin:0 5px -1px 0;padding:0 4px;line-height:18px;border:1px solid;border-bottom:none}.ydd-trans-container{display:block;line-height:160%}.ydd-trans-container a{text-decoration:none;}#yddBottom{position:absolute;bottom:0;left:0;width:100%;height:22px;line-height:22px;overflow:hidden;background-position:left -22px}.ydd-padding010{padding:0 10px}#yddWrapper{color:#252525;z-index:10001;background:url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ab20.png);}#yddContainer{background:#fff;border-color:#4b7598}#yddTopBorderlr{border-color:#f0f8fc}#yddWrapper .ydd-sp{background-image:url(chrome-extension://eopjamdnofihpioajgfdikhhbobonhbb/ydd-sprite.png)}#yddWrapper a,#yddWrapper a:hover,#yddWrapper a:visited{color:#50799b}#yddWrapper .ydd-tabs{color:#959595}.ydd-tabs,.ydd-tab{background:#fff;border-color:#d5e7f3}#yddBottom{color:#363636}#yddWrapper{min-width:250px;max-width:400px;}</style></html>


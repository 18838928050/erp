<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="inc/TagLibs.jsp"%>
<%@ include file="inc/Title.jsp"%> 
<c:set var="pageTitle" value="入库单作废" />
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<head>
<link rel="stylesheet" type="text/css" href="/css/base.css" />
<script language="javascript">
	function doCancel(){
		parent.ClosePop();
	}
	function doDisabled(id){
		window.location = "/system/CancelReasonNew.ihtm?id="+id+"&cancel_type=inBill";
	}
	function doInit(){
	}
</script>
</head>
<body oncontextmenu="return false" onload="doInit();" class="sheet modal-dialog" style=" padding-top:10px;">
<div class="sheet-main" id="bodyDiv" style="width:860px;">
<form name="frm" method="post">
  <div class="sheet-list" style="width:100%">
    <div class="modal-main search-business">
    	<div style="width:100%;">
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
			<tr>
				<td style="width:33%" rowspan="2"></td>
				<td style="width:33%;text-align:center" rowspan="2"><h2>入库单作废</h2></td>
				<td style="width:34%" class="tr">
					编号：${record.inBill.billCode}
				</td>
			</tr>
			<tr>
				<td class="tr">入库日期：<fmt:formatDate value="${record.inBill.inDate}" pattern="yyyy-MM-dd HH:mm"/></td>
			</tr>
		</table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
		    <tr>
				<td class="InfoTitleDivider"></td>
			</tr>
		</table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
			<tr>
		      	<th style="width:6%">仓库：</th>
		      	<td style="width:24%">${record.stoName}</td>
		      	<th style="width:10%">供方类型：</th>
		     	<td style="width:16%">
		     		<c:if test="${record.inBill.offererType=='CLIENT'}">客户</c:if>
		    		<c:if test="${record.inBill.offererType=='PROVIDER'}">供应商</c:if>
		    		<c:if test="${record.inBill.offererType=='DEPARTMENT'}">部门</c:if>
		    		<c:if test="${record.inBill.offererType=='STOREHOUSE'}">仓库</c:if>
		    		<c:if test="${record.inBill.offererType=='WORK_CENTER'}">工作中心</c:if>
		    		<c:if test="${record.inBill.offererType=='COOPERATOR'}">外协商</c:if>
		     	</td>
		     	<th style="width:6%">供方：</th>
		     	<td style="width:16%">${record.offererName}</td>
		    	<td class="tr" style="width:22%">入库类型：${record.inTypeName}</td>
		    </tr>
		</table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
		    <tr>
				<td class="InfoTitleDivider"></td>
			</tr>
		</table>
		
		<div class="table-list">
			<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" id="itemTbl">
				<tbody id="itemRowTbl">
				<tr>
					<th width="15%">材料编号</th>
					<th>品名规格</th>
					<th width="10%">单位</th>
					<th width="10%">数量</th>
					<th width="10%">单价</th>
					<th width="10%">金额</th>
					<th width="20%">备注</th>
				</tr>
				<c:forEach var="item" items="${record.items}" varStatus="i">
				<tr>
					<td>${item.productCode}</td>
					<td>${item.productName}</td>
					<td>${item.unit}</td>
					<td><div align="right"><commonTag:parseBigDecimal source="${item.inBillItem.amount}" /></div></td>
					<td><div align="right"><c:if test="${currentUser.user.userType==1 || fn:indexOf(currentUser.privs,';STOR_COST;')!=-1}"><commonTag:parseBigDecimal source="${item.inBillItem.unitPrice}" /></c:if></div></td>
					<td><div align="right"><c:if test="${currentUser.user.userType==1 || fn:indexOf(currentUser.privs,';STOR_COST;')!=-1}"><commonTag:parseBigDecimal source="${item.inBillItem.cost}" /></c:if></div></td>
					<td>${item.inBillItem.mark}</td>
				</tr>
				</c:forEach>
				</tbody>
		  	</table>
		</div>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
		    <tr>
				<td class="InfoTitleDivider"></td>
			</tr>
		</table>
		
		<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-a2 BillElseInfo">
			<tr>
				<th>经办人：</th>
		    	<td>${record.inBill.managerName}</td>
		    	<th>备注：</td>
		    	<td>${record.inBill.Mark}</td>
		    	<th>&nbsp;</td>
		    	<td>&nbsp;</td>
			</tr>
		</table>

		<div class="blank12">&nbsp;</div>
		<p class="give">
			<span>开单人：${record.inBill.createrName} <c:if test="${record.inBill.createTime!=null}"><fmt:formatDate value="${record.inBill.createTime}" pattern="yyyy-MM-dd HH:mm"/></c:if></span>
    		<span>审核人：<c:if test="${record.inBill.examinerId!=0}">${record.inBill.examinerName} <c:if test="${record.inBill.examineTime!=null}"><fmt:formatDate value="${record.inBill.examineTime}" pattern="yyyy-MM-dd HH:mm"/></c:if></c:if></span>
			<span>单据帐套：${record.tallySetName}</span>
		</p>
		</div>
   	</div>
  </div>
	<div class="modal-buttom">
			<input type="button" class="buttom-a" value=" 作 废 " onClick="doDisabled('${record.inBill.id}');">
			<input type="button" class="buttom-a" value=" 退 出 " onClick="doCancel();">
	</div>  
</div>
</body>
</html>
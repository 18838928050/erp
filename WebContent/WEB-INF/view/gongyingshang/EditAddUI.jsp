<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this title</title>
</head>
<body>
	<s:form action="gongyingshang_%{establishmentVO.id==null?'dengji':'editSave'}">
		<input type="hidden" value="${establishmentVO.id}" name="establishmentVO.id">
		<input type="hidden" value="${establishmentVO.estType}" name="establishmentVO.estType">
		<input type="hidden" value="${establishmentVO.estTypeId}" name="establishmentVO.estTypeId">
		<input type="hidden" value="${establishmentVO.estLevelId}" name="establishmentVO.estLevelId">
		<input type="hidden" value="${establishmentVO.superiorId}" name="establishmentVO.superiorId">
		<input type="hidden" value="${establishmentVO.superiorIdStr}" name="establishmentVO.superiorIdStr">
		<input type="hidden" value="${establishmentVO.creditCost}" name="establishmentVO.creditCost">
		<input type="hidden" value="${establishmentVO.nameSpell}" name="establishmentVO.nameSpell">
		<input type="hidden" value="${establishmentVO.smsTime}" name="establishmentVO.smsTime">
		<input type="hidden" value="${establishmentVO.busTime}" name="establishmentVO.busTime">
		<input type="hidden" value="${establishmentVO.busCost}" name="establishmentVO.busCost">
		<input type="hidden" value="${establishmentVO.tallySetId}" name="establishmentVO.tallySetId">
		<td><input type="hidden" name="establishmentVO.linkman" value=" ${establishmentVO.linkman }"></td>
		
	
	编辑供应商
	基本信息
	<hr color="red">
	编号<input type="text" value="${establishmentVO.estCode}" name="establishmentVO.estCode">
	 名称 <input type="text" value="${establishmentVO.estName}" name="establishmentVO.estName">
	 经办人  <input type="text" value="${establishmentVO.managerName}" name="establishmentVO.managerName">
	 
	 状态 <input type="text" value="${establishmentVO.enabled}" name="establishmentVO.enabled">

		<hr color="red">
	辅助信息
电话 <input type="text" value="${establishmentVO.phone}" name="establishmentVO.phone">
传值<input type="text" value="${establishmentVO.fax}" name="establishmentVO.fax"> 
 email:<input type="text" value="${establishmentVO.email}" name="establishmentVO.email"> 

 网站地址<input type="text" value="${establishmentVO.webSite}" name="establishmentVO.webSite">

地区<input type="text" value="${establishmentVO.areaId}" name="establishmentVO.areaId">

邮编<input type="text" value="${establishmentVO.postcode}" name="establishmentVO.postcode">

地址<input type="text" value="${establishmentVO.address}" name="establishmentVO.address">

		<hr color="red">
		<br> 联系人
		
		
		<table width="30%" cellpadding="0" cellspacing="0" border="1" bordercolor="red" align="center">

			<tr>
				<td>姓名</td>
				<td>性別</td>
				<td>职务</td>
				<td>手机</td>
				<td>Email</td>
				<td>电话</td>
				<td>QQ</td>
				<td>备注</td>
				<td>主要</td>
				<td>操作</td>
			</tr>

			<s:iterator value="establishmentContactVOs" status="st">
			
					<input type="hidden" name="establishmentContactVOs[${ st.index}].id" value="${id}">
					<input type="hidden" name="establishmentContactVOs[${ st.index}].estId" value="${estId}">
					<input type="hidden" name="establishmentContactVOs[${ st.index}].tmpCode" value="${tmpCode}">
					
					
				<tr>
					<!-- 这个需要前台把一个数据分成两份 -->
					<td><input type="text" name="establishmentContactVOs[${ st.index}].contactName" value=" ${contactName }"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].sex" value=" ${sex }"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].possie" value=" ${possie }"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].mobile" value="${ mobile}"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].email" value="${ email}"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].phone" value="${ phone}"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].im" value="${ im}"></td>
					<td><input type="text" name="establishmentContactVOs[${ st.index}].mark" value="${ mark}"></td>
					<td><s:if test='isMain=="Y"'>主要</s:if> <s:if test='isMain=="N"'>不是</s:if></td>
					<td>前段删除</td>
				</tr>

			</s:iterator>
		</table>
		<hr color="red">
	银行资料
	<br> 开户银行1：<input type="text" value="${establishmentVO.bankName1}" name="establishmentVO.bankName1">
	银行账号1：<input type="text" value="${establishmentVO.bankAccCode1}" name="establishmentVO.bankAccCode1">

 开户名1：<input type="text" value="${establishmentVO.bankAccName1}" name="establishmentVO.bankAccName1">
	
 开户银行2：<input type="text" value="${establishmentVO.bankName2}" name="establishmentVO.bankName2">
	银行账号2：<input type="text" value="${establishmentVO.bankAccCode2}" name="establishmentVO.bankAccCode2">

 开户名2：<input type="text" value="${establishmentVO.bankAccName2}" name="establishmentVO.bankAccName2">



		<hr color="red">
		<br> 备注：<input type="text" value="${establishmentVO.mark}" name="establishmentVO.mark">

		<s:submit value="提交"></s:submit>
	</s:form>
	<br> 创建人${ establishmentVO.createrName} 创建时间${ establishmentVO.createTime} 账套${ tallySetVO.title}


</body>

</html>
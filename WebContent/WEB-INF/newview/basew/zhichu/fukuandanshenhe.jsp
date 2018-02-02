<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ${pageContext.request.contextPath} -->
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>付款单审核</title>
		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/css/bootstrap-table.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/base.css">
		<link href="${pageContext.request.contextPath}/css/Query.css" rel="stylesheet" type="text/css">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>

	<body class="sheet">
		<div class="sheet-main">
			<div class="sheet-top">
				<div class="content">
					<h2>付款单审核</h2>
					<div class="pull-right">
						<input type="text" class="TextBox" id="search_key" name="search_key" onkeyup="checkSearchKey();" value="" title="以供应商名称、供应商拼音字头、摘要、采购单号进行模糊查询">
						<select name="ts_id" id="ts_id">
							<option value="0">==请选择账套==</option>

							<option value="1" selected="">新异</option>

							<option value="2">网络公司</option>

						</select>
						<a type="button" class="buttom btn btn-default" href="#">查 询</a>
						<a type="button" class="buttom btn btn-default" href="#">审核通过</a>
					</div>
				</div>
			</div>
			<div class="sheet-list">
				<div class="search-business">
					<div class="blank24"></div>
					<table data-toggle="table" data-click-to-select="true">
						<thead>
							<tr>
						
								<th data-field="state" data-checkbox="true"></th>
								<th>单号</th>
								<th>日期</th>
								<th>收款单位</th>
								<th>金额</th>
								<th>摘要</th>
								<th>经办人</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="payBillVOs" status="st">
			<tr>
			<td></td>
				<td>${billCode}</td>

				<td>${payDate}</td>
	<td><s:property value="%{establishmentVOs[#st.index].estName}" />
				<td>${cost}</td>
				<td>${mark}</td>
				<td>${managerName}</td>
				<td><s:a action="paybillshenhe_ExaminedTongGuo?payBillVO.id=%{id}">审核通过</s:a><s:a action="paybillshenhe_ChaZhaoByPayBillId?payBillVO.id=%{id}">查看</s:a></td>
			</tr>
		</s:iterator>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="14">
									<div class="pull-right">
										<a style="cursor:pointer" onclick=""><img src=${pageContext.request.contextPath}/images/but001.gif"></a>
										<a style="cursor:pointer" onclick=""><img src=${pageContext.request.contextPath}/images/but002.gif"></a>
										第 <input type="text" name="pageNumber" style="width:30px" value="1" onkeydown="javascript:doJump(this.value);" class="TextBox"> 页 共1页
										<a style="cursor:pointer" onclick=""><img src="${pageContext.request.contextPath}/images/but003.gif"></a>
										<a style="cursor:pointer" onclick=""><img src="${pageContext.request.contextPath}/images/but004.gif"></a>
									</div>
								</td>
							</tr>
						</tfoot>
					</table>
					<!-- 底栏 分页、操作等 -->
					<div class="BottomToolBar ClearFix">
						<div class="pull-right">
							<a type="button" class="buttom btn btn-default" style="width: 100px;" href="#">返回主菜单</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="${pageContext.request.contextPath}/jswf/jquery-3.0.0.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/jswf/bootstrap-table.js"></script>
		<script src="${pageContext.request.contextPath}/jswf/bootstrap-table-zh-CN.min.js"></script>
	</body>

</html>
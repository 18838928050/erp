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
		<title></title>
		<!-- Bootstrap -->
		<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/css/bootstrap-table.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/css/Query.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/dhtmlgoodies_calendar.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/BillList.css">

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>
		<div class="Wrap">
			<!-- 页面主框架 -->

			<div id="ListContainer" class="Container">
				<!-- 主体容器 -->

				<!-- 标题栏 -->
				<div class="Heading BillIcon">
					<div class="HeadingContent">
						<h1>供应商采购汇总表</h1>
						<div class="pull-right">
							<span class="fl">
	            	<table class="MoreOption" cellpadding="0" cellspacing="0">
	            		<tbody><tr><th class="c1" width="80px">
	            			<input type="checkbox" name="cb_pur_date" id="cb_pur_date" checked="true" style="visibility:hidden;">
	            			日期
	            		</th>
	            		<td width="360px">
	            			<input type="text" class="TextBox Datetime" maxlength="15" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_pur_date&#39;);" id="start_date" name="start_date" value="2017-07-01">
			            	<img src="../images/calendar.gif" class="imgIconButton" onclick="displayCalendar(document.getElementById(&#39;start_date&#39;),&#39;yyyy-mm-dd&#39;,this,false,&#39;doAutoCheck(\&#39;cb_pur_date\&#39;)&#39;);">
			            	<input type="hidden" id="hid_start_date" value="2017-07-01">
			            	至
			            	<input type="text" class="TextBox Datetime" maxlength="15" onkeyup="checkInput();" onfocus="doAutoCheck(&#39;cb_pur_date&#39;);" id="end_date" name="end_date" value="2017-07-08">
			            	<img src="${pageContext.request.contextPath}/images/calendar.gif" class="imgIconButton" onclick="displayCalendar(document.getElementById(&#39;end_date&#39;),&#39;yyyy-mm-dd&#39;,this,false,&#39;doAutoCheck(\&#39;cb_pur_date\&#39;)&#39;);">
			            	<input type="hidden" id="hid_end_date" value="2017-07-08">
			            	<a href="javascript:setDate(&#39;CURRENT_MONTH&#39;);">本月</a>
							<a href="javascript:setDate(&#39;TODAY&#39;);">今天</a>
							<a href="javascript:setDate(&#39;YESTERDAY&#39;);">昨天</a>
							<a href="javascript:setDate(&#39;PREVIEW_MONTH&#39;);">上月</a>
	            		</td>
	            	</tr></tbody></table>
	            </span>
							<span class="fr">
	            	<a href="javascript:;" id="lnkMoreOption">更多查询选项</a>
						<a type="button" class="buttom btn btn-default" href="#">查 询</a>
						<a type="button" class="buttom btn btn-default" href="#">导 出</a>
	            </span>
						</div>
					</div>
				</div>

				<!-- 主内容 -->
				<div class="Content">

					<!-- 上栏 分页、操作等 -->

					<div class="TopToolBar">
						<table class="ListNoteInfo" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td>
										<span>金额合计：0元</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<table data-toggle="table" data-click-to-select="true">
						<thead>
							<tr>
								<th>供应商</th>
								<th>进/退</th>
								<th>材料编号</th>
								<th>品名规格</th>
								<th>单位</th>
								<th>数量</th>
								<th>单价</th>
								<th>金额</th>
							</tr>
						</thead>
						<tbody>
							
<s:iterator value="purchaseBillVOs2" status="st">
		<tr>
			<td><s:property value="%{establishmentVOs[#st.index].estName}"/></td>
			<td>
			<s:if test='billType=="BUY"'>进</s:if>
			<s:else><font color="red">退</font></s:else>
			</td>
			<td>
		<s:iterator value="%{productVOSS[#st.index]}">
		<s:property value="productCode"/>
		</s:iterator>
		</td>
			<td>
		<s:iterator value="%{productVOSS[#st.index]}">
		<s:property value="productName"/>
		</s:iterator>
		</td>
			<td>
		<s:iterator value="%{productVOSS[#st.index]}">
		<s:property value="unit"/>
		</s:iterator>
		</td>
			<td>
			<s:iterator value="%{purhchaseBillItemVOSS2[#st.index]}">
			<s:property value="amount"/>
			</s:iterator>
			</td>
			<td>
			<s:iterator value="%{purhchaseBillItemVOSS2[#st.index]}">
			<s:property value="unitPrice"/>
			</s:iterator>
			</td>
			<td>
			<s:iterator value="%{purhchaseBillItemVOSS2[#st.index]}">
			<s:property value="cost"/>
			</s:iterator>
			</td>


		</tr>
</s:iterator>

						</tbody>
						<tfoot>
							<tr>
								<td colspan="14">
									<div class="pull-right">
										<a style="cursor:pointer" onclick=""><img src="../images/but001.gif"></a>
										<a style="cursor:pointer" onclick=""><img src="../images/but002.gif"></a>
										第 <input type="text" name="pageNumber" style="width:30px" value="1" onkeydown="javascript:doJump(this.value);" class="TextBox"> 页 共1页
										<a style="cursor:pointer" onclick=""><img src="../images/but003.gif"></a>
										<a style="cursor:pointer" onclick=""><img src="../images/but004.gif"></a>
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
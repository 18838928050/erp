<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0068)http://115.28.87.22:8888/cooper/GatherBillInfoForUnExamine.ihtm?id=1 -->
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Cache-Control" content="no-cache">
		<meta http-equiv="Expires" content="0">
		<title>收货单反审核 | 管理易-广告加工制作管理软件 企业版 9.28 | 易凯软件</title>
		<link rel="stylesheet" href="layui/css/layui.css">
		<link rel="stylesheet" type="text/css" href="css/base.css">

		<script src="js/minierp.js"></script>
		<script src="js/popup.js"></script>
		<script language="javascript">
			function doCancel() {
				ClosePop();
			}

			function doExamine(id) {
				ShowConfirm('确定反审核吗？', {
					title: '确认框'
				}, function(index) {
					popRetVal = 'Y';
					layer.close(index);
					doExamineCallBack(id);
				});
			}
 
			function doExamineCallBack(id) {
				if(popRetVal != null) {
					window.location = "GatherBillExamine.ihtm?id_str=" + id + "&flag=0";
				}
			}

			function doInit() {}
		</script>
		<style>
			@font-face {
				font-family: uc-nexus-iconfont;
				src: url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'), url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')
			}
		</style>
	</head>

	<body oncontextmenu="return false" onload="doInit();" class="sheet modal-dialog">
		<div class="sheet-main" id="bodyDiv">
			<div class="sheet-list">
				<div class="modal-main search-business">
					<div style="width:100%;">
						<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
							<tbody>
								<tr>
									<td style="width:33%" rowspan="2"></td>
									<td style="width:33%;text-align:center" rowspan="2">
										<h2>收货单反审核</h2></td>
									<td style="width:34%" class="tr">
										编号：G(1)2016120001
									</td>
								</tr>
								<tr>
									<td class="tr">收货日期：2016-12-28</td>
								</tr>
							</tbody>
						</table>

						<hr />

						<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-0">
							<tbody>
								<tr>
									<th style="width:10%">外协单位：</th>
									<td style="width:22%">河南金兰普不绣纲有限公司</td>
									<th style="width:8%">联系人：</th>
									<td style="width:16%"></td>
									<th style="width:6%">电话：</th>
									<td style="width:16%">
									</td>
									<td class="tr" style="width:22%">外协单号：U(1)2016120001</td>
								</tr>
							</tbody>
						</table>

						<hr />

						<div class="table-list">
							<table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" id="itemTbl">
								<tbody id="itemRowTbl">
									<tr>
										<th width="10%">项目类型</th>
										<th width="15%">内容</th>
										<th width="15%">材质</th>
										<th width="15%">规格</th>
										<th width="25%">制作要求</th>
										<th width="10%">外协数量</th>
										<th width="10%">本次收货</th>
									</tr>

									<tr>
										<td>标牌</td>
										<td>自带板激光切割加工费</td>
										<td></td>
										<td></td>
										<td></td>
										<td>30</td>
										<td>30</td>
									</tr>

									<tr>
										<td>标牌</td>
										<td>激光切割加工费</td>
										<td></td>
										<td></td>
										<td></td>
										<td>27</td>
										<td>27</td>
									</tr>

									<tr>
										<td>标牌</td>
										<td>8K1.1*2440</td>
										<td></td>
										<td></td>
										<td></td>
										<td>1</td>
										<td>1</td>
									</tr>

									<tr>
										<td>标牌</td>
										<td>加工费</td>
										<td></td>
										<td></td>
										<td></td>
										<td>1</td>
										<td>1</td>
									</tr>

								</tbody>
							</table>
						</div>

						<hr />

						<table border="0" cellspacing="0" cellpadding="0" align="center" class="table-a2 BillElseInfo">
							<tbody>
								<tr>
									<th>业务员：</th>
									<td>黄冬英</td>
									<th>摘要：</th>
									<td></td>
									<th>备注：</th>
									<td></td>
								</tr>
							</tbody>
						</table>

						<div class="blank12">&nbsp;</div>
						<p class="give">
							<span>开单人：黄冬英 2016-12-28 10:27</span>
							<span>审核人：黄冬英 2016-12-28 10:27</span>
							<span>单据帐套：新异</span>
						</p>
					</div>
				</div>
			</div>
			<div class="modal-buttom">

				<input type="button" class="buttom-a" value=" 反审核 " onclick="doExamine(&#39;1&#39;);">

				<input type="button" class="buttom-a" value=" 退 出 " onclick="doCancel();">
			</div>
		</div>
		<script src="layui/layui.all.js"></script>
	</body>

</html>
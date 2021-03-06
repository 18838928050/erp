<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0135)http://115.28.87.22:8888/business/AccessoryList.html?acc_type=COOPER;DESIGN&agent_type=BUSINESS_BILL&agent_id=3291&edit_flag=1&ext_id=3 -->
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Cache-Control" content="no-cache">
		<meta http-equiv="Expires" content="0">
		<title>附件管理 | 管理易-广告加工制作管理软件 企业版 9.28 | 易凯软件</title>
		<link rel="stylesheet" type="text/css" href="css/base.css">

		<script src="js/minierp.js"></script>
		<script language="javascript">
			function doNew() {
				var agentId = "3291";
				var extId = "3";
				var agentType = "BUSINESS_BILL";
				var code = "";
				var accType = "COOPER;DESIGN";
				var url;
				if(accType == "COOPER;DESIGN") {
					if(extId == "" || extId == "0") {
						accType = "COOPER";
					} else {
						accType = "DESIGN";
					}
				}
				if(window.applicationCache) { //html5
					url = "business/AccessoryUpload.html?type=MULTI&agent_id=" + agentId + "&agent_type=" + agentType + "&code=" + code + "&ext_id=" + extId + "&acc_type=" + accType;
				} else {
					url = "business/AccessoryUpload.html?type=MULTI_FORM&agent_id=" + agentId + "&agent_type=" + agentType + "&code=" + code + "&ext_id=" + extId + "&acc_type=" + accType;
				}
				parent.ShowIframe(['860px','560px'], url, '', function(){
					refreshAccWin();
				}, '附件'); //refreshAccWin是父窗口的
			}

			function refreshWin() {
				window.location = window.location;
			}

			function doEdit(id) {
				var url = "business/AccessoryEdit.html?type=SHOW_EXT&id=" + id;
				parent.ShowIframe(['560px','350px'], url, '', function(){
					refreshAccWin();
				}, '附件');
			}

			function doDelete(id) {
				parent.ShowConfirm('确定删除吗？', {title:'确认框'}, function(index){
					parent.popRetVal = 'Y';
					parent.doDelAcc(id);
					parent.layer.close(index);
				}); //doDelAcc是父窗口的
			}

			function doDelAct(id) {
				var fromUrl = getFromUrl();
				window.location = "business/AccessoryDelete.html?id=" + id + "&from_url=" + fromUrl;
			}

			function getFromUrl() {
				return encodeURIComponent(window.location);
			}

			function showMe() {
				if(parent.document.getElementById("accessoryFrm") != null) {
					parent.document.getElementById("accessoryFrm").style.height = document.getElementById("mainDiv").offsetHeight + "px";
					parent.resizePopwin();
				}
			}

			function doDownload(id, fileName, sourceName) {
				var xmlHttp = createXMLHttpRequest();
				xmlHttp.open("GET", "/FileDownloadLog.html?id=" + id);
				xmlHttp.onreadystatechange = function() {
					doDownloadCallback(xmlHttp, fileName, sourceName);
				};
				xmlHttp.send(null);
			}

			function doDownloadCallback(xmlHttp, fileName, sourceName) {
				if(xmlHttp.readyState == 4) {
					if(xmlHttp.status == 200) {
						var resTxt = xmlHttp.responseText;
						if(resTxt == "NO_LOGIN") {
							ShowAlert('你还没登录或已经超时，请重新登录。', {title:'提示框'});
						} else if(resTxt == "OK") {
							window.location = "/FileDownload.html?file_name=" + encodeURIComponent(fileName) + "&source_name=" + encodeURIComponent(sourceName);
						}
					}
				}
			}

			function doCopy(id) {
				parent.ShowConfirm('确定复制吗？', {title:'确认框'}, function(index){
					parent.popRetVal = 'Y';
					parent.doCopAcc(id);
					parent.layer.close(index);
				}); //doCopAcc是父窗口的
			}

			function doCopAct(id) {
				var fromUrl = getFromUrl();
				window.location = "business/AccessoryCopy.html?id=" + id + "&from_url=" + fromUrl;
			}

			function showFile(fileName) {
				var fn = fileName.toLowerCase();
				if(fn.endWith(".jpg") || fn.endWith(".jpeg") || fn.endWith(".png") || fn.endWith(".gif") || fn.endWith(".bmp")) {
					parent.showAccImg(fileName);
				} else {
					window.open(fileName, "_blank");
				}
			}
		</script>
	</head>

	<body style="margin:0px;padding:0px;" onload="setTimeout(&#39;showMe()&#39;,100);">
		<div class="down" id="mainDiv">
			<h4>附件管理</h4>
			<table class="table-b">
				<tbody>
					<tr>
						<th width="16%">文件</th>
						<th width="16%">资料路径</th>
						<th width="16%">文件说明</th>

						<th width="10%">工作中心</th>
						<th width="4%">类型</th>
						<th width="8%">上传人</th>
						<th width="14%">上传时间</th>
						<th width="16%">操作</th>

					</tr>

					<tr>
						<td>

							<a href="javascript:showFile(&#39;/upload/2017-07-08/图形2.cdr&#39;);">图形2.cdr</a>

						</td>
						<td></td>
						<td></td>
						<td>默认工作中心</td>
						<td>
							自制

						</td>
						<td>黄秀娟</td>
						<td>2017-07-08 14:35</td>
						<td>
							<a href="javascript:doDownload(&#39;2212&#39;,&#39;/upload/2017-07-08/图形2.cdr&#39;,&#39;图形2.cdr&#39;);">下载</a>

							<a href="javascript:doEdit(&#39;2212&#39;);">编辑</a>
							<a href="javascript:doCopy(&#39;2212&#39;);">复制</a>
							<a href="javascript:doDelete(&#39;2212&#39;);">删除</a>

						</td>
					</tr>
					<tr>
						<td colspan="8">
							<a href="javascript:doNew();">新增附件</a>
						</td>
					</tr>

				</tbody>
			</table>
		</div>
	</body>
</html>
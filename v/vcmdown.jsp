<%--
/*######################################################################################
Copyright 2014 OpenText Corporation All rights reserved.
#####################################################################################*/ 
--%>
<%@ taglib uri="http://jakarta.apache.org/taglibs/i18n-1.0" prefix="i18n" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.vignette.ext.templating.util.SysUtil"%>
<i18n:bundle baseName="com.vignette.ext.templating.TemplatingJSPMsgs" locale="<%= request.getLocale()%>"/>

<html>
<head>
<style type="text/css">
	.vui-preview-vcmdown-toolbar{
		max-height: 34px !important;
		position: fixed;
		bottom: 0;
		left: 10px;
		z-index: 10000;
		padding: 5px;
		border-radius: 4px;
		border: 1px solid #999;
		box-shadow: 0px 1px 4px rgba(0, 0, 0, 0.4), 1px 1px 1px rgba(255, 255, 255, 0.75) inset;}

	.vui-preview-vcmdown-icon-warning{
		font-size: 12px;
		font-weight: bold;
		color: #0073af;
		text-shadow: 1px 1px 1px #cfcfcf;
		text-overflow: ellipsis;
		word-wrap: break-word;
		margin: 0px 0px 0px 3px;
		padding: 1px 0px 0px 20px;}

	.vui-preview-vcmdown-retry{
		padding: 2px 3px;
		font-weight: bold;
		color: #333;
		box-shadow: 0 0 1px rgba(255, 255, 255, 0.4) inset, 1px 2px 2px rgba(0, 0, 0, 0.3);
		border-radius: 5px;
		border: 1px solid #6D91C4;
		margin: 0px 5px 0 16px;
		background-color: #A0C3F7;
		background-position: 0px -23px;
		font-family: Helvetica Neue,Helvetica,Arial,sans-serif;}

	.vui-preview-vcmdown-retry-over{
		background-color: #F5DB7A;
		border: solid 1px rgb(200,166,47);}

	.vui-preview-vcmdownloading{
		position: fixed;
		margin-top: 4px;
		margin-left: 92px;
		height: 16px;}
</style>
<script type="text/javascript">
	var vgnextvcmdown = {
		init: function() {
			this.serverPrefix = document.location.protocol+"//"+document.location.host;
			this.imagePrefix = this.serverPrefix + "<%=SysUtil.getViewerContext()%>/images/vcmdown-images/";
			this.vcmPingUrl = this.serverPrefix + "/cps/script/preview/cps-ping.jsp";
			if (window.XMLHttpRequest) {
				// code for all new browsers
				this.xmlhttp = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				// code for IE5 and IE6
				this.xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
		},
		retry: function() {
			this.button.disabled = true;
			vQuery("#vui-preview-vcmdownloading").empty().html('<img src=' + this.imagePrefix + 'animated_wait.gif style="height:16px;" />');
			this.removeOverClass();

			var pingURL = function() {
				var status = '504';
				var xmlhttp = vgnextvcmdown.xmlhttp;
				if (xmlhttp != null) {
					this.timeout = 30000;
					try {
						xmlhttp.open("GET", vgnextvcmdown.vcmPingUrl, false);
						xmlhttp.send(null);
						if (xmlhttp.readyState == 4) {
							if (xmlhttp.status == 200) {
								//VCM is now up
								status = '200';
								document.location.reload(true);
							}
						}
					} catch (ex) {
					}
				}

				if (status != '200') {
					vQuery("#vui-preview-vcmdownloading").empty().html('');
					vgnextvcmdown.button.disabled = false;
				}
			};

			setTimeout(pingURL, 1000);
		},
		addOverClass: function(){
			vQuery("#vgnextvcmdown_button").addClass("vui-preview-vcmdown-retry-over");
		},
		removeOverClass: function(){
			vQuery("#vgnextvcmdown_button").removeClass("vui-preview-vcmdown-retry-over");
		}
	};
	(function(){
		vgnextvcmdown.init();
		document.writeln(
		'<style type="text/css">'+
			'.vui-preview-vcmdown-toolbar .vui-preview-vcmdown-icon-warning{background: transparent url("'+vgnextvcmdown.imagePrefix+'warning.png") no-repeat;}'+
			'.vui-preview-vcmdown-toolbar {background: #f2f2f2 url("' + vgnextvcmdown.imagePrefix + 'vui-gradients.png") scroll repeat-x 0 -23px;}' +
			'.vui-preview-vcmdown-retry {background-image: url("' + vgnextvcmdown.imagePrefix + 'vui-gradients.png");}' +
		'</style>');
		document.writeln(
		'<div id="vui-preview-vcmdown-toolbar" class="vui-preview-vcmdown-toolbar">'+
				'<div id="vui-preview-vcmdownloading" class="vui-preview-vcmdownloading"> </div>' +
				'<span class="vui-preview-vcmdown-icon-warning"><i18n:message key="VGN_EXT_SERVER_DOWN"/>'+
					'&nbsp;&nbsp;</span>'+
				'<input id="vgnextvcmdown_button" type="button" onmouseover="vgnextvcmdown.addOverClass();" onmouseout="vgnextvcmdown.removeOverClass();" class="vui-preview-vcmdown-retry" value="<i18n:message key="VGN_EXT_RETRY"/>" onclick="vgnextvcmdown.retry();" />'+
		'</div>');

		vgnextvcmdown.button = document.getElementById('vgnextvcmdown_button');
	})();
 </script>
 </head>
 </html>
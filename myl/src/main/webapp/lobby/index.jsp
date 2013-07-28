<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0" xmlns:s="/struts-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />

	<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link type="text/css" href="${pageContext.request.contextPath}/Estilos/default.css?123" rel="stylesheet" />
<link type="text/css" href="${pageContext.request.contextPath}/scripts/jquery.contextMenu.css" rel="stylesheet" />

			
<jsp:text>
	<![CDATA[			 		
			
			<script src="${pageContext.request.contextPath}/scripts/jquery.contextMenu.js" type="text/javascript"></script>
			<script src="${pageContext.request.contextPath}/scripts/wsclientlobby.js?2032" type="text/javascript"></script>
					
		 ]]>
</jsp:text>
 
<title>Lobby</title>
 <script type="text/javascript">
	$(function() {
		$('#conversations').tabs();
		$('#userName').val(document.getElementById("user").value);
		wsclient.connect(document.getElementById("user").value);		
	});		
	</script>	

</head>
<body>	
<form style="width: 90%; border: 0px">
<input type="hidden" name="hidden" id="hidden" value="${pageContext.request.contextPath}"/>
<input type="hidden" name="user" id="user" value="${username}"/> 

      	<table>
			<tr><td>
				<div id="container">
					<div class="leftPanel">
						<div class="userInfo">
							<span class="disconnected" id="status">Desconectado</span>
							Nombre: <input type="text" id="userName" /><span
								class="onLineUserName" ></span>
						</div>
						<div>
							<button id="connect"
								onclick="wsclient.connect(document.getElementById('userName').value);">Conectar</button>
							<button id="disconnect" disabled="disabled"
								onclick="wsclient.disconnect();">DesconexiÃ³n</button>
						</div>
						<div id="onLineUsersPanel">
							<h3>Usuarios conectados:</h3>
							<ul id="onlineUsers">

							</ul>
						</div>
					</div>
					</div>					
					<div id="conversations">
						<ul>
						</ul>
					</div></td></tr></table>	

	 <!-- <input type="hidden" name="user2" id="user2" value=""/>  -->
	 
	 <div style="display:none;">
	 <div id="dialog" >
	</div>
	</div>
 </form>
</body>
</html>
</jsp:root>

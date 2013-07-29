<?xml version="1.0" encoding="UTF-8" ?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0"
	xmlns:s="/struts-tags" xmlns:sj="/struts-jquery-tags">
	<jsp:directive.page language="java"
		contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />
	<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Nuevo Deck</title>
<jsp:text>
	<![CDATA[
	
			<script src="${pageContext.request.contextPath}/scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
			<script src="${pageContext.request.contextPath}/scripts/deck.js" type="text/javascript"></script>
			
		 ]]>

</jsp:text>
<style type="text/css">
#collection {width:100%;height:100%;padding:0px;border:1px solid #aaaaaa;overflow:auto;}
#img {width:100%;height:100%;padding:0px;border:1px solid #aaaaaa;overflow:auto;}
#deck1 {width:100%;height:100%;padding:0px;border:1px solid #aaaaaa;overflow:auto;}
</style>
<script type="text/javascript">
	$(function() {
		getDeck();
	});		
	</script>
</head>
<body>
	<s:url id="urlCancelar" value="/usuario" includeContext="true" />
	<s:actionerror id="saeMuseo" theme="jquery" />
	<s:fielderror id="sfeMuseo" theme="jquery" />
	<s:form action="%{#request.contextPath}/deck/%{deckId}"
		method="post" theme="simple" id="frmDeck" acceptcharset="UTF-8" cssStyle="border: 0px;">		
		<s:hidden id="hdnMethod" name="_method" value="put" />
		
	<input type="hidden" name="context" id="context" value="${pageContext.request.contextPath}"/>
	<input type="hidden" name="idSel" id="idSel" value="${idSel}"/>
	
	<!-- 
	<s:iterator value="model.deckCartas">
		<script type="text/javascript">
			var carta={cartaId:0,cartaQt:0};
			carta.cartaId=${cartaId};
			carta.cartaQt=${cartaQt};
			obj.deck.push(carta);
		</script>
	</s:iterator> -->
		
	
	<table style="height: 100%;width: 100%;">
	<tr>
	<!-- inicia la primer columna -->	
	<td style="width: 25%">
	<table style="height: 100%; width: 100%">
	<tr style="height: 200px"><td>
	<table>
	<tr><td>Nombre:</td><td><input type="text" id="nombre" /></td></tr>
	<tr><td>Edición:</td><td>
	<select id="edicion">
		<option value="">--Seleccione--</option>
		<s:iterator value="ediciones">		
  			<option value="${id}">${nombre}</option>
		</s:iterator>
	</select>
	</td></tr>
	<tr><td>Frecuencia:</td><td>
	<select id="frecuencia">
	</select>
		<option value="">--Seleccione--</option>
		<option value="Ultra Real">Ultra Real</option>
		<option value="Real">Real</option>
		<option value="Cortesano">Cortesano</option>
		<option value="Vasallo">Vasallo</option>		
	</td></tr>
	<tr><td>Tipo:</td><td>
	<select id="tipo">
	</select>
		<option value="">--Seleccione--</option>
		<option value="Aliado">Aliado</option>
		<option value="Oro">Oro</option>
		<option value="Talismán">Talismán</option>
		<option value="Tótem">Tótem</option>
		<option value="Arma">Arma</option>
	</td></tr>
	<tr><td>Coste:</td><td><input type="text" id="coste" /></td></tr>	
	<tr><td>Fuerza:</td><td><input type="text" id="fuerza" /></td></tr>
	<tr><td>Raza:</td><td>
	<select id="raza">
		<option value="">--Seleccione--</option>
		<s:iterator value="razas" var="valor">		
  			<option value="${valor}">${valor}</option>
		</s:iterator>
	</select>
	</td></tr>
	
	<tr><td><input type="button" id="btnSearch" onclick="search()" value="Buscar"/></td></tr>
	</table></td></tr>	
	<tr style="height: 60%">
	<td>
	
	<img id="viewCard" src="" height="80%"/>
	<!-- <div id="img">
	</div> -->
	</td>
	</tr>
	</table>
	</td>		
		
	
	<!-- inicia la segunda columna para el resultado y la vista de la carta -->
	<td style="width: 30%;">
	<table style="height: 100%;width: 100%;">
	<tr style="height: 100%">
	<td>
	<div id="collection" ondrop="drop(event)" ondragover="allowDrop(event)">
	 <LABEL style="display: none;">m</LABEL>
	</div>
	</td>
	</tr>
		
	</table>
	</td>
	
	<!-- inicia la tercer columna -->
	<td style="width: 45%; overflow: auto;">
	
	<table style="height: 100%;width: 100%;">
	<tr style="height: 80%">
	<td>
	<div id="deck1" ondrop="drop(event)" ondragover="allowDrop(event)">
	
	</div>
	</td>
	</tr>
	
	<tr style="height: 20%">
	<td>
	<s:hidden id="lista" name="lista" value="" />
	<label>Nombre:</label>
	<s:textfield id="Nombre" name="model.deckNombre" maxlength="50" />
	<input type="button" id="btnEnviar" onclick="enviar()" value="Aceptar"/>
		
	</td>
	</tr>
	</table>
		
	</td>
	</tr>	
	</table>


	</s:form>
</body>
</html>
</jsp:root>
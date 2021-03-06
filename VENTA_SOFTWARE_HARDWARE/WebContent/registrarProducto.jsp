<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>

<!-- layout librerias -->
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
    
<!DOCTYPE html>
<html>
<head>
<!-- layout estilos -->
<jsp:include page="Navigate/styleLayout.jsp"></jsp:include>

<meta charset="UTF-8">
<title>Listado de productos</title>
 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
	
<!-- 	layout superior -->
	<jsp:include page="Navigate/superior.jsp"></jsp:include>
	
<!-- 	contenido inicio -->
	<script>
	function eliminarProducto() {
		$('#idForm').attr('action', 'eliminarProducto');
	}
	</script>
	<section> 
 
   <div class="container">
  
        <div class=row>
            
            <div class="col-lg-12">      
          		<br/>
          		
				<h1>Mantenimiento de Productos</h1>
				
				<br/>
			
            	<a id="botonListar" class="btn btn-primary" href="listarProductos">Listar</a>
			 	<br/>
			 	<s:form id="idForm" action="registrarProducto" enctype="multipart/form-data" theme="bootstrap" cssClass="form-horizontal" label="Detalle Producto">
					<s:hidden id="idMarca" name="cod_prod" />
					
					<s:url id="idMarca" action="listaMarcas"/>
					<sj:select  label="Marca" 
								name="catalogo.cod_catalogo"
								href="%{idMarca}"
								list="marcas"
								listKey="cod_catalogo"
								listValue="marca"
								headerKey="-1"
								headerValue="[Seleccione]"
								/>								
					<s:url id="idCategoria" action=""/>
					<sj:select  label="Categoria" 
								name="catalogo.cod_catalogo"
								href="%{idCategoria}"
								list="categorias"
								listKey="cod_catalogo"
								listValue="categoria"
								headerKey="-1"
								headerValue="[Seleccione]"
								/>						
					
					<label id="idMantLabelMarca">Descripcion</label>
					<s:textfield id="idtxtMarca" name="descrip_prod" />
					
					<label id="idMantLabelMarca">Características</label>
					<s:textfield id="idtxtMarca" name="id_caract" />
					
					<label id="idMantLabelMarca">Precio</label>
					<s:textfield id="idtxtMarca" name="precio_prod" />
					
					<label id="idMantLabelMarca">Stock</label>
					<s:textfield id="idtxtMarca" name="stk_prod" />
					
					<label id="idMantLabelMarca">Stock mínimo</label>
					<s:textfield id="idtxtMarca" name="stk_min_prod" />
				<br/>
				
				<s:submit cssClass="btn btn-success" value="Registrar"/>
				<s:submit cssClass="btn btn-warning" value="Actualizar"/>
				<sj:submit value="Eliminar" button="true" cssClass="btn btn-danger" formIds="idForm"
				onclick="javascript:eliminarProducto();" />
				</s:form>
				
           		<br/>
           		<br/>
            	<table class="table table-bordered table-striped  ">
			
					<tr>
						<th>Id</th>
						<th>Marca</th>
						<th>Categoría</th>
						<th>Descripcion</th>
						<th>Características</th>
						<th>Precio</th>
						<th>Stock</th>
						<th>Stock Mínimo</th>
					</tr>
					
			
						<s:iterator value="lstProducto">
							<tr class="delbtn">
								<td><s:property value="cod_prod"/> </td>
								<td><s:property value="descripcion_marca" /></td>
								<td><s:property value="descripcion_cat" /></td>
								<td><s:property value="descrip_prod" /></td>
								<td><s:property value="descripcion_caract" /></td>
								<td><s:property value="precio_prod" /></td>
								<td><s:property value="stk_prod" /></td>
								<td><s:property value="stk_min_prod" /></td>
							</tr>
						</s:iterator>
				</table>
            

            </div>
           
            
            
            
        </div>
       
   	
    </div>   
 
	</section>


  <!-- JS, Popper.js, and jQuery -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>

<script>
jQuery('.delbtn').on('click', function() {
    var $row = jQuery(this).closest('tr');
    var $columns = $row.find('td');

    $columns.addClass('row-highlight');
    var arr = new Array();
    var values = "";

    jQuery.each($columns, function(i, item) {
    	arr.push(item.innerHTML);
    	console.log(arr[i]);
    });
    $("#idMarca").val(arr[0]);    
    $("#idtxtMarca").val(arr[1]);
});

</script>
<!-- contenido fin	 -->

<!-- layout inferior -->
	<jsp:include page="Navigate/inferior.jsp"></jsp:include>
</body>
</html>
<%-- 
    Document   : IngresarPostulacionAdmin
    Created on : 23/11/2018, 09:12:31 AM
    Author     : KnokinGm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <title>Pet App</title>
</head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../../PettApp/Ciudadano/Postulacion/CSS/Estilo.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body id="fondox">


    <form action="../../../PettApp/Ciudadano/Animal/Consultar_Animal.jsp" >
    <input type="submit" name="volver" value="Volver" class="btn btn-outline-light" id="vol">
    </form>
<div id="padre">
	<div id="insertar" class="form-group">
	<h1>Realizar Postulacion</h1>
        <form action="../../ServletPostulacion" enctype="multipart/form-data" method="Post">

 	<label>Telefono de Contacto</label><input type="number" name="telefono" required="" class="form-control">
    <label>Direccion de Contacto</label><input type="text" name="direccion" required="" class="form-control">
    <label>Telefono Fijo</label><input type="number" name="fijo"  class="form-control">
    <label>Certificado Laboral</label><input id="inp" type="file" name="IMG" required="">
    </br>
    <lablel>Cedula</lablel><input type="text" name="cedula" required="" class="form-control">
     <%
           int c;
           
           c=Integer.parseInt(request.getParameter("xp"));
          
        %>
       
       <label>Codigo Del Animal</label><input type="number" name="coda" value="<%=c%>" required="" class="form-control">
      <div class="form-group" id="bot">
      <input type="submit" name="ingpostci" value="Realizar Postulacion" class="btn btn-primary">
      </div>
    </form>
</div>
</div>

</body>
    </body>
</html>

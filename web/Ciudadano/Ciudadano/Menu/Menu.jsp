<%-- 
    Document   : Menu
    Created on : 12/12/2018, 09:23:46 AM
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <link rel="stylesheet" type="text/css" href="Estilo.css">
      <title>PetApp</title>
      <script type="text/javascript">history.forward();
      </script>
</head>

<body>

    <%--
    <?php
    session_start();
    if (!$_SESSION) {
    echo '<script type="text/javascript">
          alert("Usuario no Autenticado");
          self.location=../../../Login/Vista/login.php;
          </script>';  
    }
    else{
    $usuar=$_SESSION["Usuario"];
    }
      ?>
    --%>
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark fixed-top">
               
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="navbar-toggler-icon"></span>
              </button> <a class="navbar-brand" href="../Login/login.jsp">PetApp</a>
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="navbar-nav ml-md-auto">
                  <a class="navbar-brand" href="#">Usuario: <%--
                        <?php echo "".$usuar.""?></a>
                        --%>
                  <li class="nav-item dropdown">
                      <%--
                      <?php
                      require_once("../Controlador/Controlador_Usuario.php");
                      while($Usu=mysqli_fetch_row($resultado)){
                      ?>
                     <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">
                      <?php
                      echo "
                      <img src='../../../Uploads/Usuarios_Fotos/".$Usu[3]."' class='fotomod' 
                      style='width:50px;height:50px;border-radius:200px 200px;'>";?>
                     </a>
                      --%>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                       <a class="dropdown-item" href="../../Ciudadano/Vista/Vista_Ciudadano.jsp">Perfil</a> <a class="dropdown-item" href="../../Notificaciones/Vista/Vista_Notificaciones.php">Notificaciones</a>
                      <div class="dropdown-divider">
                      </div> <a class="dropdown-item" href="../../../Cerrar.php">Cerrar Sesion</a>
                    </div>
                  </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
    
    <header id="encabezado">

    <h1>Ciudadano</h1>
    <%--
    <?php
    echo "
    <img src='../../../Uploads/Usuarios_Fotos/".$Usu[3]."' class='fotomod' style='width:250px;height:250px;border-radius:200px 200px;'>";}?>
    <h2><?php echo "".$usuar.""?></h2>
    </header>
    --%>


    <div id="pricing" class="container-fluid">
    <div class="text-center">

    <h2>GESTIONAR</h2>
     
        <div class="row" id="icono">
          <div class="col-sm">
              <form action="../../Eventos/Vista/Vista_Eventos.php">
                <input type="image" name="eventoss" src="logos/evento.png" height="250" width="250" id="eventos"> 
              </form>
          </div>

          <div class="col-sm">
              <form action="../../Animales/Vista/Vista_Animal.php">
                <input type="image" name="animal" src="logos/Adoptar.png" height="250" width="250" id="animales">
              </form>
          </div>

          <div class="col-sm">
                <form action="../../Denuncias/Vista/Vista_Denuncias.php">
                  <input type="image" name="denuncia" src="logos/Denuncia.png" height="250" width="250" id="denuncia">
                </form>
          </div>
        </div>
        
        <div class="row" id="icono2">
          <div class="col-sm">
                <form action="../../Mascotas/Vista/Vista_Mascotas.php">
                  <input type="image" name="mascotas" src="logos/Mascota.png" height="250" width="250" id="mascota">
                </form>
          </div>

          <div class="col-sm">
                <form action="../../Ciudadano/Vista/Vista_Ciudadano.php">
                  <input type="image" name="datos" src="logos/MisDatos.png" height="250" width="250" id="datos">
                </form>
          </div>
        </div> 

  </div>
</div>

</body>
</html>

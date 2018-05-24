<?php
	include '../configuracion/config.php';
	include '../controllers/usuario_controller.php';
	include 'Comun/cabecera.php';

?>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<title>Login</title>
</head>

<body>
	<img id="logo-grande" src="../../public/img/Logo-Nombre.png" alt="">
	<div class="container-login">
		<!-- <div class="col align-self-center col-lg-8 offset-lg-2"> -->
		<h1>Login</h1>
		<form id="form-login" class="centered" method="POST" action='../controllers/comprobacionForm.php'>
			<div class="alert alert-danger usuarioNoExiste" role="alert">
				Usuario o contraseña erróneos
			</div>
			<label  >Email</label>
			<input id="email-login" type="email" name="user" class="formulario-textbox" required/>
			<label for="Clave">Contraseña</label>
			<input id="Clave-login" type="password" name="password" class="formulario-textbox" required/>
			<div id="boton_enviar">
				<input id="submit" type="submit" name="submit" class="submitHueso" value="Entrar"/>
			</div>
		</form>
		<div class="references">
			<span ><a href="registro.php">Registrarme</a></span>
			<span id="vertical-separator">|</span>
			<span ><a href="home.php">Entrar como invitado</a></span>
		</div>
		<div class="references">
			<span ><a href="olvido_clave.php">He olvidado mi contraseña</a></span>
		</div>
		<!-- </div> -->
	</div>
</body>
</html>

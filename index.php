<?php
  	

    if(isset($_SESSION['email'])){
      header('location: home.php');
    }
?>
<body class="hold-transition login-page">
<div class="login-box">
  	<div class="login-logo">
  		<b>Sistema de voto eletrónico</b>
  	</div>
  
  	<div class="login-box-body">
    	<p class="login-box-msg">Iniciar sessão</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="email" placeholder="E-mail" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i>Login</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>
	

</body>

<footer>
</div>
</html>
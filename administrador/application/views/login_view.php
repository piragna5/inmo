<!DOCTYPE html>
<html>
 <head>
   <title>Login</title>
   <!-- Custom styles for the project -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/prop_custom.css">
  <!-- Latest compiled and minified Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
  <!-- Font Awesome CDN -->
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 </head>
 <body class="login">
  <div class="container">
    <div class="form-signin">
     <h2 class="form-heading text-center">Inicio de sesi&oacute;n</h2>
      <?php echo validation_errors(); ?>
      <?php echo form_open('verifylogin'); ?>
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-user"></i></span>
        <input type="text" class="form-control" size="20" placeholder="Usuario" id="username" name="username" required autofocus >
      </div>
      <div class="input-group">
        <span class="input-group-addon" id="basic-addon1"><i class="fa fa-unlock"></i></span>
        <input type="password" class="form-control" size="20" placeholder="Password" id="password" name="password" required >
      </div>
      <br />
      <button class="btn btn-lg btn-block btn-login" type="submit" value="Login">Ingresar <i class="fa fa-chevron-right"></i></button>
     </form>
     </div><!-- END form-signin -->
   </div><!-- END container -->
 </body>
</html>
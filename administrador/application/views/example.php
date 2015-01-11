<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Prop: Administraci&oacute;n</title>
	<!-- Custom styles for the project -->
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/prop_custom.css">
	<!-- Latest compiled and minified Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
	<!-- Font Awesome CDN -->
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script type="text/javascrpt">
	    $("#save-and-go-back-button").keyup(function(){
	       alert("there is a keyup");
	    });
	</script>

	<!-- Load all the style sheets -->
	<?php 
	foreach($css_files as $file): ?>
		<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
	<?php endforeach; ?>
	<!-- Load all the JavaScript files -->
	<?php foreach($js_files as $file): ?>
		<script src="<?php echo $file; ?>"></script>
	<?php endforeach; ?>
	<!-- Latest compiled and minified Bootstrap JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
		<div class="col-md-2">
	        <ul class="nav nav-pills nav-stacked">
	        	<a href="#"><img src="<?php echo base_url(); ?>assets/images/propLogo.png" alt="Prop Logo" class="brand-logo"></a>
	            <li><a href="<?php echo site_url('admin/')?>"><i class="fa fa-home"></i> Casas</a></li>
	            <li><a href="<?php echo site_url('admin/terrenos')?>"><i class="fa fa-tree"></i> Terrenos</a></li>
	            <li><a href="<?php echo site_url('admin/departamentos')?>"><i class="fa fa-building"></i> Departamentos</a></li>
	            <li><a href="<?php echo site_url('admin/bodegas')?>"><i class="fa fa-truck"></i> Bodegas</a></li>
	            <li><a href="<?php echo site_url('admin/oficinas')?>"><i class="fa fa-briefcase"></i> Oficinas</a></li>
	            <li><a href="<?php echo site_url('admin/locales')?>"><i class="fa fa-institution"></i> Locales</a></li>
	            <li><a href="<?php echo site_url('admin/nave_industrial')?>"><i class="fa fa-gears"></i> Naves Industriales</a></li>
	            <li><a href="<?php echo site_url('admin/rancho')?>"><i class="fa fa-bug"></i> Ranchos</a></li>
	            <li><a href="<?php echo site_url('home/logout')?>"><i class="fa fa-power-off"></i> Salir</a></li>
	        </ul>
	    </div><!-- END col-md-2 -->

		<div class="col-md-10">
			<?php echo $output; ?>
		</div><!-- END col-md-10 -->

    	</div><!-- END row -->
	</div><!-- END container-fluid -->
</body>
</html>
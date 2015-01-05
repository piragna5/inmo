<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="utf-8" />

		<!--<link rel="shortcut icon" href="../favicon.ico">-->
		<link rel="stylesheet" type="text/css" href=<?php echo base_url() . 'assets/css/normalize.css'; ?> />
		<link rel="stylesheet" type="text/css" href=<?php echo base_url() . 'assets/css/demo.css'; ?> />
		<link rel="stylesheet" type="text/css" href=<?php echo base_url() . 'assets/css/component.css'; ?> />
		

<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<script src=<?php echo base_url() . 'assets/js/modernizr.custom.js'; ?>></script>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
		
		

</head>
<body>


	<div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller">
							<ul class="gn-menu">
								<li class="gn-search-item">
									<input placeholder="Search" type="search" class="gn-search">
									<a class="gn-icon gn-icon-search"><span>Search</span></a>
								</li>
								<li>
									<a class="gn-icon gn-icon-download">Downloads</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-illustrator">Vector Illustrations</a></li>
										<li><a class="gn-icon gn-icon-photoshop">Photoshop files</a></li>
									</ul>
								</li>
								<li><a class="gn-icon gn-icon-cog">Settings</a></li>
								<li><a class="gn-icon gn-icon-help">Help</a></li>
								<li>
									<a class="gn-icon gn-icon-archive">Archives</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-article">Articles</a></li>
										<li><a class="gn-icon gn-icon-pictures">Images</a></li>
										<li><a class="gn-icon gn-icon-videos">Videos</a></li>
									</ul>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="http://tympanus.net/codrops">Codrops</a></li>
				<li><a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/HeaderEffects/"><span>Previous Demo</span></a></li>
				<li><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=16030"><span>Back to the Codrops Article</span></a></li>
			</ul>
<!--
			<div >
				<?php echo $output; ?>
    		</div>
    		-->
			
			<header>
				<?php echo $output; ?>
			</header> 
		
		</div><!-- /container -->
		<script src=<?php echo base_url() . 'assets/js/classie.js'; ?>></script>
		<script src=<?php echo base_url() . 'assets/js/gnmenu.js'; ?>></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>


<!--
	<div>
		<a href='<?php echo site_url('images_examples/example1')?>'>Example 1 - Simple</a> |
		<a href='<?php echo site_url('images_examples/example2')?>'>Example 2 - Ordering</a> |
		<a href='<?php echo site_url('images_examples/example3/22')?>'>Example 3 - With group id</a> |
		<a href='<?php echo site_url('images_examples/example4')?>'>Example 4 - Images with title</a> | 
		<a href='<?php echo site_url('images_examples/simple_photo_gallery')?>'>Simple Photo Gallery</a>
	</div>
	<div style='height:20px;'></div>  
-->
   



</body>
</html>

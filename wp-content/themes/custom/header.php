<!DOCTYPE html>
<html lang="ru-RU">

<head>

	<meta charset="utf-8">

	<title><?php bloginfo('name'); ?> <?php wp_title(); ?></title>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="apple-touch-icon" sizes="57x57" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_template_directory_uri(); ?>/img/favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="<?php echo get_template_directory_uri(); ?>/img/favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_template_directory_uri(); ?>/img/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="<?php echo get_template_directory_uri(); ?>/img/favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_template_directory_uri(); ?>/img/favicon/favicon-16x16.png">
    <link rel="manifest" href="<?php echo get_template_directory_uri(); ?>/img/favicon/manifest.json">
	<!-- Chrome, Firefox OS and Opera -->
	<meta name="theme-color" content="#00cae3">
	<!-- Windows Phone -->
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
	<meta name="msapplication-navbutton-color" content="#00cae3">
	<!-- iOS Safari -->
	<meta name="apple-mobile-web-app-status-bar-style" content="#00cae3">

	<?php wp_head() ;?>
</head>

<body <?php body_class(); ?>>

<!--
<header class="header">
    <div class="container">
        <div class="header__inner">
            <div class="header__logo-wrap">
                <a href="/">
                    <img src="<?php echo get_template_directory_uri()?>/img/logo.png" alt="">
                </a>
            </div>
            <nav class="header__nav">
                <div class="burger-menu__wrap">
                    <div class="hamburger hamburger--slider">
                        <div class="hamburger-box">
                            <div class="hamburger-inner"></div>
                        </div>
                    </div>
                    <div class="hamburger-menu__wrap">
				        <?php wp_nav_menu(array(
					        'menu' => 'burger',
					        'menu_class' => 'burger-menu'
				        )); ?>
				        <?php wp_nav_menu(array(
					        'menu' => 'main',
					        'menu_class' => 'mobile-main-menu'
				        )); ?>
                    </div>
                </div>
		        <?php wp_nav_menu(array(
			        'menu' => 'main',
			        'menu_class' => 'main-menu'
		        )); ?>
            </nav>
        </div>
    </div>
</header>
-->

<header class="header">
    <div class="container max-w-991_pos-relative">
        <div class="header__inner">
            <div class="logo wow fadeInLeft" data-wow-delay='0.4s'>
                <a class="logo__link" href="/">
                    <img class="logo__img" src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="логотип.png">
                </a>
            </div>
            <button class="hamburger hamburger--slider wow fadeInRight" data-wow-delay='0.4s' type="button">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </button>
            <?php
                wp_nav_menu( [
                    'menu'            => 'main', 
                    'container'       => 'nav', 
                    'container_class' => 'navigation', 
                    'menu_class'      => 'navigation__list wow fadeInDown', 
                ] );
            ?>
        </div>
    </div>
</header>
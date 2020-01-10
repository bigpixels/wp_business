<?php
/*
Template Name: Главная страница
*/
get_header() ;?>

<main class="main">

    <section class="boost-up" data-wow-delay='0.4s'>
        <div class="container">
            <h1 class="title margin_mb-30 wow fadeInUp">
                <span class="title__name-top title_color-main boost-up_fsz-35">
                    <?php if( get_field("boost-up_wp-title") ): ?>
                        <?php the_field( "boost-up_wp-title"); ?>
                    <?php else :?>
                        Boost up your Local business
                    <?php endif; ?>
                </span>
                <span class="title__secondary title_color-main boost-up_fsz-16">
                    <?php if( get_field("boost-up_wp-subtitle") ): ?>
                        <?php the_field( "boost-up_wp-subtitle"); ?>
                    <?php else :?>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum typesetting
                    <?php endif; ?>
                </span>
            </h1>
            <form class="form wow fadeInUp" action="/">
                <div class="form__inner-boost-up">
                    <i class="form__icon fas fa-user"></i>
                    <input class="form__field form__field_icon" type="text" name="name" placeholder="Full Name">
                </div>
                <div class="form__inner-boost-up">
                    <i class="form__icon fas fa-envelope"></i>
                    <input class="form__field" type="email" name="email" placeholder="E-mail adress">
                </div>
                <div class="form__inner-boost-up">
                    <i class="form__icon fas fa-phone fa-flip-horizontal"></i>
                    <input class="form__field" type="tel" name="phone" placeholder="Phone number">
                </div>
                <button class="primary-button margin_max-w-767_mt-15">
                    <?php if( get_field("boost-up_wp-but") ): ?>
                        <?php the_field( "boost-up_wp-but"); ?>
                    <?php else :?>
                        Request a quote
                    <?php endif; ?>
                </button>
            </form>
        </div>
        <img class="boost-up__img bounceInUp wow fadeInUp" src="<?php the_field( 'boost-up_wp-img' );?>">
    </section>

    <section class="our-services">
        <div class="container">
            <h1 class="title margin_mb-90 wow fadeInDown">
                <span class="title__name-top">
                    <?php if( get_field("our-services_wp-title") ): ?>
                        <?php the_field( "our-services_wp-title"); ?>
                    <?php else :?>
                        Our Services
                    <?php endif; ?>
                </span>
                <span class="title__secondary">
                    <?php if( get_field("our-services_wp-subtitle") ): ?>
                        <?php the_field( "our-services_wp-subtitle"); ?>
                    <?php else :?>
                        Lorem Ipsum is simply dummy Business industry.
                    <?php endif; ?>
                </span>
            </h1>
            <div class="row">
                <?php
                    // указываем классы svg иконки
                    $svg_attr = array(
                        'class' => "img-area__icon img-area__icon_h-50 style-svg"
                    );
                    // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
                    $query = new WP_Query( 'cat=5&posts_per_page=6' ); 
                    if( $query->have_posts() ){
                        while( $query->have_posts() ){
                            $query->the_post(); ?>

                            <div class="col-md-6">
                                <div class="our-services__card margin_mb-80">
                                    <a class="our-services__link wow fadeInDown" href="<?php the_permalink(); ?>">
                                        <span class="img-area">
                                            <?php the_post_thumbnail( 'full', $svg_attr ); ?>
                                        </span>
                                    </a>
                                    <div class="wow fadeInRight">
                                        <a href="<?php the_permalink(); ?>"> 
                                            <h3 class="subtitle margin_mb-21"><?php the_title(); ?></h3>
                                        </a>
                                        <span class="desc"><?php the_excerpt();?></span>
                                    </div>
                                </div>
                            </div>

                            <?php
                        }
                        wp_reset_postdata(); // сбрасываем переменную $post
                    } else {
                        echo 'Записей нет.';
                    }
                ?>
            </div>
        </div>
    </section>

    <section class="about-us">
        <div class="about-us__background" style="background-image: url('<?php the_field('about-us_wp-img'); ?>');"></div>
        <div class="container wow lightSpeedIn">
            <div class="about-us__inner">
                <h3 class="title__name-top title_color-main about-us_color-main_d-b margin_mb-30">
                    <?php if( get_field("about-us-up_wp-title") ): ?>
                        <?php the_field( "about-us_wp-title"); ?>
                    <?php else :?>
                        About us
                    <?php endif; ?>    
                </h3>
                <span class="desc desc_color-main_d-b">
                    <?php if( get_field("about-us_wp-subtitle") ): ?>
                        <?php the_field( "about-us_wp-subtitle"); ?>
                    <?php else :?>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the ore recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum
                    <?php endif; ?>
                </span>
                <button class="primary-button primary-button_read-more margin_mt-30">
                    <?php if( get_field("primary-button_wp-title") ): ?>
                        <?php the_field( "primary-button_wp-title"); ?>
                    <?php else :?>
                        Read more
                    <?php endif; ?>
                </button>
            </div>
        </div>
    </section>

    <section class="choos-price">
        <div class="container">
            <h1 class="title margin_mb-80 wow flipInX">
                <span class="title__name-top">
                    <?php if( get_field("choos-price_wp-title") ): ?>
                        <?php the_field( "choos-price_wp-title"); ?>
                    <?php else :?>
                        Choos your price
                    <?php endif; ?> 
                </span>
                <span class="title__secondary">
                    <?php if( get_field("choos-price_wp-subtitle") ): ?>
                        <?php the_field( "choos-price_wp-subtitle"); ?>
                    <?php else :?>
                        Lorem Ipsum is simply dummy Business industry.
                    <?php endif; ?>
                </span>
            </h1>
            <div class="choos-price__inner">
                <div class="choos-price__item wow zoomIn">
                    <div class="choos-price__card">
                        <h3 class="choos-price__title margin_mb-21">
                            <span class="choos-price__title choos-price__title_name-top margin_mb-30 color-main--h">
                                <?php if( get_field("choos-price-name-top_wp-title") ): ?>
                                    <?php the_field( "choos-price-name-top_wp-title"); ?>
                                <?php else :?>
                                    Basic plan
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title choos-price__title_name-secondary color-main--h">
                                <span class="choos-price__title_name-secondary choos-price__title_dollar color-main--h">
                                    <?php if( get_field("choos-price-currency_wp-title") ): ?>
                                        <?php the_field( "choos-price-currency_wp-title"); ?>
                                    <?php else :?>
                                        $
                                    <?php endif; ?>
                                </span>
                                    <?php if( get_field("choos-price-period_wp-subtitle") ): ?>
                                        <?php the_field( "choos-price-period_wp-subtitle"); ?>
                                    <?php else :?>
                                        22
                                    <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini margin_mb-30 color-main--h">
                                <?php if( get_field("choos-price-period_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-period_wp-subtitle"); ?>
                                <?php else :?>
                                    per month
                                <?php endif; ?>    
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-account_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-account_wp-subtitle"); ?>
                                <?php else :?>
                                    1 Account
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-support_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-support_wp-subtitle"); ?>
                                <?php else :?>
                                    8 hour support
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-custom-services_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-custom-services_wp-subtitle"); ?>
                                <?php else :?>
                                    Custom Cloud Services
                                <?php endif; ?>
                            </span>
                        </h3>
                        <button class="primary-button color-main--h">
                            <?php if( get_field("choos-price_wp-but") ): ?>
                                <?php the_field( "choos-price_wp-but"); ?>
                            <?php else :?>
                                Get Started
                            <?php endif; ?>
                        </button>
                    </div>
                </div>
                <div class="choos-price__item wow zoomIn">
                    <div class="choos-price__card">
                        <h3 class="choos-price__title margin_mb-21">
                            <span class="choos-price__title choos-price__title_name-top margin_mb-30 color-main--h">
                                <?php if( get_field("choos-price-name-top_wp-title") ): ?>
                                    <?php the_field( "choos-price-name-top_wp-title"); ?>
                                <?php else :?>
                                    Basic plan
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title choos-price__title_name-secondary color-main--h">
                                <span class="choos-price__title_name-secondary choos-price__title_dollar color-main--h">
                                    <?php if( get_field("choos-price-currency_wp-title") ): ?>
                                        <?php the_field( "choos-price-currency_wp-title"); ?>
                                    <?php else :?>
                                        $
                                    <?php endif; ?>
                                </span>
                                    <?php if( get_field("choos-price-period_wp-subtitle") ): ?>
                                        <?php the_field( "choos-price-period_wp-subtitle"); ?>
                                    <?php else :?>
                                        42
                                    <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini margin_mb-30 color-main--h">
                                <?php if( get_field("choos-price-period_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-period_wp-subtitle"); ?>
                                <?php else :?>
                                    per month
                                <?php endif; ?>    
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-account_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-account_wp-subtitle"); ?>
                                <?php else :?>
                                    2 Account
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-support_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-support_wp-subtitle"); ?>
                                <?php else :?>
                                    16 hour support
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-custom-services_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-custom-services_wp-subtitle"); ?>
                                <?php else :?>
                                    Custom Cloud Services
                                <?php endif; ?>
                            </span>
                        </h3>
                        <button class="primary-button color-main--h">
                            <?php if( get_field("choos-price_wp-but") ): ?>
                                <?php the_field( "choos-price_wp-but"); ?>
                            <?php else :?>
                                Get Started
                            <?php endif; ?>
                        </button>
                    </div>
                </div>
                <div class="choos-price__item wow zoomIn">
                    <div class="choos-price__card">
                        <h3 class="choos-price__title margin_mb-21">
                            <span class="choos-price__title choos-price__title_name-top margin_mb-30 color-main--h">
                                <?php if( get_field("choos-price-name-top_wp-title") ): ?>
                                    <?php the_field( "choos-price-name-top_wp-title"); ?>
                                <?php else :?>
                                    Basic plan
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title choos-price__title_name-secondary color-main--h">
                                <span class="choos-price__title_name-secondary choos-price__title_dollar color-main--h">
                                    <?php if( get_field("choos-price-currency_wp-title") ): ?>
                                        <?php the_field( "choos-price-currency_wp-title"); ?>
                                    <?php else :?>
                                        $
                                    <?php endif; ?>
                                </span>
                                    <?php if( get_field("choos-price-period_wp-subtitle") ): ?>
                                        <?php the_field( "choos-price-period_wp-subtitle"); ?>
                                    <?php else :?>
                                        62
                                    <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini margin_mb-30 color-main--h">
                                <?php if( get_field("choos-price-period_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-period_wp-subtitle"); ?>
                                <?php else :?>
                                    per month
                                <?php endif; ?>    
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-account_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-account_wp-subtitle"); ?>
                                <?php else :?>
                                    8 Account
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-support_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-support_wp-subtitle"); ?>
                                <?php else :?>
                                    24 hour support
                                <?php endif; ?>
                            </span>
                            <span class="choos-price__title_mini color-main--h">
                                <?php if( get_field("choos-price-custom-services_wp-subtitle") ): ?>
                                    <?php the_field( "choos-price-custom-services_wp-subtitle"); ?>
                                <?php else :?>
                                    Custom Cloud Services
                                <?php endif; ?>
                            </span>
                        </h3>
                        <button class="primary-button color-main--h">
                            <?php if( get_field("choos-price_wp-but") ): ?>
                                <?php the_field( "choos-price_wp-but"); ?>
                            <?php else :?>
                                Get Started
                            <?php endif; ?>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="how-it-works">
        <div class="container">
            <h1 class="title margin_mb-80 wow fadeInDown">
                <span class="title__name-top">
                    <?php if( get_field("how-it-works_wp-title") ): ?>
                        <?php the_field( "how-it-works-title"); ?>
                    <?php else :?>
                        How it works
                    <?php endif; ?>
                </span>
                <span class="title__secondary">
                    <?php if( get_field("how-it-works_wp-subtitle") ): ?>
                        <?php the_field( "how-it-works_wp-subtitle"); ?>
                    <?php else :?>
                        Lorem Ipsum is simply dummy Business industry.
                    <?php endif; ?>
                </span>
            </h1>
            <div class="row text-center">
                <?php
                    // указываем классы svg иконки
                    $svg_attr = array(
                        'class' => "img-area__icon img-area__icon_h-72 style-svg"
                    );
                    // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
                    $query = new WP_Query( 'cat=4&posts_per_page=4' );
                    if( $query->have_posts() ){
                        
                        $i = 1;
                        while( $query->have_posts() ){
                            
                            if ($i %2 == 0){
                                echo "<div class='col-md-3 how-it-works__card how-it-works__card_arrow-reverse wow fadeInUp'>";
                                
                            $query->the_post(); ?>
                            
                                <a class="how-it-works__link" href="<?php the_permalink(); ?>">
                                    <span class="img-area">
                                        <?php the_post_thumbnail( 'full', $svg_attr ); ?>
                                    </span>
                                </a>
                                <a href="<?php the_permalink(); ?>"> 
                                    <h3 class="subtitle how-it-works_fsz-20 margin_mb-30 margin_mt-102"><?php the_title(); ?></h3>
                                </a>
                                <span class="desc">
                                    <?php the_excerpt();?>
                                </span>

                            <?php
                                echo "</div>";
                            }
                            
                            if ($i %2 != 0){
                                echo "<div class='col-md-3 how-it-works__card how-it-works__card_arrow wow fadeInUp'>";
                                
                            $query->the_post(); ?>
                            
                                <a class="how-it-works__link" href="<?php the_permalink(); ?>">
                                    <span class="img-area">
                                        <?php the_post_thumbnail( 'full', $svg_attr ); ?>
                                    </span>
                                </a>
                                <a href="<?php the_permalink(); ?>"> 
                                    <h3 class="subtitle how-it-works_fsz-20 margin_mb-30 margin_mt-102"><?php the_title(); ?></h3>
                                </a>
                                <span class="desc">
                                    <?php the_excerpt();?>
                                </span>

                            <?php
                                echo "</div>";
                            }

                            if ($i == 3){
                                echo "<div class='col-md-3 how-it-works__card wow fadeInUp'>";
                                
                            $query->the_post(); ?>
                            
                                <a class="how-it-works__link" href="<?php the_permalink(); ?>">
                                    <span class="img-area">
                                        <?php the_post_thumbnail( 'full', $svg_attr ); ?>
                                    </span>
                                </a>
                                <a href="<?php the_permalink(); ?>"> 
                                    <h3 class="subtitle how-it-works_fsz-20 margin_mb-30 margin_mt-102"><?php the_title(); ?></h3>
                                </a>
                                <span class="desc">
                                    <?php the_excerpt();?>
                                </span>

                            <?php
                                echo "</div>";
                            }

                            ?>

                            <?php

                            $i++;
                        }
                        wp_reset_postdata(); // сбрасываем переменную $post
                    } else {
                        echo 'Записей нет.';
                    }
                ?>
            </div>
            <div class="row wow flipInX">
                <button class="primary-button mx-auto">
                    <?php if( get_field("how-it-works_wp-but") ): ?>
                        <?php the_field( "how-it-works_wp-but"); ?>
                    <?php else :?>
                        Get Start Now
                    <?php endif; ?>
                </button>
            </div>
        </div>
    </section>

    <section class="happy-clients">
        <div class="container">
                <h1 class="title margin_mb-58 wow fadeInDown">
                    <span class="title__name-top title_color-main">
                        <?php if( get_field("happy-clients_wp-title") ): ?>
                            <?php the_field( "happy-clients_wp-title"); ?>
                        <?php else :?>
                            Happy Clients
                        <?php endif; ?>
                    </span>
                    <span class="title__secondary title_color-main">
                        <?php if( get_field("happy-clients_wp-subtitle") ): ?>
                            <?php the_field( "happy-clients_wp-subtitle"); ?>
                        <?php else :?>
                            We are explain who is using our business solutions
                        <?php endif; ?>
                    </span>
                </h1>
            <div class="happy-clients__inner wow fadeInUp">
                <?php
                    // указываем категорию 9 и выключаем разбиение на страницы (пагинацию)
                    $query = new WP_Query( 'cat=3&posts_per_page=4' ); 
                    if( $query->have_posts() ){
                        while( $query->have_posts() ){
                            $query->the_post(); ?>

                            <div class="happy-clients__card wow fadeInUp">
                                <div class="happy-clients__card_item wow fadeInDown" data-wow-delay='0.4s'>
                                    <a href="<?php the_permalink(); ?>" class="happy-clients__photo">
                                        <img class="happy-clients__photo_img" src="<?php the_post_thumbnail_url(); ?>" alt="client">
                                    </a>
                                </div>
                                <div class="happy-clients__card_item wow fadeInRight" data-wow-delay='0.4s'>
                                    <i class="fas fa-quote-right happy-clients__quote"></i>
                                    <span class="desc"><?php the_excerpt();?></span>
                                    <i class="fas fa-quote-left happy-clients__quote"></i>
                                    <a href="<?php the_permalink(); ?>" class="happy-clients__title margin_mt-30"> 
                                        <?php echo get_the_title(); ?>
                                        <span class="happy-clients__title_color-subtitle">
                                            <?php the_title(); ?>
                                        </span>
                                    </a>
                                </div>
                            </div>
                            
                            <?php
                        }
                        wp_reset_postdata(); // сбрасываем переменную $post
                    } else {
                        echo 'Записей нет.';
                    }
                ?>
            </div>
        </div>
    </section>

    <section class="news-letter">
        <div class="container">
            <h1 class="title margin_mb-40 wow fadeInDown">
                <span class="title__name-top">
                    <?php if( get_field("news-letter_wp-title") ): ?>
                        <?php the_field( "news-letter_wp-title"); ?>
                    <?php else :?>
                        newsletter
                    <?php endif; ?>
                </span>
                <span class="title__secondary">
                    <?php if( get_field("news-letter_wp-title") ): ?>
                        <?php the_field( "news-letter_wp-title"); ?>
                    <?php else :?>
                        Lorem Ipsum is simply dummy Business industry
                    <?php endif; ?>
                </span>
            </h1>
            <form class="form" action="/">
                <div class="form__inner-news wow fadeInUp">
                    <i class="form__icon fas fa-user"></i><input class="form__field form__field_icon" type="text" name="name" placeholder="Full Name">
                </div>
                <div class="form__inner-news wow fadeInUp">
                    <i class="form__icon fas fa-envelope"></i><input class="form__field" type="e-mail" name="phone" placeholder="E-mail adress">
                </div>
                <button class="primary-button margin_max-w-767_mt-15 wow flipInX" data-wow-delay='0.4s'>
                    <?php if( get_field("news-letter_wp-title") ): ?>
                        <?php the_field( "news-letter_wp-title"); ?>
                    <?php else :?>
                        Request a quote
                    <?php endif; ?>
                </button>
            </form>
        </div>
    </section>

    <section class="adress margin_mb-58">
        <div class="container">
            <div class="adress__sphere wow fadeInDown">
                <h3 class="adress__title">
                    <span class="adress__title_name-top margin_mb-21">
                        Address
                    </span>
                    <span class="adress__title_secondary">Business street</span>
                    <span class="adress__title_secondary">Second north section</span>
                    <span class="adress__title_secondary">Bavani nagar. 88769</span>
                    <span class="adress__title_secondary margin_mb-17">
                        Call : <a class="adress__link" href="tel:phone-1"> <?php echo get_theme_mod('phone-1') ?> </a>
                    </span>
                    <a class="adress__title_primary" href="mailto:mail"><?php echo get_theme_mod('mail') ?></a> 
                    <div class="adress__sphere_triangle"></div>
                </h3>
            </div>
            <div class="logo mx-auto margin_mt-30">
                <a class="logo__link wow fadeInUp" href="/">
                    <img class="logo__img" src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="логотип.png">
                </a>
            </div>
        </div>
    </section>

</main>

<div class="overlay"></div>

<?php get_footer() ;?>
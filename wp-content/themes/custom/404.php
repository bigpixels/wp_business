<?php
/**
 * The template for displaying 404 pages (Not Found)
 */
get_header(); ?>


    <section class="breadcrumbs-wrap container">
		<?php dimox_breadcrumbs() ?>
    </section>

    <!--error section-->
    <section class="error-section">
        <div class="container">
            <p>Ошибка</p>
            <h1>404</h1>
            <p>Страница не найдена</p>
            <p>Вернутся на <a href="/">главную</a></p>
        </div>
    </section>
    <!--error section END-->


<?php get_footer() ;?>
<?php
get_header() ;?>

    <section class="single">
        <div class="container">
            <h3 class="section__title"><?php the_title(); ?></h3>
            <div class="course__inner">
				<?php the_post_thumbnail(array(540, 360)) ?>
            </div>
        </div>
    </section>

    <section class="page-content__wrap">
        <div class="container">
			<?php while( have_posts() ) : the_post();
				$more = 1; // отображаем полностью всё содержимое поста
				the_content(); // выводим контент
			endwhile; ?>
        </div>
    </section>


<?php get_footer() ;?>
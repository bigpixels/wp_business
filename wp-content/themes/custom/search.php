<?php
/*
Template Name: Search
*/
?>

<?php get_header();?>


<div class="page-content">

    <!--custom-search section-->
    <section class="custom-search">
        <div class="container">
            <h2 class="category-title__content"><?php the_title(); ?></h2>
            <div class="row">
                <div class="col-12">
                    <?php
                    if (have_posts()) :
                        while (have_posts()) : the_post();
                            ?>
                            <div id="posts">
                                <h2><a href="<?php the_permalink() ?>"><?php the_title() ?></a></h2>
                                <div id="post_info">
                                    <div>Дата: <?php the_date() ?></div>
                                    <div id="clear"></div>
                                </div>
                                <p><?php the_excerpt() ?></p>
                            </div>
                        <?php endwhile; ?>
                        <?php
                    else :
                        echo "Ничего не найдено";
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
    <!--custom-search section -END-->

</div>


<?php get_footer(); ?>

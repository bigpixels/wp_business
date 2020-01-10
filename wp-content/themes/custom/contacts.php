<?php  
/*
	Template name: Контакты
*/
?>
<?php get_header(); ?>

<main class="contacts">
	<section>
		<div class="container">
			<h1><?php the_title(); ?></h1>
		</div>
	</section>

	<div class="container">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5077.138565346553!2d30.466648127910425!3d50.486361717921085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4cdec0951f253%3A0x45ea16ce25c1cc0e!2z0JDQvdGC0LjRhNC10LXQstC60LAsINCa0LjQtdCyLCAwMjAwMA!5e0!3m2!1sru!2sua!4v1577470501108!5m2!1sru!2sua" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
		<div class="text-editor-content">
			<?php while( have_posts() ) : the_post();
				$more = 1; // отображаем полностью всё содержимое поста
				the_content(); // выводим контент
			endwhile; ?>
		</div>
	</div>

</main>

<?php get_footer(); ?>
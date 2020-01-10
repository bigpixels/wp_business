<?php
	add_theme_support( 'post-thumbnails' ); // для всех типов постов
	add_theme_support( 'html5', array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption' ) );
	register_nav_menus();
	//Scripts
	function jqueryIntegration() {
		wp_deregister_script( 'jquery' );
		wp_register_script( 'jquery', '/wp-content/themes/custom/libs/jquery/dist/jquery.min.js');
		wp_enqueue_script( 'jquery' );
	}    

	add_action( 'wp_enqueue_scripts', 'jqueryIntegration');


    add_action('wp_footer', 'add_scripts'); // приклеем ф-ю на добавление скриптов в футер
    function add_scripts() { // добавление скриптов
        if(is_admin()) return false; // если мы в админке - ничего не делаем
        wp_enqueue_script('script', get_template_directory_uri().'/js/script.js','','',true); // slick
        wp_enqueue_script('slick', get_template_directory_uri().'/js/slick.min.js','','',true); // slick
        wp_enqueue_script('wow', get_template_directory_uri().'/js/wow.min.js','','',true); // slick
        wp_enqueue_script('main', get_template_directory_uri().'/src/common.js','','',true); // и скрипты шаблона
    }

    add_action('wp_print_styles', 'add_styles'); // приклеем ф-ю на добавление стилей в хедер
    function add_styles() { // добавление стилей
        if(is_admin()) return false; // если мы в админке - ничего не делаем
//        wp_enqueue_style( 'slick', get_template_directory_uri().'/css/slick.css' ); // slick
        wp_enqueue_style( 'animate', get_template_directory_uri().'/css/animate.min.css' );
        wp_enqueue_style( 'botstrap', get_template_directory_uri().'/css/bootstrap.min.css' );
        wp_enqueue_style( 'main', get_template_directory_uri().'/css/main.min.css' ); // основные стили шаблона
    }
    
    add_filter( 'upload_mimes', 'upload_allow_types' );
    function upload_allow_types( $mimes ) {
        // разрешаем новые типы
        $mimes['svg']  = 'text/plain'; // image/svg+xml
        return $mimes;
    }

    add_filter( 'wp_check_filetype_and_ext', 'filter_function_name_497', 10, 4 );
    function filter_function_name_497( $type_and_ext, $file, $filename, $mimes ){
	// загружается файл с расширением .svg
	if( '.svg' === strtolower( substr($filename, -4) ) ){ 

            $filesize = filesize( $file ) / 1024; // КБ

            // разрешим
            if( $filesize < 50 && current_user_can('manage_options') ){
                $type_and_ext['ext']  = 'svg';
                $type_and_ext['type'] = 'image/svg+xml';
            }
            // запретим
            else {
                $type_and_ext['ext'] = $type_and_ext['type'] = false;
            }

        }

	    return $type_and_ext;
    }
    
//function wp_is_mobile() {
//
//    static $is_mobile;
//
//    if ( isset($is_mobile) )
//
//        return $is_mobile;
//
//    if ( empty($_SERVER[‘HTTP_USER_AGENT’]) ) {
//        $is_mobile = false;
//    } elseif ( strpos($_SERVER[‘HTTP_USER_AGENT’], ‘Mobile’) !== false // many mobile devices (all iPhone, iPad, etc.)
//        || strpos($_SERVER[‘HTTP_USER_AGENT’], ‘Android’) !== false
//        || strpos($_SERVER[‘HTTP_USER_AGENT’], ‘Silk/’) !== false
//        || strpos($_SERVER[‘HTTP_USER_AGENT’], ‘Kindle’) !== false
//        || strpos($_SERVER[‘HTTP_USER_AGENT’], ‘BlackBerry’) !== false ) {
//        $is_mobile = true;
//    } else {
//        $is_mobile = false;
//    }
//
//    return $is_mobile;
//}



    function dimox_breadcrumbs() {

    /* === ОПЦИИ === */
    $text['home'] = 'Главная'; // текст ссылки "Главная"
    $text['category'] = '%s'; // текст для страницы рубрики
    $text['search'] = 'Результаты поиска по запросу "%s"'; // текст для страницы с результатами поиска
    $text['tag'] = 'Записи с тегом "%s"'; // текст для страницы тега
    $text['author'] = 'Статьи автора %s'; // текст для страницы автора
    $text['404'] = 'Ошибка 404'; // текст для страницы 404
    $text['page'] = 'Страница %s'; // текст 'Страница N'
    $text['cpage'] = 'Страница комментариев %s'; // текст 'Страница комментариев N'

    $wrap_before = '<ul class="breadcrumbs" itemscope itemtype="http://schema.org/BreadcrumbList">'; // открывающий тег обертки
    $wrap_after = '</ul><!-- .breadcrumbs -->'; // закрывающий тег обертки
    $sep = '/'; // разделитель между "крошками"
    $sep_before = '<span class="sep">'; // тег перед разделителем
    $sep_after = '</span>'; // тег после разделителя
    $show_home_link = 1; // 1 - показывать ссылку "Главная", 0 - не показывать
    $show_on_home = 0; // 1 - показывать "хлебные крошки" на главной странице, 0 - не показывать
    $show_current = 1; // 1 - показывать название текущей страницы, 0 - не показывать
    $before = '<li class="current breadcrumbs__item">'; // тег перед текущей "крошкой"
    $after = '</li>'; // тег после текущей "крошки"
    /* === КОНЕЦ ОПЦИЙ === */

    global $post;
    $home_url = home_url('/');
    $link_before = '<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">';
    $link_after = '</li>';
    $link_attr = ' itemprop="item"';
    $link_in_before = '<li itemprop="name" class="breadcrumbs__item">';
    $link_in_after = '</li>';
    $link = $link_before . '<a href="%1$s"' . $link_attr . '>' . $link_in_before . '%2$s' . $link_in_after . '</a>' . $link_after;
    $frontpage_id = get_option('page_on_front');
    $parent_id = ($post) ? $post->post_parent : '';
    $sep = ' ' . $sep_before . $sep . $sep_after . ' ';
    $home_link = $link_before . '<a href="' . $home_url . '"' . $link_attr . ' class="home">' . $link_in_before . $text['home'] . $link_in_after . '</a>' . $link_after;

    if (is_home() || is_front_page()) {

        if ($show_on_home) echo $wrap_before . $home_link . $wrap_after;

    } else {

        echo $wrap_before;
        if ($show_home_link) echo $home_link;

        if ( is_category() ) {
            $cat = get_category(get_query_var('cat'), false);
            if ($cat->parent != 0) {
                $cats = get_category_parents($cat->parent, TRUE, $sep);
                $cats = preg_replace("#^(.+)$sep$#", "$1", $cats);
                $cats = preg_replace('#<a([^>]+)>([^<]+)<\/a>#', $link_before . '<a$1' . $link_attr .'>' . $link_in_before . '$2' . $link_in_after .'</a>' . $link_after, $cats);
                if ($show_home_link) echo $sep;
                echo $cats;
            }
            if ( get_query_var('paged') ) {
                $cat = $cat->cat_ID;
                echo $sep . sprintf($link, get_category_link($cat), get_cat_name($cat)) . $sep . $before . sprintf($text['page'], get_query_var('paged')) . $after;
            } else {
                if ($show_current) echo $sep . $before . sprintf($text['category'], single_cat_title('', false)) . $after;
            }

        } elseif ( is_search() ) {
            if (have_posts()) {
                if ($show_home_link && $show_current) echo $sep;
                if ($show_current) echo $before . sprintf($text['search'], get_search_query()) . $after;
            } else {
                if ($show_home_link) echo $sep;
                echo $before . sprintf($text['search'], get_search_query()) . $after;
            }

        } elseif ( is_day() ) {
            if ($show_home_link) echo $sep;
            echo sprintf($link, get_year_link(get_the_time('Y')), get_the_time('Y')) . $sep;
            echo sprintf($link, get_month_link(get_the_time('Y'), get_the_time('m')), get_the_time('F'));
            if ($show_current) echo $sep . $before . get_the_time('d') . $after;

        } elseif ( is_month() ) {
            if ($show_home_link) echo $sep;
            echo sprintf($link, get_year_link(get_the_time('Y')), get_the_time('Y'));
            if ($show_current) echo $sep . $before . get_the_time('F') . $after;

        } elseif ( is_year() ) {
            if ($show_home_link && $show_current) echo $sep;
            if ($show_current) echo $before . get_the_time('Y') . $after;

        } elseif ( is_single() && !is_attachment() ) {
            if ($show_home_link) echo $sep;
            if ( get_post_type() != 'post' ) {
                $post_type = get_post_type_object(get_post_type());
                $slug = $post_type->rewrite;
                printf($link, $home_url . $slug['slug'] . '/', $post_type->labels->singular_name);
                if ($show_current) echo $sep . $before . get_the_title() . $after;
            } else {
                $cat = get_the_category(); $cat = $cat[0];
                $cats = get_category_parents($cat, TRUE, $sep);
                if (!$show_current || get_query_var('cpage')) $cats = preg_replace("#^(.+)$sep$#", "$1", $cats);
                $cats = preg_replace('#<a([^>]+)>([^<]+)<\/a>#', $link_before . '<a$1' . $link_attr .'>' . $link_in_before . '$2' . $link_in_after .'</a>' . $link_after, $cats);
                echo $cats;
                if ( get_query_var('cpage') ) {
                    echo $sep . sprintf($link, get_permalink(), get_the_title()) . $sep . $before . sprintf($text['cpage'], get_query_var('cpage')) . $after;
                } else {
                    if ($show_current) echo $before . get_the_title() . $after;
                }
            }

            // custom post type
        } elseif ( !is_single() && !is_page() && get_post_type() != 'post' && !is_404() ) {
            $post_type = get_post_type_object(get_post_type());
            if ( get_query_var('paged') ) {
                echo $sep . sprintf($link, get_post_type_archive_link($post_type->name), $post_type->label) . $sep . $before . sprintf($text['page'], get_query_var('paged')) . $after;
            } else {
                if ($show_current) echo $sep . $before . $post_type->label . $after;
            }

        } elseif ( is_attachment() ) {
            if ($show_home_link) echo $sep;
            $parent = get_post($parent_id);
            $cat = get_the_category($parent->ID); $cat = $cat[0];
            if ($cat) {
                $cats = get_category_parents($cat, TRUE, $sep);
                $cats = preg_replace('#<a([^>]+)>([^<]+)<\/a>#', $link_before . '<a$1' . $link_attr .'>' . $link_in_before . '$2' . $link_in_after .'</a>' . $link_after, $cats);
                echo $cats;
            }
            printf($link, get_permalink($parent), $parent->post_title);
            if ($show_current) echo $sep . $before . get_the_title() . $after;

        } elseif ( is_page() && !$parent_id ) {
            if ($show_current) echo $sep . $before . get_the_title() . $after;

        } elseif ( is_page() && $parent_id ) {
            if ($show_home_link) echo $sep;
            if ($parent_id != $frontpage_id) {
                $breadcrumbs = array();
                while ($parent_id) {
                    $page = get_page($parent_id);
                    if ($parent_id != $frontpage_id) {
                        $breadcrumbs[] = sprintf($link, get_permalink($page->ID), get_the_title($page->ID));
                    }
                    $parent_id = $page->post_parent;
                }
                $breadcrumbs = array_reverse($breadcrumbs);
                for ($i = 0; $i < count($breadcrumbs); $i++) {
                    echo $breadcrumbs[$i];
                    if ($i != count($breadcrumbs)-1) echo $sep;
                }
            }
            if ($show_current) echo $sep . $before . get_the_title() . $after;

        } elseif ( is_tag() ) {
            if ( get_query_var('paged') ) {
                $tag_id = get_queried_object_id();
                $tag = get_tag($tag_id);
                echo $sep . sprintf($link, get_tag_link($tag_id), $tag->name) . $sep . $before . sprintf($text['page'], get_query_var('paged')) . $after;
            } else {
                if ($show_current) echo $sep . $before . sprintf($text['tag'], single_tag_title('', false)) . $after;
            }

        } elseif ( is_author() ) {
            global $author;
            $author = get_userdata($author);
            if ( get_query_var('paged') ) {
                if ($show_home_link) echo $sep;
                echo sprintf($link, get_author_posts_url($author->ID), $author->display_name) . $sep . $before . sprintf($text['page'], get_query_var('paged')) . $after;
            } else {
                if ($show_home_link && $show_current) echo $sep;
                if ($show_current) echo $before . sprintf($text['author'], $author->display_name) . $after;
            }

        } elseif ( is_404() ) {
            if ($show_home_link && $show_current) echo $sep;
            if ($show_current) echo $before . $text['404'] . $after;

        } elseif ( has_post_format() && !is_singular() ) {
            if ($show_home_link) echo $sep;
            echo get_post_format_string( get_post_format() );
        }

        echo $wrap_after;

    }
} // end of dimox_breadcrumbs()

add_action('customize_register', function($customizer){
	$customizer->add_section(
		'contacts',
		array(
			'title' => 'Контактные данные',
			'priority' => 11,
		)
	);
	$customizer->add_setting(
		'phone-1',
		array('default' => '-')
	);
	$customizer->add_setting(
		'phone-2',
		array('default' => '-')
	);
	$customizer->add_setting(
		'phone-3',
		array('default' => '-')
	);
	$customizer->add_setting(
		'phone-4',
		array('default' => '-')
	);
	$customizer->add_setting(
		'mail',
		array('default' => '-')
	);
	$customizer->add_setting(
		'address',
		array('default' => '-')
	);
	$customizer->add_setting(
		'time-1',
		array('default' => '-')
	);
	$customizer->add_setting(
		'social-1',
		array('default' => '#')
	);
	$customizer->add_setting(
		'social-2',
		array('default' => '#')
    );
    $customizer->add_setting(
		'social-3',
		array('default' => '#')
    );
    $customizer->add_setting(
		'social-4',
		array('default' => '#')
    );
    $customizer->add_setting(
		'social-5',
		array('default' => '#')
	);
	//////////////////////////////
	$customizer->add_control(
		'social-1',
		array(
			'label' => 'Ссылка на Facebook',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'social-2',
		array(
			'label' => 'Ссылка на Instagram',
			'section' => 'contacts',
			'type' => 'text',
		)
    );
    $customizer->add_control(
		'social-3',
		array(
			'label' => 'Ссылка на Twitter',
			'section' => 'contacts',
			'type' => 'text',
		)
    );
    $customizer->add_control(
		'social-4',
		array(
			'label' => 'Ссылка на Google',
			'section' => 'contacts',
			'type' => 'text',
		)
    );
    $customizer->add_control(
		'social-5',
		array(
			'label' => 'Ссылка на LinkedIn',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'time-1',
		array(
			'label' => 'График работы ПН-ПТ',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'phone-1',
		array(
			'label' => 'Номер телефона',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'phone-2',
		array(
			'label' => 'Номер телефона 2',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'phone-3',
		array(
			'label' => 'Номер телефона 3',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'phone-4',
		array(
			'label' => 'Номер телефона 4',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'mail',
		array(
			'label' => 'E-mail',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
	$customizer->add_control(
		'address',
		array(
			'label' => 'Адресс',
			'section' => 'contacts',
			'type' => 'text',
		)
	);
});



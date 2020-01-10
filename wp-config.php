<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'business');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'J#pH]s^p*@,fcw$+p%IzU,[IG8jcxVj @:}WL?=%-tdyW!VOe44F[-W:a@.$I3qV');
define('SECURE_AUTH_KEY',  ':bL7@6 g*3T!%LSK1VI<qi+Ku39BkybQ_:M%OyNq0&H97-0S}?hZwxLB9dr(}jp$');
define('LOGGED_IN_KEY',    ',Z?[.:|m|,@BxU,le|OO<wMDZ)vT>s^QKGx+N#y+S[72Ky#SrLsn3hg!|zMN9%j6');
define('NONCE_KEY',        'oOX.$;A;rc?terOjyz:B~(Vq.dmiFrP9]-^V,>[.[[V:z|.7S=IA9^I4|dZ*D4OP');
define('AUTH_SALT',        '(eYH$!.0aaTOPFbt6TXjTg}~LpSU~X`C+ND?ZpB4+3O3S68X2F.kFm..BC_kph|+');
define('SECURE_AUTH_SALT', '11PAHMNo};t*9t9xlp9;$.ceo+p9knrVIfW}+7B{nvefvP3%pF:H:-bdvESGoY-)');
define('LOGGED_IN_SALT',   '1F*>vc(1kaU*zkkzVB@&l|#[tP>gY1~x)Q> yt3 BNe+Vn~z>Dqki[9*@[op3pz+');
define('NONCE_SALT',       'BlrR+NJ(%}l!E[w{5NDtk)X{,!~#G}8VwNb<*;3A~Y4(EO(p@Gvl)})Ax4cbtQ:h');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');

<?php
define( 'DB_NAME', getenv('MARIADB_DATABASE') );
define( 'DB_USER', getenv('MARIADB_USER') );
define( 'DB_PASSWORD', getenv('MARIADB_PASSWORD') );
define( 'DB_HOST', getenv('MARIADB_HOST').':'.getenv('MARIADB_PORT') );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',			'put your unique phrase here');
define('SECURE_AUTH_KEY',	'put your unique phrase here');
define('LOGGED_IN_KEY',		'put your unique phrase here');
define('NONCE_KEY',			'put your unique phrase here');
define('AUTH_SALT',			'put your unique phrase here');
define('SECURE_AUTH_SALT',	'put your unique phrase here');
define('LOGGED_IN_SALT',	'put your unique phrase here');
define('NONCE_SALT',		'put your unique phrase here');

$table_prefix = 'wp_';

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

define( 'CONCATENATE_SCRIPTS', false );
// define( 'SCRIPT_DEBUG', true );

require_once ABSPATH . 'wp-settings.php';

<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'jacoborealtygroup.com' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '-^JqMoTUP&&A@eK 3Q7H0n%8/tl~0K`-hqR&dv$*HLF9&EJC`^xPMuD5hfH?Fe[1' );
define( 'SECURE_AUTH_KEY',  'hc)]cBtM8Q@b&`,Gx=?T)aoTfX7/5fW5?y8S^s5mkI9X=t-bEdbQPtQ#CgE<b/i|' );
define( 'LOGGED_IN_KEY',    ')gBgw;@%oDW*`6r&4%PxaP{-wu*0sxJ0(ra%R6I.eROK84;eatR6kc-2vj~Dybdg' );
define( 'NONCE_KEY',        'oa3/n:9qrjocr_[`er^ JAKH[B ^N?X3xfhH`4nYhdkF/j[yfpq1)g?_:^MnLDr7' );
define( 'AUTH_SALT',        '*TIe,m:>jkvuQ5oKOa57O:;6d+Wa^4AHtqICNO<GY }}yx{G=pr_lT&PLC6%SSX<' );
define( 'SECURE_AUTH_SALT', 'J_T`1|c)VB>uwEasN@I,e?7}u[n,jMc2a4GA.-mBFr@Orky>rt;r9]i[vat-v2JP' );
define( 'LOGGED_IN_SALT',   '[J=^BTw.I:Vxy=Vq7uyNLS_i>m^9O%40mKjHEa69&oPduo]HIP,uZaPL`a8HU0!}' );
define( 'NONCE_SALT',       '5Q:yHnpIcR*,xXd9D{vd[]wRk&-5HX:u7gEhGIUd$xE}fa|t1>4yLmloR?qQ1|f_' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

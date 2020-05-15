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
define( 'DB_NAME', 'ms' );

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
define( 'AUTH_KEY',         'R<bDWoD,saKm{}:(XUgcV^J8TEF[ngEP+}NUX]s>Z)`sY@5$t4wJc@A%Y7yRETDD' );
define( 'SECURE_AUTH_KEY',  'c-:Ffd4sMzbu|NQ{mtHEYs7yZN]2/ts.y>97`UU-6B]{&9-FNCAF<]50Wm/Xf2m[' );
define( 'LOGGED_IN_KEY',    'hFjTX)E/82asa:cvUa*M$89N_PVhm#w_X?!;T6H |j&i^z{>6ni*AL!;WqiU`$){' );
define( 'NONCE_KEY',        '#QNKy&p*ZXna`OZ-*F;%G-z?*.kN}Y&V~j7g}_IhOu|PH)BgmA3N7YNm,(x`(~~e' );
define( 'AUTH_SALT',        'ht#-:K0Aoh|KjL 3SQ~y,{*11_.?gGsuh9|ZO= aLwzN5X~:FE1L?gu37L~^q$(Z' );
define( 'SECURE_AUTH_SALT', '<d7=jT>(hn{|3%b#k#lMfl(y6;T9c]-+aJO1[pwr3`WnJW31%MF <j5Y&2~abQ~<' );
define( 'LOGGED_IN_SALT',   '43S,Ref)q/Alw+K%KYkJ##.VXs2yl6!O8c2J(UuD>&ibk~Z*[[BXZoSVt4A$9jf+' );
define( 'NONCE_SALT',       'vnjhFqb=8F-eR`o>m4#fk${yK.$GR/<UY~sITv!g^5*?.Q$7^F[7a=-8:>VFFF1d' );

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

define('FS_METHOD', 'direct');


/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

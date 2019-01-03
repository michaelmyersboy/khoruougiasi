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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'khoruougiasi');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'q@C~N2*EbJs3D{qb!x5>xifr?/Xe&K^aiYURmN}]N+ lh8o>auedgPXL6b;3=|6F');
define('SECURE_AUTH_KEY',  'B9&f<KNnAC. nw=Zz Bg*BxeSDml: CKg!}T{dGr]k ]oCd@$rG{!6vBP347Vigt');
define('LOGGED_IN_KEY',    '>D4lUgx{&RpcKNN.ril6#qrXlOjSHk3]NPr}s*Lxi})<K3CdWwKS|tac9#@?e2W?');
define('NONCE_KEY',        'do5Q%~kh5EwA7@swi{= T&O1$-!/7vaP{~)<pW`,Q+az1J;ca$:k`X3g})!!Wc3D');
define('AUTH_SALT',        'NXD^O*!E?}}$VHu-WQO(v+c~f=hI5(2LvCwwa~DPTW)y&Ar> XcoOW%ebn9.P/kV');
define('SECURE_AUTH_SALT', 'iofY9ZaUOdHd+m{:D(Q^bHnUIWW4`&s6<p0+BMIA&OcC|r8zLy2&oIih!2,!$^43');
define('LOGGED_IN_SALT',   'A#<s2<l>}|>^Tr4=z/0[(gPI~kZ!xVIC 0oF{?)nof5w{i,(YAkn0>B<lBl6@|IJ');
define('NONCE_SALT',       'hF{$?PzldNpnaA{6_|JVXzhgor;9NrqbQLK.q>!j`q$(,c#.UMoXfI>_{Cyrr<bh');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'hkrgs_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);
define( 'FS_METHOD', 'direct' );
define( 'WC_LOG_DIR', dirname( __FILE__ ) . '/wp-content/uploads/wc-logs/' );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');




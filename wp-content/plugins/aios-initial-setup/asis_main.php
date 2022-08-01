<?php
/**
 * Plugin Name: AIOS Initial Setup
 * Description: Initial Setup for Agent Image Open Source Website.
 * Version: 5.9.7
 * Author: Agent Image
 * Author URI: https://www.agentimage.com/
 * License: Proprietary
 */

namespace AiosInitialSetup;

// Define Var
if (!defined('WPCF7_AUTOP'))
	define('WPCF7_AUTOP', false);

if (!defined('AIOS_LEADS_NAME'))
	define('AIOS_LEADS_NAME', 'aios_leads');

if (!defined('AIOS_LEADS_VERSION'))
	define('AIOS_LEADS_VERSION', '1.0.4');

if (!defined('AIOS_WIDGET_REVISIONS_NAME'))
	define('AIOS_WIDGET_REVISIONS_NAME', 'aios_revisions');

if (!defined('AIOS_WIDGET_REVISIONS_VERSION'))
	define('AIOS_WIDGET_REVISIONS_VERSION', '1.0.0');

// Define paths
if (!defined('AIOS_INITIAL_SETUP_VERSION'))
	define('AIOS_INITIAL_SETUP_VERSION', '5.9.0');

if (!defined('AIOS_INITIAL_SETUP_URL'))
	define('AIOS_INITIAL_SETUP_URL', plugin_dir_url(__FILE__));

if (!defined('AIOS_INITIAL_SETUP_RESOURCES'))
	define('AIOS_INITIAL_SETUP_RESOURCES', AIOS_INITIAL_SETUP_URL . 'resources/');

if (!defined('AIOS_INITIAL_SETUP_DIR'))
	define('AIOS_INITIAL_SETUP_DIR', realpath(plugin_dir_path(__FILE__)) . DIRECTORY_SEPARATOR);

if (!defined('AIOS_INITIAL_SETUP_MODULES'))
	define('AIOS_INITIAL_SETUP_MODULES', AIOS_INITIAL_SETUP_DIR . 'app' . DIRECTORY_SEPARATOR . 'modules');

if (!defined('AIOS_INITIAL_SETUP_VIEWS'))
	define('AIOS_INITIAL_SETUP_VIEWS', AIOS_INITIAL_SETUP_DIR . 'resources' . DIRECTORY_SEPARATOR . 'views' . DIRECTORY_SEPARATOR);

if (!defined('AIOS_ASSETS_MINIFIER'))
	define('AIOS_ASSETS_MINIFIER', 'https://api.agentimage.com/');

if (!defined('PAGEURL_ABSPATH'))
	define('PAGEURL_ABSPATH', $abspathDir = str_replace(['\\','/'], DIRECTORY_SEPARATOR, ABSPATH));

if (!defined('IS_LOGIN_PAGE'))
	define('IS_LOGIN_PAGE', (in_array(PAGEURL_ABSPATH.'wp-login.php', get_included_files()) || in_array(PAGEURL_ABSPATH.'wp-register.php', get_included_files())) || (isset($_GLOBALS['pagenow']) && $GLOBALS['pagenow'] === 'wp-login.php') || $_SERVER['PHP_SELF']== '/wp-login.php');

require 'FileLoader.php';

$fileLoader = new FileLoader();
$fileLoader->load_files([
	'config/Assets',
	'config/Config',
	'config/Forms',
	'config/Modules',
	'config/Generate',
]);
$fileLoader->load_directory('helpers/functions');
$fileLoader->load_directory('helpers/traits');
$fileLoader->load_directory('helpers/classes');
$fileLoader->load_directory('database');
$fileLoader->load_directory('backward-compatibility');
$fileLoader->load_directory('app/http');
$fileLoader->load_files(['app/App']);

// Load App
$app = new App\App(__FILE__);

// Load Controllers
if (is_admin()) {
	$fileLoader->load_files([
		'app/InitialSetup',
		'app/SiteInfo',
		'app/controllers/AdminAutoEnableSettingsController',
		'app/controllers/AdminBarController',
		'app/controllers/AdminMenusController',
		'app/controllers/AdminDuplicateController',
		'app/controllers/AdminMetaboxController',
		'app/controllers/AttachmentPageController',
		'app/controllers/DashboardController',
		'app/controllers/FetchController',
		'app/controllers/NoticesController',
		'app/controllers/WidgetRevisionsController',
	]);
} else if (IS_LOGIN_PAGE) {
	$fileLoader->load_files([
		'app/controllers/LoginFormV2Controller',
	]);
}

$fileLoader->load_files([
	'app/controllers/AdminFrontendController',
	'app/controllers/CustomFieldsShortcodeController',
	'app/controllers/FrontendController',
	'app/controllers/LanguagesController',
	'app/controllers/QuickSearchController',
	'app/controllers/ShortcodeController',
	'app/controllers/ShortcodeSiteInfoController',
	'ModulesLoader'
]);

// Load Widgets if aios all widgets is not active
if (function_exists('is_plugin_active')) {
	if (! is_plugin_active('aios-all-widgets/taw_main.php.php')) {
		$fileLoader->load_files(['app/widgets/Helpers', 'app/widgets/Controller']);
		$fileLoader->load_file_in_directories('app' . DIRECTORY_SEPARATOR . 'widgets', 'widget.php');
	}

	$fileLoader->load_files(['app/widgets/Notifications']);
}

<?php

if ( version_compare(PHP_VERSION, '5.3.2', '<') ){
    die('Hideks Framework requires PHP 5.3.2 or higher...');
}
        
defined('DS') || define('DS', DIRECTORY_SEPARATOR);

defined('APPLICATION_PATH')
    || define('APPLICATION_PATH', realpath(dirname(__FILE__).DS.'..').DS.'application');

defined('VENDOR_PATH')
    || define('VENDOR_PATH', realpath(dirname(__FILE__).DS.'..').DS.'vendor');

set_include_path(implode(PATH_SEPARATOR, array(
    APPLICATION_PATH, VENDOR_PATH, get_include_path()
)));

$composer_autoload = VENDOR_PATH.DS.'autoload.php';

if( !file_exists($composer_autoload) ){
    die('Run composer install...');
}

require_once $composer_autoload;

$application = new \Hideks\Application();
$application->main()->run();
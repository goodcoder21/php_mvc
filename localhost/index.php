<?php

//all errors on
ini_set('display_errors', 1);
error_reporting(E_ALL);


// files turn on
define('ROOT', dirname(__FILE__));
require_once(ROOT.'/components/Router.php');



// router run
$router = new Router();
$router->run();


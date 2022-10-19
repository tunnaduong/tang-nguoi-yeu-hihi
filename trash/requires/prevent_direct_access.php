<?php
$string = $_SERVER['REQUEST_URI'];
if (substr($string, -1) == "/") {
    $string = substr($string, 0, -1);
}
$find = 'index.php';
$replace = '';
$result = preg_replace(strrev("/$find/"), strrev($replace), strrev($string), 1);

if (!apache_request_headers()["ajax_call"] == "true") {
    header("Location: " . strrev($result));
}
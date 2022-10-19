<?php
$lang = "en";
if (isset($_COOKIE['lang'])) {
    $lang = $_COOKIE['lang'] == "vi" ? "vi" : "en";
}
setcookie("lang", $lang, time() + 3600, "/");
require_once $_SERVER['DOCUMENT_ROOT'] . "/cdn/languages/lang." . $lang . ".php";
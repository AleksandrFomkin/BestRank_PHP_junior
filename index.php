<?php
include ("models/DB_Url.inc");

if(isset($_GET['l'])) {
    $link = $_GET["l"];
    $dbUlr = new \Models\DB_Url();
    $longUrl = $dbUlr->getLongUrl($link);
    if (strpos($longUrl, 'http:') === false) {
        $longUrl = 'http://' . $longUrl;
    }
    header('Location: '.$longUrl);
}
include("views/index.tpl");
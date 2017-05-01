<?php
namespace Controllers;
include('../models/DB_Url.inc');

use Models\DB_Url;

function saveUrl($url) {
    $dbUrl = new DB_Url();
    $commandResult = $dbUrl->insertUrl($url);
    if($commandResult != null) {
        return $commandResult;
    } else {
        return "Ошибка во время добавления!";
    }
}

if(isset($_POST['action']) && !empty($_POST['action'])) {
    $action = $_POST['action'];
    switch($action) {
        case 'saveUrl': {
            $longUrl = $_POST['param'];
            echo saveUrl($longUrl);
            break;
        }
    }
}
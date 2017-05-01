<?php
namespace Models;
use \PDO;

class DB_Url {
    private static $dsn = 'mysql:dbname=mysql;host=127.0.0.1:3306';
    private static $user = 'root';
    private static $password = '';
    private $pdo;

    function __construct() {
        $this->pdo = new PDO(self::$dsn, self::$user, self::$password);
    }

    /*
        В реальном проекте я бы использовал хранимую процедуру
    */
    private function GetCounter(){
        $query = "SELECT counter FROM variables LIMIT 1;";
        $command = $this->pdo->prepare($query);
        $command->execute();
        $result = $command->fetch(PDO::FETCH_ASSOC);
        return $result["counter"];
    }

    private function IncrementCounter($prevValue) {
        $query = "UPDATE variables SET counter = counter + 1";
        $command = $this->pdo->prepare($query);
        $command->execute();
    }

    public function insertUrl($url) {
        $counter = $this->GetCounter();
        $hexed = dechex($counter);
        $this->IncrementCounter($counter);
        $query = "INSERT INTO urls (full_url, short_url) VALUES (:long_url, :short_url)";
        $command = $this->pdo->prepare($query);
        $params = array(
            "long_url" => $url,
            "short_url" => $hexed
        );
        $commandResult = $command->execute($params);
        if($commandResult == true) {
            return $hexed;
        } else {
            return null;
        }
    }

    public function getLongUrl($shortUrl) {
        $query = 'SELECT full_url FROM urls WHERE short_url=\'' . $shortUrl . "';";
        $command = $this->pdo->prepare($query);
        $command->execute();
        $result = $command->fetch(PDO::FETCH_ASSOC);
        return $result['full_url'];
    }


}
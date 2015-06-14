<?php

class DatabaseHandler{
	private $user = "root";
	private $passwort = "";
	
	private createConnection($host, $schema, $user, $password) {
		
		var $dbh = new PDO("mysql:host=".$host."[;dbname=".$schema."][;port=3306] [;charset=utf8]", $user, $passwort);
		return $dbh;
	}
	public getBodies($man, $name, $year){
		var $stmt = $this->createConnection();
		$stmt ->prepare();
		if($stmt->execute()){
			$result= $stmt->fetchAll();
		} 
		return $result;
	}
}
?>
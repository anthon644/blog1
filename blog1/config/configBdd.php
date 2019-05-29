<?php

	$pdo = new PDO("mysql:host=localhost;dbname=base1;charset=utf8;port=3306", "root","root");

	$req = $pdo->prepare("SELECT * FROM categorie");

	$req->execute();

	$categories = $req->fetchAll(PDO::FETCH_OBJ);


//variables globales de la Bdd
define('HOST', 'localhost');
define('DB', 'base1');
define('PORT', '3306');
define('ID', 'root');
define('PWD', 'root');
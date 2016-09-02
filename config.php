<?php

class database{
	public $hostname = 'localhost';
	public $username = 'root';
	public $password = '';
	public $db_name = 'week10day04-task';
	public $connect;

	public function __construct(){
		$this -> connect = mysqli_connect($this -> hostname, $this -> username, $this -> password, $this -> db_name);

		if(!$this -> connect){
			echo 'Database not found';
		}
	}
	public function select($table, $column = "*", $id = NULL, $whereColumn = NULL, $search=NULL){
		if($this->connect){
			$sql = "SELECT $column FROM $table ";
			if ($id != NULL) {
				$sql .= ' WHERE id='.$id;
			}
			if ($whereColumn != NULL) {
				$sql .= ' WHERE '.$whereColumn;
			}
			if ($search != NULL) {
				$sql .= " LIKE "."'%".$search."%'";
			}
			$query = mysqli_query($this -> connect, $sql);
			return $query;
		}else{
			echo'Error';
		}
	}
	public function update($table, $column, $id){
		if($this->connect){
			$sql = "UPDATE $table SET $column WHERE id=$id";
			$query = mysqli_query($this -> connect, $sql);
			
		}else{
			echo'Error';
		}
	}
	public function delete($table, $id){
		if($this->connect){
			$sql = "DELETE FROM $table WHERE id=$id";
			$query = mysqli_query($this -> connect, $sql);
		}else{
			echo'Error';
		}
	}
	public function insert($table, $column, $columnName){
		if($this->connect){
			
			$sql = "INSERT INTO $table($column) VALUES ($columnName)";
			$query = mysqli_query($this -> connect, $sql);
			

		}else{
			echo'Error';
		}
	}
}



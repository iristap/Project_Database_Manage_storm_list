<?php
    class Column{
        public $idcolumn;
        public $namecolumn;

        public function __construct($idcolumn,$namecolumn){
            $this->idcolumn = $idcolumn;
            $this->namecolumn = $namecolumn;

        } 

        public static function getAll(){
            $ColumnList = [];
            require("connection_connect.php");
            $sql = "SELECT * FROM `ColumnStorm`";
            $result = $conn->query($sql);
            while($my_row = $result->fetch_assoc()){
                $idcolumn = $my_row[column_id];
                $namecolumn = $my_row[column_name];
                // echo $my_row[column_id];
                // echo $my_row[column_name];
                $ColumnList[] = new Column($idcolumn,$namecolumn);
            }
            require("connection_close.php");
            return $ColumnList;
        }
        
   
    }
?>
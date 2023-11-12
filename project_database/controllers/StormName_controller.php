<?php
class StormNameController
{
    public function index()
    {
        $StormNameList = StormName::getAll();
        require_once('views/StormName/index_stormname.php');
    } 
    public function newstorm(){
        $CountryList = Country::getAll();
        $ColumnList = Column::getAll();
        require_once('views/StormName/newstormname.php');
    } 
    // $countryid,$nameth,$nameeng,$namethcompensate,$meaning,$column,$datestart
    public function addstorm(){
        $countryid = $_GET['countryid'];
        $nameth = $_GET['nameth'];
        $nameeng = $_GET['nameeng'];
        $namethcompensate = $_GET['namethcompensate'];
        $meaning = $_GET['meaning'];
        $column = $_GET['column'];
        $datestart = $_GET['datestart'];
        // echo "$countryid $nameth $column $datestart";

        require("connection_connect.php");
        $sql = "SELECT *
        FROM `StormList` NATURAL JOIN Country NATURAL JOIN ColumnStorm 
        where country_id = '$countryid'  AND column_id = '$column' AND storm_status = 1";
        $check = $conn->query($sql);
        require("connection_close.php");

        // echo "$check->num_rows";

        if($check->num_rows == 0){
            StormName::add($countryid,$nameth,$nameeng,$namethcompensate,$meaning,$column,$datestart);
            StormNameController::index();
        }else{
            echo '<script type="text/javascript">';
            echo ' alert("this slot is already exists")';
            echo '</script>';
            StormNameController::index(); 
        }
    }
    public function search(){
        $key = $_GET['key'];
        // echo $key;
        $StormNameList = StormName::search($key);
        require_once('views/StormName/index_stormname.php');
    }
    public function updateform(){
        $id = $_GET['id'];
        // echo $id ;
        $Storm = StormName::get($id);
        $CountryList = Country::getAll();
        $ColumnList = Column::getAll();
        require_once('views/StormName/updateform.php');
    }
    public function update(){
        // echo " test update controller ";
        $id = $_GET['id'];
        $countryid = $_GET['countryid'];
        $nameth = $_GET['nameth'];
        $nameeng = $_GET['nameeng'];
        $namethcompensate = $_GET['namethcompensate'];
        $meaning = $_GET['meaning'];
        $column = $_GET['column'];
        $datestart = $_GET['datestart'];
        // echo "$countryid $nameth $column $datestart";
        
        // require("connection_connect.php");
        // $sql = "SELECT *
        // FROM `StormList` NATURAL JOIN Country NATURAL JOIN ColumnStorm 
        // where country_name = '$countryid'  AND column_id = '$column' AND storm_status = 1";
        // $check = $conn->query($sql);
        // require("connection_close.php");

        StormName::update($id,$countryid,$nameth,$nameeng,$namethcompensate,$meaning,$column,$datestart);
        StormNameController::index();
        
        // else {
        //     echo '<script type="text/javascript">';
        //     echo ' alert("this slot is already exists")';
        //     echo '</script>';
        //     StormNameController::index();
        // }
    }

    public function delete(){
        $id = $_GET['id'];
        // echo $id ;
        StormName::delete($id);
        StormNameController::index();
    }

    public function inactiveform(){
        $id = $_GET['id'];
        require_once('views/StormName/inactiveform.php');
    }

    
    public function inactive(){
        $id = $_GET['id'];
        $dateend = $_GET['dateend'];
        StormName::inactive($id,$dateend);
        StormNameController::index();
    }
    public function detail(){
        $id = $_GET['id'];
        $Storm = StormName::get($id);
        require_once('views/StormName/detail.php');
    }
    
}
?>
<?php
class CountryController
{
    public function index()
    {
        $CountryList = Country::getAll();
        require_once('views/Country/index_country.php');
    }  
    public function search(){
        $key = $_GET['key'];
        // echo $key;
        $CountryList = Country::search($key);
        require_once('views/Country/index_country.php');
    }
    public function newcountry(){
        require_once('views/Country/newcountry.php');
    }
    public function addcountry(){
        $countryname = $_GET['countryname'];

        require("connection_connect.php");
        $sql = "SELECT *
        FROM `Country`  
        where country_name = '$countryname'";
        $check = $conn->query($sql);
        require("connection_close.php");

        // echo "$check->num_rows";
        // echo "$countryname";
        if($check->num_rows == 0){
            Country::add($countryname);
            CountryController::index();
        }else{
            echo '<script type="text/javascript">';
            echo ' alert("this already exists")';
            echo '</script>';
            CountryController::index(); 
        }
    }
    public function updateform(){
        $id = $_GET['id'];
        // echo $id ;
        $Countrylist = Country::get($id);
        
        require_once('views/Country/updateform.php');
    }

    public function update(){
        // echo " test update controller ";
        $id = $_GET['id'];
        $countryname = $_GET['countryname'];

        Country::update($id,$countryname);
        CountryController::index();
    }
    public function delete(){
        $id = $_GET['id'];
        // echo $id ;
        Country::delete($id);
        CountryController::index();
    }
}
?>
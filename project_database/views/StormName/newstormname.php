<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>storm name</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
</head>
<body>
    <div class = "container" >
    <form method="get" action="">
    <label  class="col-form-label-lg">เพิ่มชื่อพายุ </label><br>
    <label>ประเทศ <select name="countryid" class="form-select" aria-label="Default select example">
            <?php
                foreach($CountryList as $Country){
                    echo "<option value=$Country->idcountry>$Country->namecountry</option>";
                }
            ?></select></label><br>
    <label >ชื่อ(ไทย) :<input type="text" name="nameth" class="form-control" placeholder="nameTH"></label><br>
    <label >ชื่อ(อังกฤษ) :<input type="text" name="nameeng" class="form-control" placeholder="nameENG"></label><br>
    <label >ชื่อ(ทดแทน) :<input type="text" name="namethcompensate" class="form-control" placeholder="namethcompensate" ></label><br>
    <label >column :<select name="column" class="form-select" aria-label="Default select example">
            <?php
                foreach($ColumnList as $Column){
                    echo "<option value=$Column->idcolumn>$Column->namecolumn</option>";
                }
            ?></select></label><br>
    <label >ความหมาย :<input type="text" name="meaning" class="form-control" placeholder="meaning"></label><br>
    <label >วันที่เริ่มใช้งาน :<input type="date" name="datestart" class="form-control"></label><br>
    
    <br>
    <input type="hidden" name="controller" value="StormName"/>
    <button class="btn btn-secondary" type="submit" name="action" value="index">Back</button>
    <button class="btn btn-primary" type="submit" name="action" value="addstorm">Save</button>
    </form>
    </div>
    
</body>
</html>



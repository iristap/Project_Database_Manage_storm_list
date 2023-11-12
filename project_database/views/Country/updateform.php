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

    <label  class="col-form-label-lg">แก้ไขชื่อประเทศ </label><br>
    <input type="hidden" name="id" 
            value="<?php echo $Countrylist->idcountry ?>">
    <label >ชื่อประเทศ :<input type="text" name="countryname" class="form-control"
            value="<?php echo $Countrylist->namecountry ?>"></label><br>
    
    <br>
    <input type="hidden" name="controller" value="Country"/>
    <button class="btn btn-secondary" type="submit" name="action" value="index">Back</button>
    <button class="btn btn-primary" type="submit" name="action" value="update">Save</button>
    </form>
    </div>
    
</body>
</html>



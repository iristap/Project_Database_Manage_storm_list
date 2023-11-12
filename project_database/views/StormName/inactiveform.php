<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class = "container" >
    <form method="get" action="">
    <input type="hidden" name="id" 
            value=<?php echo $id; ?>>
    <label  class="col-form-label-lg">ปลดการใช้งานชื่อพายุ </label><br>
    <label >วันที่ปลดการใช้งาน :<input type="date" name="dateend" class="form-control"></label><br>
    
    <input type="hidden" name="controller" value="StormName"/>
    <button class="btn btn-secondary" type="submit" name="action" value="index">Back</button>
    <button class="btn btn-warning" type="submit" name="action" value="inactive">ปลด</button>
    </form>
    </div>
</body>
</html>
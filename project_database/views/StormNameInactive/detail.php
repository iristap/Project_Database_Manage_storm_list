<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form method="get" action="">
<div class = "container">
<label  class="col-form-label-lg">รายละเอียดเพิ่มเติม </label><br>
    <div class="card">
        <div class="card-body">
                ชื่อไทย:
            <?php
                echo $Storm->nameth;
            ?><br>
                ชื่ออังกฤษ:
            <?php
                echo $Storm->nameeng;
            ?><br>
                ประเทศ:
            <?php
                echo $Storm->country;
            ?><br>
                คอลัมน์:
            <?php
                echo $Storm->column;
            ?><br>       
                ความหมาย:
            <?php
                echo $Storm->meaning;
            ?><br>
                
                ชื่อทดแทน:
            <?php
                echo $Storm->namethcompensate;
            ?><br>
                วันที่เริ่มใช้งาน:
            <?php
                echo $Storm->datestart;
            ?><br>
                วันที่เริ่มเลิกใช้งาน
            <?php
                echo $Storm->dateend;
            ?><br>
        </div>
    </div>
    <input type="hidden" name="controller" value="StormNameInactive"/>
    <button class="btn btn-secondary" type="submit" name="action" value="index">Back</button>
</div>
</form>
</body>
</html>
<?php
  
  require_once 'include/schedule.php';
  require_once 'include/vehicle.php';
  $schedule = new schedule();
  $vehicle = new vehicle();

  $currentDaynum = date("d");
  $currentDay = jddayofweek ( cal_to_jd(CAL_GREGORIAN, date("m"),date("d"), date("Y")) , 1);
  $Vcapacity = $vehicle->getVechicleCapacity();
  $count = $vehicle->getVechicleNum();  


  $BusSchedule = $schedule->generate_schedule($currentDay,$Vcapacity);

  $availability = $schedule->CheckAvailability($BusSchedule,$count);

?>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bus Schedule</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <style type="text/css">
    </style>
  </head>

  <body >   
    <h3 style="text-align:center">Availability at GPRA</h3>
    <div style="padding-left:0px;padding-right:0px" class="col-md-2 col-sm-2 col-md-offset-4"> 

          <table class="table table-bordered"> 
            <tbody>
            <?php
               $i=0;
               while($i < count($availability)){
            ?>
              <tr><td><?php echo $availability[$i]["time"]." x ".$availability[$i]["available"] ?></td></tr>
            <?php
              $i = $i+2;
              }
            ?>      
            </tbody> 
          </table>
    </div>

     <div style="padding-left:0px;padding-right:0px" class="col-md-2 col-sm-2"> 

          <table class="table table-bordered"> 
           <tbody>
            <?php
               $i=1;
               while($i < count($availability)){
            ?>
              <tr><td><?php echo $availability[$i]["time"]." x ".$availability[$i]["available"] ?></td></tr>
            <?php
              $i = $i+2;
              }
            ?>      
            </tbody> 
          </table>
    </div>
  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

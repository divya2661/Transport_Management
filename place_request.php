<?php
	session_start();
	if(!isset($_SESSION['login_user']))
	{
		echo "Please Login";
	}
	else
	{
    $result="";
		require_once 'include/requester.php';
		$requester = new requester();

		if(isset($_POST['sub']))
		{
			$admin_email="ug201213026@iitj.ac.in";
			$dt=$_POST['dt'];
			$stime=$_POST['stm'];
			$etime=$_POST['etm'];
			$nos=$_POST['nos'];
			$reason=$_POST['rsn'];
			$usremail=$_SESSION['login_user'];
			
			if($dt=="" || $stime=="" || $nos==""){
				$result =  "Please fill all required details";
			} 
			else{

				$result = $requester->place_request($admin_email,$dt,$stime,$etime,$nos,$reason,$usremail); 	
			}

		}

    if(isset($_POST['notify']))
    {
        $uname=$_SESSION['login_user'];
        $notifyR=$requester->check_notification($uname);
        if($notifyR!=NULL)
        for($i=0;$i<count($notifyR);$i++)
    {

?>
        <table class="col-md-4 col-md-offset-4" cellpadding="6", cellspacing="3" border="6">
      <tr><th>Date:</th><td><input class="form-control" name="id" type="text" value="<?php echo $notifyR[$i]["date"]; ?>" size="20" readonly/></td></tr>
      <tr><th>Start Time:</th><td><input class="form-control" name="dt" type="text" value="<?php echo $notifyR[$i]["s_time"]; ?>" size="20" readonly/></td></tr>
      <tr><th>Status:</th><td><input class="form-control" name="s_time" type="text" value="<?php echo $notifyR[$i]["status"]; ?>" size="20" readonly/></td></tr>
      </table>
<?php
}
    }
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bus Schedule</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="css/datepicker.css">
    
    <style type="text/css">
    </style>
  </head>

  <body >    
    <div class="container">
      <div style="margin-top:7%; background-color: rgb(227, 255, 186); padding-bottom: 3%;" class="col-md-4 col-sm-12 col-md-offset-4">   
    	<h4 style="text-align:center" ><?php echo $result ?></h4>
        <h2 style="color:orange;text-align:center" >Request</h2>
          <form action="" method="post" role="form" name="frm">
            <div class="form-group">
                 <input class="form-control" type="text" placeholder="*Select Date" name="dt" id="example1"><br>

                 <select name="stm" class="form-control">
                  
                  <option>08:00:00</option>
                  <option>09:00:00</option>
                  <option>10:00:00</option>
                  <option>11:00:00</option>
                  <option>12:00:00</option>
                  <option>13:00:00</option>
                  <option>14:00:00</option>
                  <option>15:00:00</option>
                  <option>16:00:00</option>
                </select><br>
                <select name="etm" class="form-control">
   
                  <option>09:00:00</option>
                  <option>10:00:00</option>
                  <option>11:00:00</option>
                  <option>12:00:00</option>
                  <option>13:00:00</option>
                  <option>14:00:00</option>
                  <option>15:00:00</option>
                  <option>16:00:00</option>
                  <option>17:00:00</option>
                </select><br>

                <input class="form-control" type="number" placeholder="*Number of Students" name="nos"><br>
                <textarea name="rsn" class="form-control" rows="3" placeholder="Reason"></textarea>


            </div>
            <button name="sub" style="width:100%;margin-top:10px" type="submit" class="btn btn-warning">Request</button></br>
            <button name="notify" style="width:100%;text-align:center;margin-top:10px" type="submit" class="btn btn-success">Notification</button><br>
          </form>
          <button onclick="location.href = 'logout.php'" name="lo" style="width:100%;text-align:center;margin-top:10px" type="button" class="btn btn-default">Log Out</button>
      </div>
    </div>    


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
      // When the document is ready
      $(document).ready(function () {        
        $('#example1').datepicker({
            format: "dd/mm/yyyy"
        });  
            
      });
        </script>
  </body>
</html>
<?php
}
?>
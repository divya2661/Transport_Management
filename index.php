<?php
	session_start();
	include_once("frontend/login.html");
	require_once 'include/DB_Functions.php';
	$db = new DB_Functions();
 
//	if(isset($_POST['uname']) && isset($_POST['pword']))
	if(isset($_POST['sub']))
	{
		//echo "coming to if";
		$email=$_POST['uname'];
		$password=$_POST['pword'];

		$type = $db->checkCredentials($email,$password);

		echo "type: ".$type."<br>";

		if($type!=null)
		{
			$_SESSION['login_user']=$email;
			$_SESSION['utype']=$type;

			if($type=="admin"){
				header("Location: frontend/admin.html");
			}
			else{
				header("Location: place_request.php");
			}
		}
		else
		{
			echo "Invalid Credentials, Please try again";
		}


	}

?>


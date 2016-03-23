<?php

class approve_deny{

	//constructor
	function __construct(){

		require_once 'include/DB_Functions.php';
		$db = new DB_Functions();
		$this->db = $db;
	}

	// destructor
    function __destruct() {
         
    }

    public function approve($id,$status,$dt,$s_time,$e_time,$nos)
    {
    	//mail needs server
        mail("ug201213026@iitj.ac.in", "RE:request", $status , "From: ug201213026@iitj.ac.in");
        $fetch_not = $this->db->fetch_request($id);
       
        if($status=="approve"){
            $this->db->addExtraVehicle($dt,$s_time,$e_time,$nos);
        }

    	if($fetch_not==true)
    	{
    		return true;
    	}
    	else
    	{
    		return false;
    	}
    }

    public function fetch_notification()
    {
        $Ndetails=$this->db->notificate();
        return $Ndetails;
    }

    public function notify_requester($dt,$s_time,$req,$status)
    {
        $send=$this->db->convey_requester($dt,$s_time,$req,$status);
        if($send==true)
            return true;
        else
            return false;
    }
}

?>
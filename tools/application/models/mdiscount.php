<?php
class Mdiscount extends CI_Model {

function index()
	{
		echo "ini adalah fungsi index";
	}


function proses_discount($vdiscount,$vdiscount1,$vdiscount2,$vdiscount3) 
	{
		session_start();
		$name=$_SESSION['name'];
		// echo "ini adalah method proses_discount, parameter name= $name ---- discountnya = $vdiscount";


		$data_update_discount['discount']=$vdiscount/100;
		$data_update_discount['disc1']=$vdiscount1;
		$data_update_discount['disc2']=$vdiscount2;
		$data_update_discount['disc3']=$vdiscount3;


		$this->db->where('name',$name);
		$this->db->update('debtors_master',$data_update_discount);


		session_end();
	}


}




?>

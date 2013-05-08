<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Discount extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		session_start();
		// baca data inputan dari request url - get method
		$data_inputan['name']=$_REQUEST['name'];
		$_SESSION['name']=$data_inputan['name'];
		 echo "<pre>";
		// print_r($this->session);
		// print_r($data_inputan);
		// print_r($_REQUEST);
		//   print_r($_SESSION);
		 echo "</pre>";
		$this->load->view('discount',$data_inputan);
	}


	public function proses_discount()
	{
		$vdiscount1=$_POST['vdiscount1'];
		$vdiscount2=$_POST['vdiscount2'];
		$vdiscount3=$_POST['vdiscount3'];

		$discount_tahap_1=$vdiscount1;
		$discount_tahap_2=(100-$discount_tahap_1)*$vdiscount2/100;
		$discount_tahap_3=(100-$discount_tahap_2)*$vdiscount3/100;


		$vdiscount=$discount_tahap_1+$discount_tahap_2+$discount_tahap_3;

		// echo "fungsi proses_discount - ";
		// echo "$vdiscount ";
		// echo "<br>";
		echo "discount total = $vdiscount";
		echo "<script> window.close(); </script> ";
		$this->load->model('mdiscount');
		$this->mdiscount->proses_discount($vdiscount,$vdiscount1,$vdiscount2,$vdiscount3);
		echo "ok...";
	}


}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */

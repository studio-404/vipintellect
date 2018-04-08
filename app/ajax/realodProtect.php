<?php 
class realodProtect
{
	public $out; 

	public function index()
	{
		require_once 'app/functions/request.php';
		require_once 'app/functions/string.php';

		$call = functions\request::index("POST","call");
		

		$this->out = array(
			"Error" => array(
				"Code"=>1, 
				"Text"=>"მოხდა შეცდომა !",
				"Details"=>"!"
			), 
			"Success" => array(
				"Code"=>0,
				"Text"=>"",
				"Details"=>""
			)
		);

		if($call == "true"){
			$_SESSION['protect_x'] = functions\string::random(6);
			$this->out = array(
				"Error" => array(
					"Code"=>0, 
					"Text"=>"",
					"Details"=>"!"
				), 
				"Success" => array(
					"Code"=>1,
					"Text"=>"ოპერაცია წარმატებით შესრულდა, გადაამოწმეთ ელ-ფოსტა !",
					"Details"=>""
				)
			);
		}
		return $this->out;
	}
}
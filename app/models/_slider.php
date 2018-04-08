<?php 
class _slider
{
	public $data;

	public function index()
	{
		require_once("app/functions/strip_output.php"); 

		$out = array();
		$out["list"] = "";
		$out["count"] = 0;
		
		$out["count"] = count($this->data);

		if($out["count"])
		{
			foreach($this->data as $value)
			{
				$photos = new Database("photos",array(
					"method"=>"selectByParent", 
					"idx"=>(int)$value['idx'],  
					"lang"=>strip_output::index($value['lang']),  
					"type"=>strip_output::index($value['type'])
				));
				if($photos->getter()){
					$pic = $photos->getter();
					$image = strip_output::index($pic[0]['path']);
				}else{
					$image = "/public/filemanager/noimage.png";
				}	
				
                $out["list"] .= "<div class=\"image-carousel-slide\">";
                $out["list"] .= sprintf(
                	"<img src=\"%s%s/image/loadimage?f=%s%s&w=555&h=320\" alt=\"\" />",
                	Config::WEBSITE,
					$_SESSION["LANG"],
					Config::WEBSITE_,
					$image
                );
                $out["list"] .= "</div>";

				// $out["list"] .= sprintf(
				// 	"<a href=\"%s\" class=\"item%s\" style=\"background-image: url('%s%s/image/loadimage?f=%s%s&w=1350&h=500');\"></a>",
				// 	$value['url'],
				// 	$active,
				// 	Config::WEBSITE,
				// 	$_SESSION["LANG"],
				// 	Config::WEBSITE_,
				// 	$image
				// );
			}
		}
		
		return $out;
	}
}
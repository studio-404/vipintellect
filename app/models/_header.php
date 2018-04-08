<?php 
class _header
{
	public $public;
	public $lang;
	public $pagedata;
	public $imageSrc;
	public $product;

	public function index(){ 

		$getter = $this->pagedata->getter(); 

		if(isset($getter['title'])){
			$title = strip_tags($getter['title']);
			$description = strip_tags($getter['description']);
		}else if(isset($getter[0]['title'])){
			$title = strip_tags($getter[0]['title']); 
			$description = strip_tags($getter[0]['description']);
		}else{
			$title = "";
			$description = "";
		}

		if(isset($this->product)){
			$title = strip_tags($this->product['title']);
			$description = strip_tags($this->product['short_description']);
		}

		$out = "<!DOCTYPE html>\n";
		$out .= "<html>\n";
		$out .= "<head>\n";
		$out .= "<meta charset=\"utf-8\">\n";
		$out .= "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n";
				
		$out .= "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\" />\n";
		$out .= "<meta name=\"format-detection\" content=\"telephone=no\"/>\n";
		$out .= sprintf("<title>%s - Lemi Voyage</title>\n", strip_tags($title));
		
		$actual_link = "http://".$_SERVER["HTTP_HOST"].htmlentities($_SERVER["REQUEST_URI"]);
		$out .= "<meta property=\"fb:app_id\" content=\"\" />\n";
		$out .= "<meta property=\"og:title\" content=\"".strip_tags($title)."\" />\n";
		$out .= "<meta property=\"og:type\" content=\"website\" />\n";
		$out .= "<meta property=\"og:url\" content=\"".$actual_link."\"/>\n";
		
		if(isset($this->imageSrc)){
			$image = $this->imageSrc;
		}else{
			$image = $this->public."img/share.jpg";
		}
		$out .= sprintf(
			"<meta property=\"og:image\" content=\"%s\" />\n", 
			$image
		);
		$out .= sprintf(
			"<link rel=\"image_src\" type=\"image/jpeg\" href=\"%s\" />\n", 
			$image
		);


		$out .= "<meta property=\"og:image:width\" content=\"600\" />\n";
		$out .= "<meta property=\"og:image:height\" content=\"315\" />\n";
		$out .= "<meta property=\"og:site_name\" content=\"Lemi Voyage\" />\n";
		$out .= "<meta property=\"og:description\" content=\"".htmlentities($description)."\"/>\n";


		$out .= sprintf(
			"<link rel=\"icon\" type=\"image/ico\" href=\"%simg/favicon.png\" />\n", 
			$this->public
		);
		
		$out .= sprintf(
			"<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css' />\n"
		);

		$out .= sprintf(
			"<link href=\"%sfont-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n", 
			$this->public
		);

		$out .= sprintf(
			"<link href=\"%sbootstrap/css/bootstrap3.css\" rel=\"stylesheet\" type=\"text/css\">\n", 
			$this->public
		);

		$out .= sprintf(
			"<link href=\"%scss/web/selectize.css\" rel=\"stylesheet\" type=\"text/css\">\n", 
			$this->public
		);

		$out .= sprintf(
			"<link href=\"%scss/web/owl.carousel.css\" rel=\"stylesheet\" type=\"text/css\">\n", 
			$this->public
		);

		$out .= sprintf(
			"<link href=\"%scss/web/vanillabox/vanillabox.css\" rel=\"stylesheet\" type=\"text/css\">\n", 
			$this->public
		);		

		$out .= sprintf(
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/style3.css?time=%s\" />\n", 
			$this->public,
			time()
		);

		// if(isset($_SESSION['LANG']) && $_SESSION['LANG']=="ge"){
		// 	$out .= sprintf(
		// 		"<link rel=\"stylesheet\" type=\"text/css\" href=\"%scss/web/ge.css\" />\n", 
		// 		$this->public
		// 	);   
		// }

		$out .= "</head>\n";
		$out .= "<body class=\"page-homepage-carousel\">\n";
		
		
		return $out;
	}
}
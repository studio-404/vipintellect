<?php 
use Intervention\Image\ImageManager;

class Image extends Controller
{
	public function __construct()
	{
		if(!isset($_GET["f"])){ die(); }
	} 

	public function loadimage()
	{
		require_once 'app/functions/request.php';
		$f = functions\request::index("GET","f");
		$w = functions\request::index("GET","w");
		$h = functions\request::index("GET","h");
		$grey = (functions\request::index("GET","grey")) ? functions\request::index("GET","grey") : false;

		$filename = explode(Config::WEBSITE, $f);
		if(isset($filename[1]) && file_exists($filename[1])){

			$fileSize = filesize($filename[1]);
			
			$resizeDir = "public/_temporaty/";
			$resizeFileName = $fileSize. "-" . $w . "-" . $h . "-". $grey . "-" . str_replace(array("/", " "), "-", $filename[1]);
			$resizePath = $resizeDir . $resizeFileName;

			$manager = new ImageManager(array('driver' => 'gd'));
			if(!file_exists($resizePath)){
				if($grey){
					$manager->make($filename[1])->fit($w, $h)->greyscale()->save($resizePath);
				}else{
					$manager->make($filename[1])->fit($w, $h)->save($resizePath);
				}
				
			}

		    // $ntct = array(
		    // 	"1" => "image/gif",
		    //     "2" => "image/jpeg",
		    //     "3" => "image/png",
		    //     "6" => "image/bmp",
		    //     "17" => "image/ico"
		    // );

		    // header('Content-type: ' . $ntct[exif_imagetype($resizePath)]);
		    header('Content-type: image/jpeg');
		    readfile($resizePath);	

		}else{
			die();
		}
	}

}
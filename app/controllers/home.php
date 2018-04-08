<?php
class Home extends Controller
{
	public $emailComfirmed = false;
	public function __construct()
	{
		require_once 'app/functions/request.php';
		if(functions\request::index("GET", "confirm")){
			$email_random = functions\request::index("GET", "confirm");
			$db_user = new Database("user", array(
				"method"=>"emailConfirm",
				"email_random"=>$email_random
			));
			if($db_user->output){
				$this->emailComfirmed = true;
			}
		}
	}

	public function index($name = '')
	{ 
		/* DATABASE */
		$db_langs = new Database("language", array(
			"method"=>"select"
		));
		
		$db_contactdetails = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"contactdetails"
		));

		$db_howfindus = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"howfindus"
		));

		$db_slider = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"slider",
			"from"=>0, 
			"num"=>15
		));

		$db_navigation = new Database("page", array(
			"method"=>"select", 
			"cid"=>0, 
			"nav_type"=>0,
			"lang"=>$_SESSION['LANG'],
			"status"=>0 
		));

		// $db_footerHelpNav = new Database("page", array(
		// 	"method"=>"selecteByCid", 
		// 	"cid"=>5, 
		// 	"lang"=>$_SESSION['LANG']
		// ));

		


		$db_slogan = new Database("modules", array(
			"method"=>"selectById", 
			"idx"=>7,
			"lang"=>$_SESSION["LANG"]
		));

		$s = (isset($_SESSION["URL"][1])) ? $_SESSION["URL"][1] : Config::MAIN_CLASS;
		$db_pagedata = new Database("page", array(
			"method"=>"selecteBySlug", 
			"slug"=>$s,
			"lang"=>$_SESSION['LANG'], 
			"all"=>true
		));

		// $db_slider = new Database("modules", array(
		// 	"method"=>"selectModuleByType", 
		// 	"type"=>"slider",
		// 	"from"=>0, 
		// 	"num"=>15
		// ));

		// $db_selectTop = new Database("products", array(
		// 	"method"=>"selectTop"
		// ));

		// $db_selectSpecial = new Database("products", array(
		// 	"method"=>"selectSpecial"
		// ));
		

		/* HEDARE */
		$header = $this->model('_header');
		$header->public = Config::PUBLIC_FOLDER; 
		$header->lang = $_SESSION["LANG"]; 
		$header->pagedata = $db_pagedata; 

		/* SOCIAL */
		// $social = $this->model('_social');
		// $social->networks = $db_socials->getter(); 



		/* DESTINATIONS */
		// $destinations = $this->model('_destinations');
		// $destinations->data = $db_destinations->getter(); 

		/* Tour Types */
		// $tourtypes = $this->model('_tourtypes');
		// $tourtypes->data = $db_tourtypes->getter(); 

		/* LANGUAGES */
		// $languages = $this->model('_lang'); 
		// $languages->langs = $db_langs->getter();

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();

		/* slidr */
		$slider = $this->model('_slider');
		$slider->data = $db_slider->getter(); 

		/* Top travels */
		// $toptravels = $this->model('_toptravels');
		// $toptravels->data = $db_selectTop->getter();

		/* special travels */
		// $selectSpecial = $this->model('_selectSpecial');
		// $selectSpecial->data = $db_selectSpecial->getter();

		/* header top */
		$headertop = $this->model('_top');
		$headertop->data["contactdetails"] = $db_contactdetails->getter();
		$headertop->data["navigationModule"] = $navigation->index();

		/*footer */
		$footer = $this->model('_footer');
		// $footer->data["socialNetworksModule"] = $social->index();
		// $footer->data["footerHelpNav"] = $db_footerHelpNav->getter();



		/* view */
		$this->view('home/index', [
			"header"=>array(
				"website"=>Config::WEBSITE,
				"public"=>Config::PUBLIC_FOLDER
			),
			"headerModule"=>$header->index(), 
			"headertop"=>$headertop->index(), 
			"pageData"=>$db_pagedata->getter(), 
			"slogan"=>$db_slogan->getter(), 
			"howfindus"=>$db_howfindus->getter(), 
			"slider"=>$slider->index(), 
			"footer"=>$footer->index() 
		]);
	}

}
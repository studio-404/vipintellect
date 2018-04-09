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

		$db_usefulllinks = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"usefulllinks"
		));

		$db_navigation = new Database("page", array(
			"method"=>"select", 
			"cid"=>0, 
			"nav_type"=>0,
			"lang"=>$_SESSION['LANG'],
			"status"=>0 
		));

		$db_footerHelpNav = new Database("page", array(
			"method"=>"selecteByCid", 
			"cid"=>7, 
			"lang"=>$_SESSION['LANG']
		));

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

		$db_socialnetworks = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"socialnetworks"
		));

		$db_news = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"news",
			"from"=>0,
			"num"=>Config::HOME_PAGE_NEWS_NUM
		));
		

		/* HEDARE */
		$header = $this->model('_header');
		$header->public = Config::PUBLIC_FOLDER; 
		$header->lang = $_SESSION["LANG"]; 
		$header->pagedata = $db_pagedata; 

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();

		/* Home page news */
		$news = $this->model('_homenews');
		$news->data = $db_news->getter();

		/* slidr */
		$slider = $this->model('_slider');
		$slider->data = $db_slider->getter(); 

		/* header top */
		$headertop = $this->model('_top');
		$headertop->data["contactdetails"] = $db_contactdetails->getter();
		$headertop->data["navigationModule"] = $navigation->index();

		/*footer */
		$footer = $this->model('_footer');
		$footer->data["contactdetails"] = $db_contactdetails->getter();
		$footer->data["footerHelpNav"] = $db_footerHelpNav->getter();
		$footer->data["usefulllinks"] = $db_usefulllinks->getter();
		$footer->data["socialnetworks"] = $db_socialnetworks->getter();



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
			"news"=>$news->index(), 
			"slider"=>$slider->index(), 
			"footer"=>$footer->index() 
		]);
	}

}
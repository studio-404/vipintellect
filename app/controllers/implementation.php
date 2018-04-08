<?php 
class Implementation extends Controller
{
	public function __construct()
	{
		
	}

	public function index($name = '')
	{
		/* DATABASE */
		$db_langs = new Database("language", array(
			"method"=>"select"
		));
		
		$db_socials = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"social"
		));

		$db_stateagencies = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"stateagencies", 
			"from"=>0, 
			"num"=>20
		));

		$db_implementation = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"implementation", 
			"from"=>0, 
			"num"=>10
		));

		$db_strategic = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"strategic", 
			"from"=>0, 
			"num"=>10
		));

		$db_navigation = new Database("page", array(
			"method"=>"select", 
			"cid"=>0, 
			"nav_type"=>0,
			"lang"=>$_SESSION['LANG'],
			"status"=>0 
		));

		$s = (isset($_SESSION["URL"][1])) ? $_SESSION["URL"][1] : Config::MAIN_CLASS;
		$db_pagedata = new Database("page", array(
			"method"=>"selecteBySlug", 
			"slug"=>$s,
			"lang"=>$_SESSION['LANG'], 
			"all"=>true
		));
		$db_footer = new Database("modules", array(
			"method"=>"selectById", 
			"idx"=>18,
			"lang"=>$_SESSION['LANG']
		));

		

		/* HEDARE */
		$header = $this->model('_header');
		$header->public = Config::PUBLIC_FOLDER; 
		$header->lang = $_SESSION["LANG"]; 
		$header->pagedata = $db_pagedata; 

		/* SOCIAL */
		$social = $this->model('_social');
		$social->networks = $db_socials->getter(); 

		/* LANGUAGES */
		$languages = $this->model('_lang'); 
		$languages->langs = $db_langs->getter();

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();

		/* state agencies */
		$stateagencies = $this->model('_stateagencies');
		$stateagencies->data = $db_stateagencies->getter();

		/* implementation */
		$implementation = $this->model('_implementation');
		$implementation->data = $db_implementation->getter();

		/* strategic documents */
		$strategic = $this->model('_strategic');
		$strategic->data = $db_strategic->getter();

		/* header top */
		$headertop = $this->model('_top');
		$headertop->data["socialNetworksModule"] = $social->index();
		$headertop->data["languagesModule"] = $languages->index();
		$headertop->data["navigationModule"] = $navigation->index();

		/*footer */
		$footer = $this->model('_footer');
		$footer->data = $db_footer->getter(); 

	
		/* view */
		$this->view('implementation/index', [
			"header"=>array(
				"website"=>Config::WEBSITE,
				"public"=>Config::PUBLIC_FOLDER
			),
			"headerModule"=>$header->index(), 
			"headertop"=>$headertop->index(), 
			"pageData"=>$db_pagedata->getter(), 
			"stateagencies"=>$stateagencies->index(), 
			"implementation"=>$implementation->index(), 
			"strategic"=>$strategic->index(), 
			"footer"=>$footer->index() 
		]);
	}
}
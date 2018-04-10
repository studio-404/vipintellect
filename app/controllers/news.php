<?php 
class News extends Controller
{
	public $newsslug;
	public function __construct()
	{
		
	}

	public function index($lang = '', $newsId = '')
	{
		$this->newsslug = $_SESSION["URL"][1];
		/* DATABASE */
		$db_langs = new Database("language", array(
			"method"=>"select"
		));

		$db_contactdetails = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"contactdetails"
		));
	

		$db_navigation = new Database("page", array(
			"method"=>"select", 
			"cid"=>0, 
			"nav_type"=>0,
			"lang"=>$_SESSION['LANG'],
			"status"=>0 
		));

		$db_usefulllinks = new Database("modules", array(
			"method"=>"selectModuleByType", 
			"type"=>"usefulllinks"
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
		
		$db_footerHelpNav = new Database("page", array(
			"method"=>"selecteByCid", 
			"cid"=>7, 
			"lang"=>$_SESSION['LANG']
		));

		/* HEDARE */
		$header = $this->model('_header');
		$header->public = Config::PUBLIC_FOLDER; 
		$header->lang = $_SESSION["LANG"]; 		

		/* NAVIGATION */
		$navigation = $this->model('_navigation');
		$navigation->data = $db_navigation->getter();

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
		// echo $newsId;
		if(!isset($newsId) || !is_numeric($newsId)){
			$header->pagedata = $db_pagedata; 
			
			$fromnews = (isset($_GET['pn']) && is_numeric($_GET['pn']) && $_GET['pn']>0) ? ($_GET['pn']-1) : 0;
			// echo $fromnews." ".Config::NEWS_PER_PAGE;
			$where = "";
			$jsonAddon = "";
			if(
				isset($_GET['m']) && 
				isset($_GET['y']) && 
				is_numeric($_GET['m']) && 
				is_numeric($_GET['y'])
			){
				$where = " AND MONTH(`date_format`)={$_GET['m']} AND YEAR(`date_format`)={$_GET['y']}";
				$jsonAddon = $_GET['y'].$_GET['m'];
			}

			$db_news = new Database("modules", array(
				"method"=>"selectModuleByType", 
				"type"=>$this->newsslug,
				"from"=>$fromnews,
				"num"=>Config::NEWS_PER_PAGE,
				"where"=>$where,
				"jsonAddon"=>$jsonAddon
			));

			/* News */
			$news = $this->model('_news');
			$news->data = $db_news->getter();

			/* view */
			$this->view('news/index', [
				"header"=>array(
					"website"=>Config::WEBSITE,
					"public"=>Config::PUBLIC_FOLDER
				),
				"headerModule"=>$header->index(), 
				"pageData"=>$db_pagedata->getter(), 
				"news"=>$news->index(), 
				"headertop"=>$headertop->index(), 
				"footer"=>$footer->index() 
			]);
		}else{
			$db_news = new Database("modules", array(
				"method"=>"selectById", 
				"lang"=>$_SESSION['LANG'],  
				"idx"=>$newsId 
			));
			$header->pagedata = $db_news; 
			
			/* view */
			$this->view('news/index', [
				"header"=>array(
					"website"=>Config::WEBSITE,
					"public"=>Config::PUBLIC_FOLDER
				),
				"headerModule"=>$header->index(), 
				"pageData"=>$db_pagedata->getter(), 
				"headertop"=>$headertop->index(), 
				"newsId"=>$newsId,
				"news_inside"=>$db_news->getter(),
				"footer"=>$footer->index() 
			]);
		}
	}

}
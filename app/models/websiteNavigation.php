<?php 
class websiteNavigation
{
	public $navigation;

	public function index(){
		require_once 'app/core/Config.php';
		
		$nav = "";
		if(count($this->navigation))
		{
			foreach ($this->navigation as $val)
			{
				$slug = ($val['redirect']!="false") ? $val['redirect'] : Config::WEBSITE.Config::PAGE_PREFIX."/".$val['type']."/".$val['lang']."/".$val['idx']."/".$val['slug']; 
				
				$visibility = ($val['visibility']==1) ? "visibility_off" : "visibility";

				$usefull_url = ($val['usefull_type'] == "false") ? "javascript:void(0)" : "/".$_SESSION["LANG"]."/dashboard/modules/".$val['usefull_type'];
				$usefull_type = "<a href=\"".$usefull_url."\">";
				$usefull_type .= "<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"მოდულზე გადასვლა\">view_module</i>";
				$usefull_type .= "</a>";

				$catalog_list = "";
				if($val['type']=="catalog"){
					$cat_url = "/".$_SESSION["LANG"]."/dashboard/catalog/".$val['idx'];
					$catalog_list = "<a href=\"".$cat_url."\">";
					$catalog_list .= "<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"კატალოგი\">view_list</i>";
					$catalog_list .= "</a>";
				}				

				$nav .= sprintf("
					<div class=\"row level-0\" data-item=\"%d\" data-cid=\"%d\" data-level=\"0\" style=\"position:relative\">
						<div class=\"cell roboto-font\">%d</div>
						<div class=\"cell roboto-font\">%d</div>
						<div class=\"cell roboto-font\">%d</div>
						<div class=\"cell\"><a href=\"%s\" target=\"_blank\">%s</a></div>
						<div class=\"cell roboto-font\">%s</div>
						<div class=\"cell\">
	
						<a href=\"javascript:void(0)\" onclick=\"changeVisibility('%s','%s')\">
							<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"ხილვადობის შეცვლა\">%s</i>
					 	</a>

					 	<a href=\"javascript:void(0)\" onclick=\"add_page('%d')\">
					 		<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"დამატება\">note_add</i>
					 	</a>

					 	<a href=\"javascript:void(0)\" onclick=\"editPage('%s','%s')\">
					 		<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"რედაქტირება\">mode_edit</i>
					 	</a>
					 	%s%s
						<a href=\"javascript:void(0)\" onclick=\"askRemovePage('0','%s','%s','%s')\">
							<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"წაშლა\">delete</i>
					 	</a>
						</div>

					</div>
				",
				$val['idx'], 
				$val['cid'],
				$val['idx'],
				$val['cid'],
				$val['position'], 
				$slug, 
				$val['title'], 
				$val['type'], 
				$val['visibility'], 
				$val['idx'], 
				$visibility,
				$val['idx'], 
				$val['idx'], 
				$val['lang'], 
				$usefull_type, 
				$catalog_list,
				$val['position'], 
				$val['idx'], 
				$val['cid']
				);

				$subNavigation = new Database('page', array(
					"method"=>"select", 
					"cid"=>$val['idx'], 
					"nav_type"=>0, 
					"lang"=>$val['lang'], 
					"status"=>0
				));

				if($subNavigation->getter()){
					foreach ($subNavigation->getter() as $v) {
						$vis = ($v['visibility']==1) ? "visibility_off" : "visibility";


						$usefull_url2 = ($v['usefull_type'] == "false") ? "javascript:void(0)" : "/".$_SESSION["LANG"]."/dashboard/modules/".$v['usefull_type'];
						$usefull_type2 = "<a href=\"".$usefull_url2."\">";
						$usefull_type2 .= "<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"მოდულზე გადასვლა\">view_module</i>";
						$usefull_type2 .= "</a>";


						$nav .= "<div class=\"row level-2 sub-".$v['cid']."\" data-item=\"".$v['idx']."\" data-cid=\"".$v['cid']."\" data-level=\"2\" style=\"background:#f2f2f2\">";
						$nav .= "<div class=\"cell roboto-font\">".$v['idx']."</div>";
						$nav .= "<div class=\"cell roboto-font\">".$v['cid']."</div>";
						$nav .= "<div class=\"cell roboto-font\">".$v['position']."</div>";
						$nav .= "<div class=\"cell\"><a href=\"\" target=\"_blank\">".$v['title']."</a></div>";
						$nav .= "<div class=\"cell roboto-font\">".$v['type']."</div>";
						
						$nav .= "<div class=\"cell\">";
						$nav .= "<a href=\"javascript:void(0)\" onclick=\"changeVisibility('".$v["visibility"]."','".$v["idx"]."')\">
							<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"ხილვადობის შეცვლა\">".$vis."</i>
					 	</a>";

					 	$nav .= "<a href=\"javascript:void(0)\" onclick=\"add_page('".$v['idx']."')\">
					 		<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"დამატება\">note_add</i>
					 	</a>";

					 	$nav .= "<a href=\"javascript:void(0)\" onclick=\"editPage('".$v["idx"]."','".$v["lang"]."')\">
					 		<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"რედაქტირება\">mode_edit</i>
					 	</a>";

					 	$nav .= $usefull_type2;

					 	$nav .= "<a href=\"javascript:void(0)\" onclick=\"askRemovePage('0','".$v['position']."','".$v['idx']."', '".$v["cid"]."')\">
							<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"წაშლა\">delete</i>
					 	</a>";

						$nav .= "</div>";
						
						$nav .= "</div>";	

						$subSubNavigation = new Database('page', array(
							"method"=>"select", 
							"cid"=>$v['idx'], 
							"nav_type"=>0, 
							"lang"=>$v['lang'], 
							"status"=>0
						));

						if($subSubNavigation->getter()){
							foreach ($subSubNavigation->getter() as $v3) {
								$vis = ($v3['visibility']==1) ? "visibility_off" : "visibility";
								$usefull_url3 = ($v3['usefull_type'] == "false") ? "javascript:void(0)" : "/".$_SESSION["LANG"]."/dashboard/modules/".$v['usefull_type'];
								$usefull_type3 = "<a href=\"".$usefull_url3."\">";
								$usefull_type3 .= "<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"მოდულზე გადასვლა\">view_module</i>";
								$usefull_type3 .= "</a>";


								$nav .= "<div class=\"row level-3 sub-".$v3['cid']."\" data-item=\"".$v3['idx']."\" data-cid=\"".$v3['cid']."\" data-level=\"3\" style=\"background:#cccccc\">";
								$nav .= "<div class=\"cell roboto-font\">".$v3['idx']."</div>";
								$nav .= "<div class=\"cell roboto-font\">".$v3['cid']."</div>";
								$nav .= "<div class=\"cell roboto-font\">".$v3['position']."</div>";
								$nav .= "<div class=\"cell\"><a href=\"\" target=\"_blank\">".$v3['title']."</a></div>";
								$nav .= "<div class=\"cell roboto-font\">".$v3['type']."</div>";
						
								$nav .= "<div class=\"cell\">";
								$nav .= "<a href=\"javascript:void(0)\" onclick=\"changeVisibility('".$v3["visibility"]."','".$v3["idx"]."')\">
										<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"ხილვადობის შეცვლა\">".$vis."</i>
					 			</a>";

					 			$nav .= "<a href=\"javascript:void(0)\" onclick=\"editPage('".$v3["idx"]."','".$v3["lang"]."')\">
					 					<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"რედაქტირება\">mode_edit</i>
					 					</a>";

					 			$nav .= $usefull_type3;

					 			$nav .= "<a href=\"javascript:void(0)\" onclick=\"askRemovePage('0','".$v3['position']."','".$v3['idx']."', '".$v3["cid"]."')\">
								<i class=\"material-icons tooltipped\" data-position=\"bottom\" data-delay=\"50\" data-tooltip=\"წაშლა\">delete</i>
					 			</a>";

								$nav .= "</div>";
						
								$nav .= "</div>";

							}
						}

					}				
				}
				 
			}

		}
		return $nav;
	}
}
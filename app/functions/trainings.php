<?php 
namespace functions;

class trainings
{
	public function index()
	{
		require_once("app/functions/l.php"); 
		$l = new l(); 

		$Database = new \Database("page", array(
			"method"=>"selecteByCid", 
			"cid"=>7, 
			"lang"=>$_SESSION["LANG"] 
		));
		$output = $Database->getter();
		
		$out = "<select name=\"trainingid\" id=\"trainingid\" class=\"has-dark-background glakho\">";

		$out .= sprintf(
			"<option value=\"\">%s</option>",
			$l->translate("choosetraining")
		);

		foreach ($output as $item1) {
			$Database2 = new \Database("page", array(
				"method"=>"selecteByCid", 
				"cid"=>$item1['idx'], 
				"lang"=>$_SESSION["LANG"] 
			));
			$output2 = $Database2->getter();

			if(count($output2)){//has sub
				$out .= sprintf(
					"<optgroup label=\"%s\">",
					$item1["title"]
				);

				foreach ($output2 as $item2) {
					$out .= sprintf(
						"<option value=\"%d\">%s</option>",
						$item2["idx"],
						$item2["title"]
					);
				}

				$out .= "</optgroup>";
			}else{//no sub
				$out .= sprintf(
					"<option value=\"%d\">%s</option>",
					$item1["idx"],
					$item1["title"]
				);
			}
		}

		$out .= "</select>";

		return $out;
	}
}
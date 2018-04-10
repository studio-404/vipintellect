<?php 
namespace functions;

class archive{
	public function index()
	{
		if($_SESSION["LANG"]=="en"){
			$month_names = array(
				"Jenuary",
				"February",
				"March",
				"April",
				"May",
				"June",
				"July",
				"August",
				"September",
				"Octomber",
				"November",
				"December"
			);
		}else{
			$month_names = array(
				"იანვარი",
				"თებერვალი",
				"მარტი",
				"აპრილი",
				"მაისი",
				"ივნისი",
				"ივლისი",
				"აგვისტო",
				"სექტემბერი",
				"ოქტომბერი",
				"ნოემბერი",
				"დეკემბერი"
			);
		}
		$m = (int)date("m");
		$y = date("Y");

		$out = "<ul class=\"list-links glakho\">";
		for($i=($m-1);$i>=0;$i--):
			$active = "";
			if(
				isset($_GET['m']) && 
				isset($_GET['y']) && 
				is_numeric($_GET['m']) && 
				is_numeric($_GET['y']) &&
				$_GET['m']==($i+1) && 
				$_GET['y']==$y 
			){
				$active = ' style="color: #ff0000;"';
			}
			$out .= sprintf(
				"<li><a href=\"%s/%s?m=%d&y=%d\"%s>%s %s</a></li>", 
				\Config::WEBSITE.$_SESSION["LANG"],
				$_SESSION["URL"][1],
				($i+1),
				$y,
				$active, 
				$month_names[$i], 
				$y
			);
		endfor;
		$out .= "</ul>";

		return $out;
	}
}
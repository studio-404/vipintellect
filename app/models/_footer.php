<?php 
class _footer
{
	public $data;

	public function index()
	{
		require_once("app/functions/l.php");
		require_once("app/functions/strip_output.php");  
		require_once("app/functions/string.php");  
		$l = new functions\l(); 		

		$out = "";
		
		$out .= "<footer id=\"page-footer\">\n";

		$out .= "<section id=\"footer-top\">\n";
		$out .= "<div class=\"container\">\n";
		
		$out .= "<div class=\"footer-inner\">\n";

		$out .= "<div class=\"footer-social\">\n";
		$out .= "<div class=\"icons\">\n";
		$out .= "<a href=\"\"><i class=\"fa fa-twitter\"></i></a>\n";
		$out .= "<a href=\"\"><i class=\"fa fa-facebook\"></i></a>\n";
		$out .= "<a href=\"\"><i class=\"fa fa-pinterest\"></i></a>\n";
		$out .= "<a href=\"\"><i class=\"fa fa-youtube-play\"></i></a>\n";
		$out .= "</div>\n";
		$out .= "</div>\n";

		$out .= "<div class=\"search pull-right\">\n";
		$out .= "<div class=\"input-group\">\n";
		$out .= "<input type=\"text\" class=\"form-control glakho\" placeholder=\"ძიება\" />\n";
		$out .= "<span class=\"input-group-btn\">\n";
		$out .= "<button type=\"submit\" class=\"btn\"><i class=\"fa fa-search\"></i></button>\n";
		$out .= "</span>\n";
		$out .= "</div>\n";
		$out .= "</div>\n";

		$out .= "</div> <!-- /.footer-inner -->\n";
		$out .= "</div> <!-- /.container -->\n";
		$out .= "</section><!-- /#footer-top -->\n";


		$out .= "<section id=\"footer-content\" style=\"background-color: #090983;\">\n";
		$out .= "<div class=\"container\">\n";
		$out .= "<div class=\"row\">\n";
		
		$out .= "<div class=\"col-md-3 col-sm-12\">\n";
		$out .= "<aside class=\"logo\">\n";
		$out .= sprintf(
			"<img src=\"%simg/logo-white.png\" class=\"vertical-center\">\n",
			Config::PUBLIC_FOLDER
		);
		$out .= "</aside>\n";
		$out .= "</div><!-- /.col-md-3 -->\n";

		$out .= "<div class=\"col-md-3 col-sm-4\">\n";
		$out .= "<aside>\n";
		$out .= "<header><h4 class=\"ninoMtavruli\">კონტაქტი</h4></header>\n";
		$out .= "<address class=\"glakho\">\n";
		$out .= "<strong>VIP Intellect Group</strong><br>\n";
		$out .= "<span>პეკინის #28 მე-6-ე სართული</span><br><br><br>\n";
		$out .= "<abbr title=\"საკონტაქტო ნომერი\">საკ. ნომერი:</abbr> 2371939; 551196110; 593618212<br>\n";
		$out .= "<abbr title=\"ელექტრონული ფოსტა\">ელ-ფოსტა:</abbr> <a href=\"#\">ninovipicg@gmail.com</a>\n";
		$out .= "</address>\n";
		$out .= "</aside>\n";
		$out .= "</div><!-- /.col-md-3 -->\n";

		$out .= "<div class=\"col-md-3 col-sm-4\">\n";
		$out .= "<aside>\n";
		$out .= "<header><h4 class=\"ninoMtavruli\">ტრენინგები</h4></header>\n";
		$out .= "<ul class=\"list-links glakho\">\n";
		$out .= "<li><a href=\"#\">კომპიუტერული პროგრამები</a></li>\n";
		$out .= "<li><a href=\"#\">ბუღალტერია, საგადასახადო</a></li>\n";
		$out .= "<li><a href=\"#\">ტურიზმი და სასტუმრო, გიდის კურსი</a></li>\n";
		$out .= "<li><a href=\"#\">ლოგისტიკა</a></li>\n";
		$out .= "<li><a href=\"#\">ბიზნეს ადმინისტრირება</a></li>\n";
		$out .= "<li><a href=\"#\">ჯანდაცვის მენეჯმენტი</a></li>\n";
		$out .= "<li><a href=\"#\">გეოინფრომაციული სისტემები</a></li>\n";
		$out .= "<li><a href=\"#\">ბიზნეს ფსიქოლოგია</a></li>\n";
		$out .= "</ul>\n";
		$out .= "</aside>\n";
		$out .= "</div><!-- /.col-md-3 -->\n";

		$out .= "<div class=\"col-md-3 col-sm-4\">\n";
		$out .= "<aside>\n";
		$out .= "<header><h4 class=\"ninoMtavruli\">სასარგებლო ბმულები</h4></header>\n";
		$out .= "<ul class=\"list-links glakho\">\n";
		$out .= "<li><a href=\"#\">პროფესიული განათლების სტრატეგია</a></li>\n";
		$out .= "<li><a href=\"#\">პროფესიული საგანმანათლებლო დაწესებულებები</a></li>\n";
		$out .= "<li><a href=\"#\">ეროვნული პროფესიული საბჭო</a></li>\n";
		$out .= "</ul>\n";
		$out .= "</aside>\n";
		$out .= "</div><!-- /.col-md-3 -->\n";

		$out .= "</div><!-- /.row -->\n";
		$out .= "</div><!-- /.container -->\n";
		$out .= "<div class=\"background\">\n";
		$out .= "</div>\n";
		$out .= "</section><!-- /#footer-content -->\n";
		
		// footer footer
		$out .= "<section id=\"footer-bottom\" style=\"border-top: solid 1px rgba(255, 255, 255, 0.05);\">";
		$out .= "<div class=\"container\">";
		$out .= "<div class=\"footer-inner\">";
		$out .= "<div class=\"copyright\">© 2018 VIP Intellect Group</div>";
		$out .= "</div>";
		$out .= "</div>";
		$out .= "</section>";


		$out .= "</footer>";
		$out .= "</div>";

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery2.1.0.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquerymigrate1.2.1.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sbootstrap/js/bootstrap.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/selectize.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/owl.carousel.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery.validate.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery.placeholder.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jQuery.equalHeights.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/icheck.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/jquery.vanillabox-0.1.5.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/retina-1.1.0.min.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		$out .= sprintf(
			"<script src=\"%sjs/web/custom.js\" charset=\"utf-8\"></script>\n", 
			Config::PUBLIC_FOLDER
		);

		
		$out .= "</body>\n";
		$out .= "</html>\n";
		
		

		return $out;
	}
}
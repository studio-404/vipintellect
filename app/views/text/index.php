<?php
require_once("app/functions/l.php"); 
require_once("app/functions/strip_output.php");
$l = new functions\l();
echo $data['headerModule']; 
echo $data['headertop']; 
?>

<div class="container">
    <ol class="breadcrumb glakho">
            <li><a href="#">მთავარი</a></li>
            <li class="active">ჩვენს შესახებ</li>
        </ol>

    <!-- Page Content -->
    <div id="page-content" style="display: block;">
        <div class="">
            <div class="row">
                <!--MAIN Content-->
                <div class="col-md-8" style="min-height: 754px;">
                    <div id="page-main">
                        <section id="about">
                            <header><h1 class="ninoMtavruli"><?=$data['pageData']['title']?></h1></header>
                            <?php 
                            $photos = new Database("photos",array(
								"method"=>"selectByParent", 
								"idx"=>(int)$data['pageData']['idx'],  
								"lang"=>strip_output::index($data['pageData']['lang']),  
								"type"=>strip_output::index($data['pageData']['type'])
							));
							if($photos->getter()){
								$pic = $photos->getter();
								$image = sprintf(
									"%s%s/image/loadimage?f=%s%s&w=750&h=280",
									Config::WEBSITE,
									strip_output::index($_SESSION['LANG']),
									Config::WEBSITE_,
									strip_output::index($pic[0]['path'])
								);
								echo sprintf(
									"<img src=\"%s\" width=\"%s\" style=\"margin-bottom: 40px;\" />", 
									$image,
									"100%"
								);
							}

							echo strip_tags($data['pageData']['text'], "<p><a><ul><li><br>");
                            ?>
                           
                        </section>
                    </div><!-- /#page-main -->
                </div><!-- /.col-md-8 -->

                <!--SIDEBAR Content-->
                <div class="col-md-4" style="min-height: 754px;">
                    <div id="page-sidebar" class="sidebar">
                        <aside class="news-small" id="news-small">
                            <header>
                                <h2 class="ninoMtavruli"><?=$l->translate("lastnews")?></h2>
                            </header>
                            <div class="section-content glakho">
                                <?=$data["news"]?>
                            </div><!-- /.section-content -->
                            <a href="/<?=$_SESSION["LANG"]?>/news" class="read-more glakho"><?=$l->translate("allnews")?></a>
                        </aside><!-- /.news-small -->
                        
                        <aside id="our-professors">
                            <header>
                                <h2 class="ninoMtavruli">ჩვენი გუნდი</h2>
                            </header>
                            <div class="section-content">
                                <div class="professors">

                                    <article class="professor-thumbnail glakho">
                                        <figure class="professor-image">
                                            <a href="#">
                                                <img src="assets/img/professor.jpg" alt="">
                                            </a>
                                        </figure>
                                        <aside>
                                            <header>
                                                <a href="#">ჯონ დოუ</a>
                                                <div class="divider"></div>
                                                <figure class="professor-description">გაძლიერებული ექსელის ინსტრუქტორი</figure>
                                            </header>
                                            <a href="#" class="show-profile">პროფილის ნახვა</a>
                                        </aside>
                                    </article><!-- /.professor-thumbnail -->

                                    <article class="professor-thumbnail glakho">
                                        <figure class="professor-image">
                                            <a href="#">
                                                <img src="assets/img/professor.jpg" alt="">
                                            </a>
                                        </figure>
                                        <aside>
                                            <header>
                                                <a href="#">ჯონ დოუ</a>
                                                <div class="divider"></div>
                                                <figure class="professor-description">გაძლიერებული ექსელის ინსტრუქტორი</figure>
                                            </header>
                                            <a href="#" class="show-profile">პროფილის ნახვა</a>
                                        </aside>
                                    </article><!-- /.professor-thumbnail -->
                                    <a href="" class="read-more glakho">ნახე მეტი</a>
                                </div><!-- /.professors -->
                            </div><!-- /.section-content -->
                        </aside><!-- /.our-professors -->
                    </div><!-- /#sidebar -->
                </div><!-- /.col-md-4 -->
            </div><!-- /.row -->
        </div>
    </div>
    <!-- end Page Content -->
</div>


<?=$data['footer']?>
<script type="text/javascript">
    $(document).ready(function(){
        $("body").removeClass("page-homepage-carousel");
        $("body").addClass("page-sub-page page-about-us");
    });
</script>
</body>
</html>
<?php
require_once("app/functions/l.php"); 
require_once("app/functions/strip_output.php");
require_once("app/functions/pagination.php");
require_once("app/functions/archive.php");
$l = new functions\l();
$pagination = new functions\pagination();
$archive = new functions\archive();
echo $data['headerModule']; 
echo $data['headertop']; 
?>

<div class="container">
    <ol class="breadcrumb glakho">
            <li><a href="#">მთავარი</a></li>
            <li class="active">სიახლეები</li>
        </ol>

    <!-- Page Content -->
    <div id="page-content" style="display: block;">
        <div class="">
            <div class="row">
                <!--MAIN Content-->
                <div class="col-md-8">
                    <div id="page-main">
                        <section class="blog-listing" id="blog-listing">
                            <header><h1 class="ninoMtavruli"><?=$data['pageData']['title']?></h1></header>
                            <div class="row">
                                <?=$data['news']['html']?>
                            </div><!-- /.row -->

                            

                        </section><!-- /.blog-listing -->
                        <?php if($data['news']['count']>Config::NEWS_PER_PAGE): ?>
                        <div class="center">
                        	<?php
                        	echo $pagination->intellect_pagination($data['news']['count'], Config::NEWS_PER_PAGE);
                        	?>
                        </div>
                    	<?php endif; ?>
                    </div><!-- /#page-main -->
                </div><!-- /.col-md-8 -->

                <!--SIDEBAR Content-->
                <div class="col-md-4">
                    <div id="page-sidebar" class="sidebar">
                        <aside id="archive">
                            <header>
                                <h2 class="ninoMtavruli"><?=$l->translate("archive")?></h2>
                                <?=$archive->index()?>
                            </header>
                        </aside><!-- /archive -->
                    </div><!-- /#sidebar -->
                </div><!-- /.col-md-4 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div>
    <!-- end Page Content -->
</div>

<?=$data['footer']?>

<script type="text/javascript">
	$(document).ready(function(){
		$("body").removeClass("page-homepage-carousel");
		$("body").addClass("page-sub-page page-blog-listing");
	});
</script>

</body>
</html>
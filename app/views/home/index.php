<?php 
require_once("app/functions/l.php"); 
require_once("app/functions/string.php"); 
require_once("app/functions/strip_output.php"); 
require_once("app/functions/trainings.php"); 
$l = new functions\l(); 
$string = new functions\string(); 
$trainings = new functions\trainings(); 
echo $data['headerModule']; 
echo $data['headertop']; 
?>

<div id="page-content">

  <!-- start Slider -->
  <div id="homepage-carousel">
      <div class="container">
          <div class="homepage-carousel-wrapper">
              <div class="row">
                  <div class="col-md-6 col-sm-7">
                      <div class="image-carousel">
                          <?php echo $data['slider']['list']; ?>
                          
                      </div><!-- /.slider-image -->
                  </div><!-- /.col-md-6 -->
                  <div class="col-md-6 col-sm-5">
                      <div class="slider-content">
                          <div class="row">
                              <div class="col-md-12">
                                  <h1 class="ninoMtavruli"><?=$l->translate("registertraining")?></h1>
                                  <form id="slider-form" role="form" action="" method="post">
                                      <div class="row">
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <input class="form-control has-dark-background glakho" name="slider-name" id="slider-name" placeholder="<?=$l->translate("namelname")?>" type="text" required>
                                              </div>
                                          </div><!-- /.col-md-6 -->
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <input class="form-control has-dark-background glakho" name="slider-email" id="slider-email" placeholder="<?=$l->translate("contactnumber")?>" type="email" required>
                                              </div>
                                          </div><!-- /.col-md-6 -->
                                      </div><!-- /.row -->

                                      <div class="row">
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <input class="form-control has-dark-background glakho" name="slider-name" id="slider-name" placeholder="<?=$l->translate("email")?>" type="text" required>
                                              </div>
                                          </div><!-- /.col-md-6 -->
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <input class="form-control has-dark-background glakho" name="slider-email" id="slider-email" placeholder="<?=$l->translate("age")?>" type="email" required>
                                              </div>
                                          </div><!-- /.col-md-6 -->
                                      </div><!-- /.row -->

                                      <div class="row">
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <input class="form-control has-dark-background glakho" name="slider-name" id="slider-name" placeholder="<?=$l->translate("trainingstarttime")?>" type="text" required>
                                              </div>
                                          </div><!-- /.col-md-6 -->
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <select name="slider-study-level" id="slider-study-level" class="has-dark-background glakho">
                                                      <option value=""><?=$l->translate("howfindus")?></option>
                                                      <?php foreach($data["howfindus"] as $item):?>
                                                      <option value="<?=$item['id']?>"><?=$item['title']?></option>
                                                      <?php endforeach; ?>
                                                  </select>
                                              </div><!-- /.form-group -->
                                          </div><!-- /.col-md-6 -->
                                      </div><!-- /.row -->

                                      <div class="row">
                                          <div class="col-md-6">
                                              <div class="input-group">
                                                  <?=$trainings->index()?>
                                              </div><!-- /.form-group -->
                                          </div><!-- /.col-md-6 -->
                                          <div class="col-md-6">
                                              
                                          </div><!-- /.col-md-6 -->
                                      </div><!-- /.row -->
                                      <button type="submit" id="slider-submit" class="btn btn-framed pull-right glakho"><?=$l->translate("register")?></button>
                                      <div id="form-status"></div>
                                  </form>
                              </div><!-- /.col-md-12 -->
                          </div><!-- /.row -->
                      </div><!-- /.slider-content -->
                  </div><!-- /.col-md-6 -->
              </div><!-- /.row -->
              <div class="background"></div>
          </div><!-- /.slider-wrapper -->
          <div class="slider-inner"></div>
      </div><!-- /.container -->
  </div>
  <!-- end Slider -->

<?php if(isset($data['slogan']['description']) && !empty($data['slogan']['description'])) : ?>
  <!-- Testimonial -->
<section id="testimonials">
    <div class="block" style="padding-top: 20px; padding-bottom: 10px;">
        <div class="container">
            <div class="author-carousel" style="transform: skew(-10deg); -webkit-transform: skew(-10deg); -moz-transform: skew(-10deg);">
                <div class="author">
                    <blockquote>
                       <article class="paragraph-wrapper">
                            <div class="inner">
                                <header><?=$data['slogan']['description']?></header>
                                <!-- <footer>Claire Doe</footer> -->
                            </div>
                        </article>
                    </blockquote>
                </div><!-- /.author -->
                
            </div><!-- /.author-carousel -->
        </div><!-- /.container -->
    </div><!-- /.block -->
</section>
<!-- end Testimonial -->
<?php endif; ?>


  <!-- News, Events, About -->
  <div class="block">
      <div class="container">
          <div class="row">
              <div class="col-md-4 col-sm-6">
                  <section class="news-small" id="news-small">
                      <header>
                          <h2 class="ninoMtavruli"><?=$l->translate("news")?></h2>
                      </header>
                      <div class="section-content glakho">
                          <?=$data["news"]?>                          
                      </div><!-- /.section-content -->
                      <div class="clear"></div>
                      <a href="/<?=$_SESSION["LANG"]?>/news" class="read-more stick-to-bottom glakho" style="font-size: 12px;"><?=$l->translate("allnews")?></a>
                  </section><!-- /.news-small -->
              </div><!-- /.col-md-4 -->
              <div class="col-md-4 col-sm-6">
                  <section class="events small" id="events-small">
                      <header>
                          <h2 class="ninoMtavruli">ვაკანსიები</h2>
                      </header>
                      <div class="section-content glakho">
                          <?=$data['vacancies']?>
                          
                      </div><!-- /.section-content -->
                  </section><!-- /.events-small -->
                  <div class="clear"></div>
                  <a href="/<?=$_SESSION["LANG"]?>/vacancies" class="read-more glakho" style="font-size: 12px;"><?=$l->translate("allvacancies")?></a>
              </div><!-- /.col-md-4 -->
              <div class="col-md-4 col-sm-12">
                  <section id="about">
                      <header>
                          <h2 class="ninoMtavruli">კომპანიის შესახებ</h2>
                      </header>
                      <div class="section-content glakho">
                          <img src="assets/img/students.jpg" alt="" class="add-margin">
                          <p>კავკასიის უნივერსიტეტის ისტორია იწყება 1998 წლიდან, კავკასიის ბიზნესის სკოლის შექმნით. მისი დევიზია: "Studium Pretium Libertatis" - ,,ცოდნა თავისუფლების საწინდარია”.</p>
                          <p>კავკასიის უნივერსიტეტი სტუდენტებს სთავაზობს მაღალი დონის განათლებას, საერთაშორისო პროგრამებს, პრაქტიკაზე ორიენტირებულ სწავლებას.</p>
                          <a href="" class="read-more" style="font-size: 12px;"><?=$l->translate("more")?></a>
                      </div><!-- /.section-content -->
                  </section><!-- /.about -->
              </div><!-- /.col-md-4 -->
          </div><!-- /.row -->
      </div><!-- /.container -->
  </div>
  <!-- end News, Events, About -->

  <!-- Our Professors, Gallery -->
  <div class="block">
      <div class="container">
          <div class="row">
              <div class="col-md-4 col-sm-4">
                  <section id="our-professors">
                      <header>
                          <h2 class="ninoMtavruli">ჩვენი გუნდი</h2>
                      </header>
                      <div class="section-content">
                          <div class="professors">
                              <?=$data["staff"]?>
                              <a href="/<?=$_SESSION["LANG"]?>/staff" class="read-more glakho" style="font-size: 12px;"><?=$l->translate("more")?></a>                            
                          </div><!-- /.professors -->
                              
                      </div><!-- /.section-content -->
                  </section><!-- /.our-professors -->
              </div><!-- /.col-md-4 -->

              <div class="col-md-8 col-sm-8">
                  <section id="gallery">
                      <header>
                          <h2 class="ninoMtavruli">გალერეა</h2>
                      </header>
                      <div class="section-content">
                          <ul class="gallery-list">
                              <li><a href="<?=Config::WEBSITE?>/public/img/gallery-big-image.jpg" class="image-popup"><img src="<?=Config::WEBSITE?>/public/img/image-01.jpg" alt=""></a></li>

                              <li><a href="<?=Config::WEBSITE?>/public/img/gallery-big-image.jpg" class="image-popup"><img src="<?=Config::WEBSITE?>/public/img/image-01.jpg" alt=""></a></li>

                              <li><a href="<?=Config::WEBSITE?>/public/img/gallery-big-image.jpg" class="image-popup"><img src="<?=Config::WEBSITE?>/public/img/image-01.jpg" alt=""></a></li>
                              
                          </ul>
                          <a href="#" class="read-more glakho" style="font-size: 12px;">ნახე მეტი</a>
                      </div><!-- /.section-content -->
                  </section><!-- /.gallery -->
              </div><!-- /.col-md-4 -->

          </div><!-- /.row -->
      </div><!-- /.container -->
  </div>
  <!-- end Our Professors, Gallery -->

  <!-- Partners, Make a Donation -->
  <div class="block">
      <div class="container">
          <div class="row">
              <div class="col-md-12 col-sm-12">
                  <section id="partners">
                      <header>
                          <h2 class="ninoMtavruli">პარტნიორები &amp; დონორები</h2>
                      </header>
                      <div class="section-content">
                          <div class="logos">                        
                              <div class="logo">
                                <a href="">
                                  <img src="<?=Config::WEBSITE?>/public/img/logo-partner-01.png" alt="">
                                </a>
                              </div>
                              <div class="logo">
                                  <a href="">
                                    <img src="<?=Config::WEBSITE?>/public/img/logo-partner-02.png" alt="">
                                  </a>
                              </div>
                              <div class="logo">
                                <a href="">
                                  <img src="<?=Config::WEBSITE?>/public/img/logo-partner-03.png" alt="">
                                </a>
                              </div>
                              <div class="logo">
                                <a href="">
                                  <img src="<?=Config::WEBSITE?>/public/img/logo-partner-04.png" alt="">
                                </a>
                              </div>
                              <div class="logo">
                                <a href="">
                                  <img src="<?=Config::WEBSITE?>/public/img/logo-partner-05.png" alt="">
                                </a>
                              </div> 
                          </div>
                      </div>
                  </section>
              </div><!-- /.col-md-9 -->
              
          </div><!-- /.row -->
      </div><!-- /.container -->
  </div>
  <!-- end Partners, Make a Donation -->

</div>
<!-- end Page Content -->


<?=$data['footer']?>


</body>
</html>
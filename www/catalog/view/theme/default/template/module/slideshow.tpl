
<div class="slider-iner">
  <?php foreach ($banners as $banner) { ?>
  <div class="slider-item">
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="sliderImg">
    <div class="default-btn"><a href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a></div>
  </div>
  <?php } ?>
</div>

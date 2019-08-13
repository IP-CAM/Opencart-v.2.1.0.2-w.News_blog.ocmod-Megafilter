<?php if(0){ ?>
<footer>
    <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>


</footer>
<?php } ?>

<footer class="footer">

    <?php echo $lt_newsletter;?>
    <div class="container">
        <div class="footer_top">
            <div class="items">
                <div class="item">
                    <div class="title">про компанію</div>
                    <ul>
                        <?php foreach ($informations as $information) {    ?>
                        <li><a href="<?php echo $information['href'] ?>"> <?php echo $information['title'] ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Магазин</div>
                    <ul>
                        <?php foreach ($categories as $category) { ?>
                        <li><a href="<?php echo $category['href']; ?>" class="women"><?php echo $category['name']; ?></a>
                            <?php } ?>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Клієнтам</div>
                    <ul>
                        <?php foreach ($for_client as $client) {    ?>
                        <li><a href="<?php echo $client['href'] ?>"> <?php echo $client['title'] ?></a></li>
                        <?php } ?>
                        <a href="#" class="price-list"><span>Прайс-лист</span><i></i></a>
                    </ul>

                </div>
                <div class="item">
                    <div class="title">Партнерам</div>
                    <ul>
                        <?php foreach ($for_partner as $partner) {    ?>
                        <li><a href="<?php echo $partner['href'] ?>"> <?php echo $partner['title'] ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="item contacts_box">
                    <div class="title">Контакти</div>
                    <div class="inner-contact-box">
                        <div class="contacts">
                            <a href="tel:<?= $telephone; ?>"><?= $telephone; ?></a>
                            <a href="mailto:<?= $email; ?>"><?= $email; ?></a>
                        </div>
                        <div class="social_link">
                            <a href="<?= $facebook;?>" class="facebook"></a>
                            <a href="<?= $instagram;?>" class="instagram"></a>
                            <a href="<?= $twitter;?>" class="twitter"></a>
                            <a href="<?= $youtube;?>" class="youtube"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_bot">
            <div class="container">
                <div class="bot-left">
                    ©Сopyright 2018 - V&T SOCKS
                </div>
                <div class="bot-right">
                    <img src="img/group.svg" alt="wss-logo">
                </div>
            </div>
        </div>
    </div>

</footer>

<script src="catalog/view/html/js/common.js" type="text/javascript"></script>
</body></html>
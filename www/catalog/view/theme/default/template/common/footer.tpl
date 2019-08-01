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
    <div class="container">
        <div class="footer_top">
            <div class="items">
                <div class="item">
                    <div class="title">про компанію</div>
                    <ul>
                        <li><a href="#">Про нас </a></li>
                        <li><a href="#">Галерея</a></li>
                        <li><a href="#">Таблиця розмірів</a></li>
                        <li><a href="#">Новини</a></li>
                        <li><a href="#">Відгуки</a></li>
                        <li><a href="#">Контакти</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Магазин</div>
                    <ul>
                        <li><a href="#">Жінкам</a></li>
                        <li><a href="#">Чоловікам</a></li>
                        <li><a href="#">Дитям</a></li>
                        <li><a href="#">Sale</a></li>
                        <li><a href="#">Підписка</a></li>
                        <li><a href="#">Подарункові коробки</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Клієнтам</div>
                    <ul>
                        <li><a href="#">Питання-відповідь</a></li>
                        <li><a href="#">Доставка і оплата</a></li>
                        <li><a href="#">Повернення товару</a></li>
                        <a href="#" class="price-list"><span>Прайс-лист</span><i></i></a>
                    </ul>

                </div>
                <div class="item">
                    <div class="title">Партнерам</div>
                    <ul>
                        <li><a href="#">Опт</a></li>
                        <li><a href="#">Крупний опт</a></li>
                        <li><a href="#">Дропшипінг</a></li>
                        <li><a href="#">Корпоративні замовлення</a></li>
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
                            <a href="#" class="instagram"></a>
                            <a href="#" class="twitter"></a>
                            <a href="#" class="youtube"></a>
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
                    <img src="../img/group.svg" alt="wss-logo">
                </div>
            </div>
        </div>
    </div>

</footer>

<script src="catalog/view/html/js/lib.js" type="text/javascript"></script>
<script src="catalog/view/html/js/common.js" type="text/javascript"></script>
</body></html>
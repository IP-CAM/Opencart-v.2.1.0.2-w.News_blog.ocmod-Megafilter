<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>"/>
<?php foreach($extra_tags as $extra_tag) {?>
<meta <?php echo ($extra_tag['name']) ? 'name="' . $extra_tag['name'] . '" ' : ''; ?><?php echo (!in_array($extra_tag['property'], array("noprop", "noprop1", "noprop2", "noprop3", "noprop4"))) ? 'property="' . $extra_tag['property'] . '" ' : ''; ?> content="<?php echo addslashes($extra_tag['content']); ?>" />
<?php } ?>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>

    <script src="catalog/view/html/js/lib.js" type="text/javascript"></script>
    <!--    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>-->
    <!--    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>-->
				
				<script src="catalog/view/javascript/mf/jquery-ui.min.js" type="text/javascript"></script>
			
    <!--    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>-->
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <!--<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->

    <link href="catalog/view/html/css/lib.css" rel="stylesheet">
    <link href="dist/css/main.css" rel="stylesheet">
    <link href="catalog/view/html/css/main.css" rel="stylesheet">
    <link href="catalog/view/html/css/media.css" rel="stylesheet">


    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>


    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="hiden_menu">
    <div class="hiden_menu_iner">
        <div class="close_btn"></div>
        <ul>

            <?php foreach ($informations as $information) {    ?>
            <li><a href="<?php echo $information['href'] ?>"> <?php echo $information['title'] ?></a></li>
            <?php } ?>

           <!-- <li><a href="#">Про нас</a></li>
            <li><a href="#">Галерея</a></li>
            <li><a href="#">Таблиця розмірів</a></li>
            <li><a href="javascript:void(0);" class="item">Клієнтам</a>
                <ul class="child">
                    <li><a href="#">Питання-відповідь</a></li>
                    <li><a href="#">Доставка і оплата</a></li>
                    <li><a href="#">Повернення товару</a></li>
                </ul>
            </li>
            <li><a href="javascript:void(0);" class="item">Партнерам</a>
                <ul class="child">
                    <li><a href="#">Опт</a></li>
                    <li><a href="#">Крупний опт</a></li>
                    <li><a href="#">Дропшипінг</a></li>
                    <li><a href="#">Корпоративні замовлення</a></li>
                </ul>
            </li>
            <li><a href="#">Новини</a></li>
            <li><a href="#">відгуки</a></li>
            <li><a href="#">Контакти</a></li>
            -->
        </ul>
    </div>
</div>
<header>
    <div class="container">
        <div class="header_top">

            <div class="top-left">
                <div class="menu-logo">
                    <a href="javascript:void(0);" class="js_logo_btn"><span>MENU</span></a>
                </div>
                <div class="phone">
                    <a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a>
                </div>
            </div>
            <div class="logo">
<!--                <img src="img/logo.svg" alt="logo" class="img-respons">-->
                <?php if ($logo) { ?>
                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                <?php } else { ?>
                    <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                <?php } ?>
            </div>
            <div class="top-right">
                <ul class="icons">
                    <li><a href="javascript:void(0);" class="search"></a></li>
                    <li><a href="" class="heart"><span>4</span></a></li>
                    <li>
<!--                        <a href="#" class="bag"><span>4</span></a>-->
                        <?= $cart; ?>
                    </li>
                    <li><a href="javascript:void(0);" class="user"></a></li>
                    <div id="myModal2" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <div class="modal__title">авторизація</div>
                                    <button type="button" id="close_modal" class="close" data-dismiss="modal" aria-hidden="true"></button>

                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                    <div class="col-sm-6 left">
                                        <div class="top">
                                        <div class="title">вхід</div>
                                        <input type="email" placeholder="Email">
                                        <input type="password" placeholder="Пароль">
                                        <div class="check-pass">
                                        <div class="default-check">
                                            <input type="checkbox" id="id_login">
                                            <label for="id_login">Показати пароль</label>
                                        </div>
                                            <a href="#">Забули пароль?</a>
                                        </div>
                                        <div class="btn-wrapper">
                                        <button type="button" class="default-btn">вхід<button>
                                        </div>
                                        </div>
                                        <div class="bottom">
                                            <div class="title">Вхід через соцмережі</div>
                                            <div class="btn-group">
                                                <button type="button" class="default-btn facebook">Facebook</button>
                                                <button type="button" class="default-btn google">Google +</button>
                                            </div>
                                        </div>
                                    </div>
                                        <div class="col-sm-6 right">
                                        <div class="title">реєстрація</div>
                                        <input type="email" placeholder="Ім’я">
                                        <input type="password" placeholder="Прізвище">
                                        <input type="email" placeholder="Телефон">
                                        <input type="password" placeholder="Пароль">
                                        <input type="email" placeholder="Email">
                                        <div class="default-check">
                                            <input type="checkbox" id="id_regist">
                                            <label for="id_regist">Показати пароль</label>
                                        </div>
                                        <button type="button" class="default-btn register">Зареєструватись</button>
                                    </div>
                                    </div>
                                    </div>

                            </div>
                        </div>
                    </div>
                </ul>
                <div class="select">
                    <div class="cur">
                        <?php echo $currency;?>
                </div>
                    <div class="lang">
                        <?php echo $language;?>
                    </div>
                </div>
            </div>
        </div>
        <div class="search-box">
            <?php echo $search; ?>
        </div>
        <nav>
            <div class="header_bottom">
                <div class="header_bottom_menu_btn"><a href="javascript:void(0);"class="js_header_bottom_menu_btn">каталог продукції</a></div>
                <ul class="hidden_menu_inner">
                    <?php foreach ($categories as $category) { ?>
                    <?php if ($category['children']) { ?>
                    <li><a href="<?php echo $category['href']; ?>" class="women"><?php echo $category['name']; ?></a>
                        <div class="hidden_menu">
                            <div class="container">
                                <?php foreach ($category['children'] as $child) { ?>
                                <a href="<?php echo $child['href']; ?>" class="hidden_item">
                                    <div class="hidden_icons"><img src="<?php echo $child['image'] ?>" alt=""></div>
                                    <div class="hidden_text"><?php echo $child['name']; ?></div>
                                </a>
                                    <?php } ?>
                            </div>
                        </div>
                    </li>
                    <?php } else { ?>
                    <li><a href="<?php echo $category['href']; ?>" class="women"><?php echo $category['name']; ?></a>
                            <?php } ?>

                        <?php } ?>
                </ul>
            </div>


        </nav>
    </div>
</header>

<?php if(0){ ?>
    <nav id="top">
      <div class="container">
        <?php echo $currency; ?>
        <?php echo $language; ?>
        <div id="top-links" class="nav pull-right">
          <ul class="list-inline">
            <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
            <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
              <ul class="dropdown-menu dropdown-menu-right">
                <?php if ($logged) { ?>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                <?php } ?>
              </ul>
            </li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
            <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
          </ul>
        </div>
      </div>
    </nav>
    <header>
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div id="logo">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
          <div class="col-sm-5"><?php echo $search; ?>
          </div>
          <div class="col-sm-3"><?php echo $cart; ?></div>
        </div>
      </div>
    </header>
    <?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>

<?php } ?>

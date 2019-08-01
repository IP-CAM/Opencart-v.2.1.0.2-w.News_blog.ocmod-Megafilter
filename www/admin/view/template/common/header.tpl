{*<!DOCTYPE html>*}
{*<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">*}
{*<head>*}
{*<meta charset="UTF-8" />*}
{*<title><?php echo $title; ?></title>*}
{*<base href="<?php echo $base; ?>" />*}
{*<?php if ($description) { ?>*}
{*<meta name="description" content="<?php echo $description; ?>" />*}
{*<?php } ?>*}
{*<?php if ($keywords) { ?>*}
{*<meta name="keywords" content="<?php echo $keywords; ?>" />*}
{*<?php } ?>*}
{*<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />*}
{*<script type="text/javascript" src="view/javascript/jquery/jquery-2.1.1.min.js"></script>*}
{*<script type="text/javascript" src="view/javascript/bootstrap/js/bootstrap.min.js"></script>*}
{*<link href="view/stylesheet/bootstrap.css" type="text/css" rel="stylesheet" />*}
{*<link href="view/javascript/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />*}
{*<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />*}
{*<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>*}
{*<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>*}
{*<script src="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>*}
{*<link href="view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen" />*}
{*<link type="text/css" href="view/stylesheet/stylesheet.css" rel="stylesheet" media="screen" />*}
{*<?php foreach ($styles as $style) { ?>*}
{*<link type="text/css" href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />*}
{*<?php } ?>*}
{*<?php foreach ($links as $link) { ?>*}
{*<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />*}
{*<?php } ?>*}
{*<script src="view/javascript/common.js" type="text/javascript"></script>*}
{*<?php foreach ($scripts as $script) { ?>*}
{*<script type="text/javascript" src="<?php echo $script; ?>"></script>*}
{*<?php } ?>*}
{*</head>*}
{*<body>*}
{*<div id="container">*}
{*<header id="header" class="navbar navbar-static-top">*}
{*  <div class="navbar-header">*}
{*    <?php if ($logged) { ?>*}
{*    <a type="button" id="button-menu" class="pull-left"><i class="fa fa-indent fa-lg"></i></a>*}
{*    <?php } ?>*}
{*    <a href="<?php echo $home; ?>" class="navbar-brand"><img src="view/image/logo.png" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" /></a></div>*}
{*  <?php if ($logged) { ?>*}
{*  <ul class="nav pull-right">*}
{*    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger pull-left"><?php echo $alerts; ?></span> <i class="fa fa-bell fa-lg"></i></a>*}
{*      <ul class="dropdown-menu dropdown-menu-right alerts-dropdown">*}
{*        <li class="dropdown-header"><?php echo $text_order; ?></li>*}
{*        <li><a href="<?php echo $processing_status; ?>" style="display: block; overflow: auto;"><span class="label label-warning pull-right"><?php echo $processing_status_total; ?></span><?php echo $text_processing_status; ?></a></li>*}
{*        <li><a href="<?php echo $complete_status; ?>"><span class="label label-success pull-right"><?php echo $complete_status_total; ?></span><?php echo $text_complete_status; ?></a></li>*}
{*        <li><a href="<?php echo $return; ?>"><span class="label label-danger pull-right"><?php echo $return_total; ?></span><?php echo $text_return; ?></a></li>*}
{*        <li class="divider"></li>*}
{*        <li class="dropdown-header"><?php echo $text_customer; ?></li>*}
{*        <li><a href="<?php echo $online; ?>"><span class="label label-success pull-right"><?php echo $online_total; ?></span><?php echo $text_online; ?></a></li>*}
{*        <li><a href="<?php echo $customer_approval; ?>"><span class="label label-danger pull-right"><?php echo $customer_total; ?></span><?php echo $text_approval; ?></a></li>*}
{*        <li class="divider"></li>*}
{*        <li class="dropdown-header"><?php echo $text_product; ?></li>*}
{*        <li><a href="<?php echo $product; ?>"><span class="label label-danger pull-right"><?php echo $product_total; ?></span><?php echo $text_stock; ?></a></li>*}
{*        <li><a href="<?php echo $review; ?>"><span class="label label-danger pull-right"><?php echo $review_total; ?></span><?php echo $text_review; ?></a></li>*}
{*        <li class="divider"></li>*}
{*        <li class="dropdown-header"><?php echo $text_affiliate; ?></li>*}
{*        <li><a href="<?php echo $affiliate_approval; ?>"><span class="label label-danger pull-right"><?php echo $affiliate_total; ?></span><?php echo $text_approval; ?></a></li>*}
{*      </ul>*}
{*    </li>*}
{*    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-life-ring fa-lg"></i></a>*}
{*      <ul class="dropdown-menu dropdown-menu-right">*}
{*        <li class="dropdown-header"><?php echo $text_store; ?> <i class="fa fa-shopping-cart"></i></li>*}
{*        <?php foreach ($stores as $store) { ?>*}
{*        <li><a href="<?php echo $store['href']; ?>" target="_blank"><?php echo $store['name']; ?></a></li>*}
{*        <?php } ?>*}
{*        <li class="divider"></li>*}
{*        <li class="dropdown-header"><?php echo $text_help; ?> <i class="fa fa-life-ring"></i></li>*}
{*        <li><a href="http://www.opencart.com" target="_blank"><?php echo $text_homepage; ?></a></li>*}
{*        <li><a href="http://docs.opencart.com" target="_blank"><?php echo $text_documentation; ?></a></li>*}
{*        <li><a href="http://forum.opencart.com" target="_blank"><?php echo $text_support; ?></a></li>*}
{*      </ul>*}
{*    </li>*}
{*    <li><a href="<?php echo $logout; ?>"><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_logout; ?></span> <i class="fa fa-sign-out fa-lg"></i></a></li>*}
{*  </ul>*}
{*  <?php } ?>*}
{*</header>*}


<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="view/css/main.css">
    <title>Document</title>
</head>
<body class="">
<div class="hiden_menu">
    <div class="hiden_menu_iner">
        <div class="close_btn"></div>
        <ul>
            <li><a href="#">Про нас</a></li>
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
                    +38 (096) 762-40-96
                </div>
            </div>
            <div class="logo">
                <img src="view/img/logo.svg" alt="logo" class="img-respons">
            </div>
            <div class="top-right">
                <ul class="icons">
                    <li><a href="#" class="search"></a></li>
                    <li><a href="#" class="heart"><span>4</span></a></li>
                    <li><a href="#" class="bag"><span>4</span></a></li>
                    <li><a href="#" class="user"></a></li>
                </ul>
                <div class="select">
                    <button class="currency">
                        UAH
                    </button>
                    <ul class="currency_list">
                        <li><a href="#">RUB</a></li>
                        <li><a href="#">USD</a></li>
                    </ul>
                    <button class="lang">
                        UA
                    </button>
                    <ul class="lang_list">
                        <li><a href="#">RU</a></li>
                        <li><a href="#">ENG</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <nav>
            <div class="header_bottom">
                <div class="header_bottom_menu_btn"><a href="javascript:void(0);"class="js_header_bottom_menu_btn">каталог продукції</a></div>
                <ul class="hidden_menu_inner">
                    <li><a href="#" class="women">ЖІНКАМ</a>
                        <div class="hidden_menu">
                            <div class="container">
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="view/img/woman-1.svg" alt=""></div>
                                    <div class="hidden_text">Довгі шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="view/img/woman-2.svg" alt=""></div>
                                    <div class="hidden_text">Класичні шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="view/img/woman-3.svg" alt=""></div>
                                    <div class="hidden_text">Короткі шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="view/img/woman-4.svg" alt=""></div>
                                    <div class="hidden_text">слід, підслідок</div>
                                </a>
                            </div>
                        </div>

                    </li>
                    <li><a href="#" class="men">ЧОЛОВІКАМ</a>
                        <div class="hidden_menu">
                            <div class="container">
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="view/img/man-1.svg" alt=""></div>
                                    <div class="hidden_text">Довгі шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="view/   img/man-2.svg" alt=""></div>
                                    <div class="hidden_text">Класичні шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="img/man-3.svg" alt=""></div>
                                    <div class="hidden_text">Короткі шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="img/man-4.svg" alt=""></div>
                                    <div class="hidden_text">Cлід, підслідок</div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li><a href="#" class="kid">ДІТЯМ</a>
                        <div class="hidden_menu">
                            <div class="container">
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="img/kid-1.svg" alt=""></div>
                                    <div class="hidden_text">Довгі шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="img/kid-2.svg" alt=""></div>
                                    <div class="hidden_text">Класичні шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="img/kid-3.svg" alt=""></div>
                                    <div class="hidden_text">Короткі шкарпетки</div>
                                </a>
                                <a href="#" class="hidden_item">
                                    <div class="hidden_icons"><img src="img/kid-4.svg" alt=""></div>
                                    <div class="hidden_text">Cлід, підслідок</div>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li><a href="#">SALE</a></li>
                    <li><a href="#">ПІДПИСКА</a></li>
                    <li><a href="#">ПОДАРУНКОВІ КОРОБКИ</a></li>
                </ul>
            </div>


        </nav>
    </div>
</header>
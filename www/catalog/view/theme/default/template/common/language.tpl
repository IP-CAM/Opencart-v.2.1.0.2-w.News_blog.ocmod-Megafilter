<?php if (count($languages) > 1) { ?>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
    <?php if(0) {?>
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
    <span class="hidden-xs hidden-sm hidden-md"></span> <i class="fa fa-caret-down"></i></button>
    <ul class="dropdown-menu">

    </ul>

    <?php }?>
    <div class="lang">
        <?php echo $text_language; ?>
    </div>
    <ul class="lang_list">
        <?php foreach ($languages as $language) { ?>
            <li><a href="<?php echo $language['code']; ?>"> <?php echo $language['name']; ?></a></li>
        <?php } ?>
    </ul>

  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>

<?php } ?>





<?php
if (count($currencies) > 1) {
?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
    <?php if(0) { ?>
    <button class="btn btn-link dropdown-toggle" data-toggle="dropdown">
        <span class="hidden-xs hidden-sm hidden-md"></span> <i class="fa fa-caret-down"></i></button>
    <ul class="dropdown-menu">

    </ul>

    <?php } ?>
    <div class="currency">
        <?php echo $code; ?>
    </div>
    <ul class="currency_list">
        <?php foreach ($currencies as $currency) { ?>
        <li><button class="currency-select"  name ="<?php echo $currency['code'];?>"> <?php echo $currency['code']; ?></button></li>
        <?php } ?>
    </ul>

    <input type="hidden" name="code" value="" >
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" >
</form>

<?php } ?>

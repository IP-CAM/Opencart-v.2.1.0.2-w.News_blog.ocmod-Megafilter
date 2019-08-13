<p class="subscribe__title"><?php echo $heading_title; ?></p>


<form id="lt_newsletter_form">


    <div class="subscribe__form">

        <input type="email" placeholder="E-mail" name="lt_newsletter_email" id="lt_newsletter_email" class="input">

        <button type="submit" class="btn btn_blue btn-newsletter"><?php echo $text_button; ?></button>

    </div>


</form>
<script type="text/javascript"><!--
    $(document).ready(function($) {
        $('#lt_newsletter_form').submit(function(e){
            e.preventDefault();
            $.ajax({
                type: 'post',
                url: '<?php echo $action; ?>',
                data:$("#lt_newsletter_form").serialize(),
                dataType: 'json',
                beforeSend: function() {
                    //$('.btn-newsletter').attr('disabled', true).button('loading');
                },
                complete: function() {
                    //$('.btn-newsletter').attr('disabled', false).button('reset');
                },
                success: function(json) {
                    $('.alert, .alert-danger').remove();
                    $('.form-group').removeClass('has-error');

                    if (json.error) {
                        //alert(json.error);
                        $('#lt_newsletter_form .subscribe__form #lt_newsletter_email').after('<div class="alert alert-danger newsletter-msg">' + json.error + '</div>');
                    } else {
                        //alert(json.success);
                        $('#lt_newsletter_form .subscribe__form #lt_newsletter_email').after('<div class="alert alert-success newsletter-msg">' + json.success + '</div>');
                        $('#lt_newsletter_email').val('');
                    }
                }

            });
            return false;
        });
    });
    //--></script>





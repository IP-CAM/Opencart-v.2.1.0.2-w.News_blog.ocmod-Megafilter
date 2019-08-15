

<section class="email_letter">
    <div class="container">
        <div class="email_title">
            <?php echo $heading_title; ?>
        </div>
        <form id="lt_newsletter_form" class="email_form">
            <input type="email" name="lt_newsletter_email" id="lt_newsletter_email" placeholder="Введіть email для підписки" class="email_form_input">
            <button type="submit" class="email_form_btn btn-newsletter"></button>
        </form>

    </div>
</section>

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
                        $('.email_letter .container').after('<div class="alert alert-danger newsletter-msg">'+'<div class="container">' + json.error +'</div>'+'</div>');

                    } else {
                        //alert(json.success);
                        $('.email_letter .container').after('<div class="alert alert-success newsletter-msg">'+'<div class="container">' + json.success +'</div>'+ '</div>');

                    }
                    setTimeout(function(){
                        if ($('.newsletter-msg').length > 0) {
                            $('.newsletter-msg').remove();
                        }
                    }, 5000)
                }

            });
            return false;
        });
    });
    //--></script>





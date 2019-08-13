<div class="wrapper-newsModule">
    <div class="container">
        <div class="newsModule">
            <div class="newsModule__title">
                <?= $heading_title; ?>
            </div>
            <div class="newsModule__list">
                <?php foreach ($article as $articles) { ?>
                <div class="newsModule__list-item">
                    <div class="artblock">
                        <?php if ($articles['thumb']) { ?>
                            <div class="image">
                                <img src="<?= $articles['thumb']; ?>" title="<?= $articles['name']; ?>" alt="<?= $articles['name']; ?>" />
                            </div>
                        <?php } ?>
                        <div class="box">
                            <?php if ($articles['name']) { ?>
                                <div class="name"><a href="<?= $articles['href']; ?>"><?= $articles['name']; ?></a></div>
                            <?php } ?>
                            <?php if ($articles['description']) { ?>
                                <div class="description"><?= $articles['description']; ?></div>
                            <?php } ?>
                            <?php if ($articles['button']) { ?>
                                <div class="blog-button"><a class="button" href="<?= $articles['href']; ?>"><?= $button_more; ?></a></div>
                            <?php } ?>
                        </div>
                    </div>
                </div>

                <?php } ?>
            </div>
        </div>
        <a href="/nblog" class="newsModule__btn btn-normal"><?= $text_headlines; ?></a>
    </div>
</div>

<?php if(0){?>
    <script type="text/javascript"><!--
        $(document).ready(function() {
            $('img.article-image').each(function(index, element) {
            var articleWidth = $(this).parent().parent().width() * 0.7;
            var imageWidth = $(this).width() + 10;
            if (imageWidth >= articleWidth) {
                $(this).attr("align","center");
                $(this).parent().addClass('bigimagein');
            }
            });
        });
    //--></script>
    <?php if ($disqus_status) { ?>
    <script type="text/javascript">
    var disqus_shortname = '<?= $disqus_sname; ?>';
    (function () {
    var s = document.createElement('script'); s.async = true;
    s.type = 'text/javascript';
    s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
    (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
    }());
    </script>
    <?php } ?>
    <?php if ($fbcom_status) { ?>
    <script type="text/javascript">
          window.fbAsyncInit = function() {
            FB.init({
              appId      : '<?= $fbcom_appid; ?>',
              status     : true,
              xfbml      : true,
              version    : 'v2.0'
            });
          };

          (function(d, s, id){
             var js, fjs = d.getElementsByTagName(s)[0];
             if (d.getElementById(id)) {return;}
             js = d.createElement(s); js.id = id;
             js.src = "//connect.facebook.net/en_US/sdk.js";
             fjs.parentNode.insertBefore(js, fjs);
           }(document, 'script', 'facebook-jssdk'));
    </script>
    <?php } ?>
<?php } ?>
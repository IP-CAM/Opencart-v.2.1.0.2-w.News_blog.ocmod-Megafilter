
<section class="news">
    <div class="container">
        <div class="news_top_title">
            <?= $heading_title; ?>
        </div>

        <div class="news_items">
            <?php foreach ($article as $articles) { ?>
                <div class="news_item">
                    <a href="<?= $articles['href']; ?>" class="news_images">
                        <img src="<?= $articles['thumb']; ?>" alt="<?= $articles['name']; ?>" class="img-respons">
                    </a>
                    <a href="<?= $articles['href']; ?>" class="news_title">
                        <?= $articles['name']; ?>
                    </a>
                    <div class="news_text">
                        <?= $articles['description']; ?>
                    </div>
                </div>
            <?php } ?>

        </div>
        <div class="default-btn black">
            <a href="<?= $newslink; ?>">всі новини</a>
        </div>
</section>
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
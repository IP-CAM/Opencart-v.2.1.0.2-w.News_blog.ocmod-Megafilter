

<div class="kart-review">
    <?php if ($reviews) { ?>

    <div class="kart-title">
        відгуки
    </div>
    <div class="kart-review_inner">
        <?php foreach ($reviews as $review) { ?>
        <div class="kart-review_item">
            <div class="item_title-block">
                <div class="title-block_name"><?php echo $review['author']; ?></div>
                <div class="title-block_date"><?php echo $review['date_added']; ?></div>
                <div class="title-block_review">
                    <ul>
                        <ul>
                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                                <?php if ($review['rating'] < $i) { ?>
                                    <li></li>
                                <?php } else { ?>
                                    <li class="active"></li>
                                <?php } ?>
                            <?php } ?>

                        </ul>
                    </ul>
                </div>
            </div>
            <div class="item_text">
                <?php echo $review['text']; ?>
            </div>
            <?php } ?>
        </div>
    </div>
    <div id ="js_review" class="default-btn black">
        <a href="javascript:void(0);">залишити відгук</a>
    </div>
        <div class="text-right"><?php echo $pagination; ?></div>
    <?php } else { ?>
        <div id ="js_review" class="default-btn black">
            <a href="javascript:void(0);">залишити відгук</a>
        </div>
        <p><?php echo $text_no_reviews; ?></p>
    <?php } ?>
</div>

<div class="category-list">
    <ul class="category-list main">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
    <li class="category-list-parent"> <a href="<?php echo $category['href']; ?>" class="category-list-item "><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
        <ul class="child">
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
    <li><a href="<?php echo $child['href']; ?>" class="category-list-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>" class="category-list-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
        </ul>
  <?php } ?>
    </li>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>" class="category-list-item"><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
    </ul>
</div>


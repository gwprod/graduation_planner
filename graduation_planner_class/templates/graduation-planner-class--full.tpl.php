<?php
/**
 * @file
 * Template for displaying GraduationPlannerClass in view_mode full.
 */

?>
<div class="<?php print $classes; ?> clearfix"<?php print $attributes; ?>>
  <div class="content"<?php print $content_attributes; ?>>
    <?php
    print render($content);
    ?>
  </div>
</div>
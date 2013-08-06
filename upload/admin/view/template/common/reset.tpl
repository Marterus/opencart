<?php echo $header; ?>
<div id="content">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="panel">
    <div class="panel-heading">
      <h1 class="panel-title"><i class="icon-repeat"></i> <?php echo $heading_title; ?></h1>
    </div>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <p><?php echo $text_password; ?></p>
      <div class="form-group">
        <label class="col-lg-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
        <div class="col-lg-10">
          <input type="password" name="password" value="<?php echo $password; ?>" id="input-password" />
          <?php if ($error_password) { ?>
          <span class="error"><?php echo $error_password; ?></span>
          <?php } ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-lg-2 control-label" for="input-confirm"><?php echo $entry_confirm; ?></label>
        <div class="col-lg-10">
          <input type="password" name="confirm" value="<?php echo $confirm; ?>" id="input-confirm" />
          <?php if ($error_confirm) { ?>
          <span class="error"><?php echo $error_confirm; ?></span>
          <?php } ?>
        </div>
      </div>
      <button type="submit" class="btn btn-primary"><i class="icon-ok"></i> <?php echo $button_save; ?></button>
      <a href="<?php echo $cancel; ?>" class="btn"><i class="icon-remove"></i> <?php echo $button_cancel; ?></a>
    </form>
  </div>
</div>
<?php echo $footer; ?>
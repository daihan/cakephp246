<?php echo $this->Session->flash(); ?>
<?php echo $this->Form->create('Admin'); ?>
<?php echo $this->Form->input('username'); ?>
<?php echo $this->Form->input('password'); ?>
<?php echo $this->Form->end('Login'); ?>
<script type="text/javascript">
$(document).ready(function(){
    $("#UserUsername").focus();
});
</script>
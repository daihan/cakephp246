<?php echo $this->Session->flash(); ?>
<?php echo $this->Form->create('Admin', array('action' => 'add')); ?>
<?php echo $this->Form->input('username', array('type' => 'text')); ?>
<?php echo $this->Form->input('password', array('type' => 'password')); ?>
<?php echo $this->Form->end('Add'); ?>
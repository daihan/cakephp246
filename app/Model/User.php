<?php
    App::uses('SimplePasswordHasher', 'Controller/Component/Auth');
	class User extends AppModel {
	   public $name = "User";
       public $useTable = 'users';
       public function beforeSave($options = array()) {
            if (!empty($this->data[$this->alias]['password'])) {
                $passwordHasher = new SimplePasswordHasher(array('hashType' => 'sha256'));
                $this->data[$this->alias]['password'] = $passwordHasher->hash(
                    $this->data[$this->alias]['password']
                );
            }
            return true;
       }
	}
?>
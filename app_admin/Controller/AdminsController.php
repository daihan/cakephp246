<?php
App::uses('SimplePasswordHasher', 'Controller/Component/Auth');
class AdminsController extends AppController {
    
    public $name = 'admins';
    public $uses = array('Admin');
    
    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('add');
    }
    
    public function index() {
       echo "22222"; 
    }
    public function login() {
        if ($this->request->is('post')) {
            //$passwordHasher = new SimplePasswordHasher(array('hashType' => 'sha256'));
            //$this->request->data['User']['password'] = $passwordHasher->hash($this->data['User']['password']);
            //var_dump($this->Auth->login());exit;
            if ($this->Auth->login()) {
            //$sql = 'select * from `users` where `username` ="'.$this->data['User']['username'].'" and `password` ="'.$passwordHasher->hash($this->data['User']['password']).'"';
            //$result = $this->User->query($sql); 
            //if(!empty($result)){ //var_dump($result);exit;
                return $this->redirect($this->Auth->redirectUrl());
                // Prior to 2.3 use
                //return $this->redirect($this->Auth->redirect());
                //echo "22222";
            } else {
                $this->Session->setFlash('Username or password is incorrect');
            }
        }
    }
    public function logout() {
        return $this->redirect($this->Auth->logout());
    }
    
    public function add() {
        if($this->request->is('post')) {
            $this->Admin->create($this->data);
            if ($this->Admin->validates()) {
               if ($this->Admin->save()) $this->Session->setFlash('Admin has save');
               else  $this->Session->setFlash('Admin can not be save');
            }
        }
    }
    public function sum($tong, $loop_count = 0){
        if($loop_count < 100) {
            $tong += $loop_count;
            $tong ++;
            $loop_count ++;
            if($loop_count == 100) echo $tong;
            return $this->sum($tong, $loop_count);     
        }
    }
    public function sum2() {
        $tong = 0;
        for($i = 0; $i <=100; $i++) {
           $tong += $i; 
        } 
        echo $tong;
    }
}
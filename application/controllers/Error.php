<?php

class Error extends \Hideks\Controller {
    
    public function indexAction() {
        $error_handler = $this->getParam('error_handler');
        
        $this->getSmarty()->assign('error_handler' , $error_handler);
        
        $this->renderTo('html');
    }
    
}
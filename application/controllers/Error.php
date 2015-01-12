<?php

use Hideks\Controller;

class Error extends Controller
{
    
    public function indexAction()
    {
        $error_handler = $this->getParam('error_handler');
        
        $this->getSmarty()->assign('error_handler' , $error_handler);
        
        $this->renderTo('html');
    }
    
}
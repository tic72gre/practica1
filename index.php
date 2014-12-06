<?php
require'helpers.php';
if(empty($_GET['url']))
    $_GET['url']='login';

controller($_GET['url']);
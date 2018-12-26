<?php  
include("../../config/config.php");
include("../classes/User.php");
include("../classes/Post.php");

if(isset($_POST['post_body'])) {
    
    $body = $_POST['post_body'];
    $user_from = $_POST['user_from'];
    $user_to = $_POST['user_to'];
    
    $posts = new Post($con, $user_from);
    $posts->submitPost($body, $user_to);
    
}
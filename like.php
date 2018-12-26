<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body>

        <?php
        require 'config/config.php';
        include("includes/classes/User.php");
        include("includes/classes/Post.php");

        if (isset($_SESSION['username'])) {
            $userLoggedIn = $_SESSION['username'];
            $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
            $user = mysqli_fetch_array($user_details_query);
        } else {
            header("Location: register.php");
        }

        //Get id of post
        if (isset($_GET['post_id'])) {
            $post_id = $_GET['post_id'];
        }

        $likes_query = mysqli_query($con, "SELECT likes, added_by FROM posts WHERE id='$post_id'");
        $row = mysqli_fetch_array($likes_query);
        $total_likes = $row['likes'];
        $user_liked = $row['added_by'];

        $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$user_liked'");
        $user_row = mysqli_fetch_array($user_details_query);
        $total_user_likes = $user_row['num_likes'];
        
        /* Like Buttom */
        if(isset($_POST['like_button'])) {
            $total_likes++;
            $query = mysqli_query($con, "UPDATE posts SET likes='$total_likes' WHERE id='$post_id'");
            $total_user_likes++;
            $user_likes_query = mysqli_query($con, "UPDATE users SET num_likes='$total_user_likes' WHERE username='$user_liked'");
            $insert_user = mysqli_query($con, "INSERT INTO likes VALUES('', '$userLoggedIn', '$post_id')");
        }
        /* Unlike Buttom */
        if(isset($_POST['unlike_button'])) {
            $total_likes--;
            $query = mysqli_query($con, "UPDATE posts SET likes='$total_likes' WHERE id='$post_id'");
            $total_user_likes--;
            $user_likes_query = mysqli_query($con, "UPDATE users SET num_likes='$total_user_likes' WHERE username='$user_liked'");
            $insert_user = mysqli_query($con, "DELETE FROM likes WHERE username='$userLoggedIn' AND post_id='$post_id'");
        }
        
        /* Check For Previous Likes */
        $check_likes_query = mysqli_query($con, "SELECT * FROM likes WHERE username='$userLoggedIn' AND post_id='$post_id'");
        $check_likes_rows = mysqli_num_rows($check_likes_query);
        
        if ($check_likes_rows > 0) {
            echo "<form action='like.php?post_id=$post_id' class='like_form' method='POST'>
                    <input type='submit' class='post_like' name='unlike_button' value='(" . $total_likes . ")&nbsp;&nbsp;Unlike'>
                </form>";
        } else {
            echo "<form action='like.php?post_id=$post_id' class='like_form' method='POST'>
                    <input type='submit' class='post_like' name='like_button' value='(" . $total_likes . ")&nbsp;&nbsp;Like'>
                </form>";
        }
        ?>
        
        
    </body>
</html>
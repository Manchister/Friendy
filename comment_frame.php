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
        ?>
        <script>
//            function toggle() {
//                var element = document.getElementById("comment_section");
//
//                if (element.style.display === "block") {
//                    element.style.display = "none";
//                } else {
//                    element.style.display = "block";
//                }
//            }
        </script>

        <?php
//Get id of post
        if (isset($_GET['post_id'])) {
            $post_id = $_GET['post_id'];
        }

        $user_query = mysqli_query($con, "SELECT added_by, user_to FROM posts WHERE id='$post_id'");
        $row = mysqli_fetch_array($user_query);

        $posted_to = $row['added_by'];

        if (isset($_POST['postComment' . $post_id])) {
            $comment_body = $_POST['comment_body'];
            $comment_body = mysqli_escape_string($con, $comment_body);
            $date_time_now = date("Y-m-d H:i:s");
            $insert_post = mysqli_query($con, "INSERT INTO comments VALUES ('', '$comment_body', '$userLoggedIn', '$posted_to', '$date_time_now', 'no', '$post_id')");
            echo "<p style='text-align:center;color:green;'>Comment Posted! </p>";
        }
        ?>

        <div class="comment">
            <form action="comment_frame.php?post_id=<?php echo $post_id; ?>" id="comment_form"
                  name="postComment<?php echo $post_id; ?>" method="POST">
                <textarea name="comment_body" class="form-control"></textarea>
                <input type="submit" name="postComment<?php echo $post_id; ?>"
                       value="Comment" class="inputComment">
            </form>
        </div>

        <!-- Load comments -->
        <?php
        $get_comments = mysqli_query($con, "SELECT * FROM comments WHERE post_id='$post_id' ORDER BY id DESC");
        $count = mysqli_num_rows($get_comments);
        if ($count > 0) {
            while ($comment = mysqli_fetch_array($get_comments)) {
                $comment_body = $comment['post_body'];
                $posted_to = $comment['posted_to'];
                $posted_by = $comment['posted_by'];
                $date_added = $comment['date_added'];
                $removed = $comment['removed'];

                // Timestamp
                $date_time_now = date("Y-m-d H:i:s");
                $start_date = new DateTime($date_added);
                $end_date = new DateTime($date_time_now);
                $interval = $start_date->diff($end_date);
                if ($interval->y >= 1) {
                    if ($interval == 1) {
                        $time_message = $interval->y . " year ago.";
                    } else {
                        $time_message = $interval->y . " years ago.";
                    }
                } else if ($interval->m >= 1) {
                    if ($interval->d == 0) {
                        $days = " ago.";
                    } else if ($interval->d == 1) {
                        $days = $interval->d . " day ago.";
                    } else {
                        $days = $interval->d . " days ago.";
                    }

                    if ($interval->m == 1) {
                        $time_message = $interval->m . " month" . $days;
                    } else {
                        $time_message = $interval->m . " months" . $days;
                    }
                } else if ($interval->d >= 1) {
                    if ($interval->d == 1) {
                        $time_message = "Yesterday.";
                    } else {
                        $time_message = $interval->d . " days ago.";
                    }
                } else if ($interval->h >= 1) {
                    if ($interval->h == 1) {
                        $time_message = $interval->h . " hour ago.";
                    } else {
                        $time_message = $interval->h . " hours ago.";
                    }
                } else if ($interval->i >= 1) {
                    if ($interval->i == 1) {
                        $time_message = $interval->i . " minute ago.";
                    } else {
                        $time_message = $interval->i . " minutes ago.";
                    }
                } else {
                    if ($interval->s < 30) {
                        $time_message = "Just now.";
                    } else {
                        $time_message = $interval->s . " seconds ago.";
                    }
                }

                $user_obj = new User($con, $posted_by);
                ?>
                <div class="comment_section">
                    <div class="comment_info">
                        <a href="<?php echo $posted_by; ?>" target="_parent">
                            <img class="post_profile_pic" src="<?php echo $user_obj->getProfilePic(); ?>"
                                 title="<?php echo $posted_by; ?>" width="30" height="30">
                        </a>
                        <span class="posted_by">
                            <a href="<?php echo $posted_by; ?>" target="_parent">
                                <?php echo $user_obj->getFirstAndLastName(); ?>
                            </a>
                        </span>
                        <i class="time_msg"><?php echo $time_message; ?></i><br>
                    </div><br>
                    <div class="comment_body">
                        <?php echo $comment_body; ?>
                    </div>
                </div>
                <!--<hr style="width: 75%">-->
                <?php
            }
        } else {
            echo "<p class='noMore' style='text-align:center;'>No comments to show</p>";
        }
        ?>


    </body>
</html>
<?php

class Post {

    private $con;
    private $user_obj;

    public function __construct($con, $user) {
        $this->con = $con;
        $this->user_obj = new User($con, $user);
    }

    public function submitPost($body, $user_to, $imageName) {
        $body = strip_tags($body);
        $body = mysqli_real_escape_string($this->con, $body);
        $check_empty = preg_replace('/\s*/', '', $body);

        if ($check_empty != "") {

            $date_added = date("Y-m-d H:i:s");
            $added_by = $this->user_obj->getUsername();

            // if user is on own profile, user_to is 'none'
            if ($user_to == $added_by) {
                $user_to = "none";
            }

            // Insert Post
            $post_query = mysqli_query($this->con, "INSERT INTO posts VALUES('', '$body', '$imageName', '$added_by', '$user_to', '$date_added', 'no', 'no', '0')");
            $inserted_id = mysqli_insert_id($this->con);

            // Insert Notifications
            // Update post count for user
            $num_posts = $this->user_obj->getNumPosts();
            $num_posts++;
            $update_query = mysqli_query($this->con, "UPDATE users SET num_posts='$num_posts' WHERE username='$added_by'");
        }
    }

    public function loadPostsFriends($data, $limit) {
        $page = $data['page'];
        $userLoggedIn = $this->user_obj->getUsername();

        if ($page == 1) {
            $start = 0;
        } else {
            $start = ($page - 1) * $limit;
        }

        $str = "";
        $data_query = mysqli_query($this->con, "SELECT * FROM posts WHERE deleted='no' ORDER BY id DESC");

        if (mysqli_num_rows($data_query) > 0) {

            $num_iterations = 0; //Num of results checked (not necesserily posted)
            $count = 1;

            while ($row = mysqli_fetch_array($data_query)) {
                $id = $row['id'];
                $body = $row['body'];
                $added_by = $row['added_by'];
                $date_time = $row['date_added'];
                $imagePath = $row['image'];

                // Prepare user_to string, can be included even if not posted to a user.
                if ($row['user_to'] == "none") {
                    $user_to = "";
                } else {
                    $user_to_obj = new User($this->con, $row['user_to']);
                    $user_to_name = $user_to_obj->getFirstAndLastName();
                    $user_to = " to <a class='btn-default'  href='" . $row['user_to'] . "'>" . $user_to_name . "</a>";
                }

                // Check if the user who posted, account closed
                $added_by_obj = new User($this->con, $added_by);
                if ($added_by_obj->isClosed()) {
                    continue;
                }


                // Load Friends Posts Only
                $user_logged_obj = new User($this->con, $userLoggedIn);
                if ($user_logged_obj->isFriend($added_by)) {

                    if ($num_iterations++ < $start) {
                        continue;
                    }

                    // Once 10 posts loaded, Break.
                    if ($count > 10) {
                        break;
                    } else {
                        $count++;
                    }
                    
                    if($userLoggedIn == $added_by) {
                        $delete_button = "<button id='post$id' class='delete_btn btn btn-xs btn-danger '>X</button>";
                    } else {
                        $delete_button = "";
                    }


                    $user_details_query = mysqli_query($this->con, "SELECT first_name, last_name, profile_pic FROM users WHERE username='$added_by'");
                    $user_row = mysqli_fetch_array($user_details_query);
                    $first_name = $user_row['first_name'];
                    $last_name = $user_row['last_name'];
                    $profile_pic = $user_row['profile_pic'];
                    ?>

                    <script type="text/javascript">
                        function toggle<?php echo $id; ?>() {
                            var element = document.getElementById("toggleComment<?php echo $id; ?>");

                            if (element.style.display === "block") {
                                element.style.display = "none";
                            } else {
                                element.style.display = "block";
                            }
                        }
                    </script>

                    <?php
                    $comments_check = mysqli_query($this->con, "SELECT * FROM comments WHERE post_id='$id'");
                    $comments_check_num = mysqli_num_rows($comments_check);

                    // Timestamp
                    $date_time_now = date("Y-m-d H:i:s");
                    $start_date = new DateTime($date_time);
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
                    
                    if($imagePath != "") {
                        $imageDiv = "<div class='posted_image'>
                                        <img src='$imagePath' width='80%'>
                                    </div>";
                    } else {
                        $imageDiv = "";
                    }

                    $str .= "<div class='status_post panel panel-default'>
                        <div class='post_info'>
                            <a href='$added_by'>
                                <img class='post_profile_pic' src='$profile_pic' width='50' height='50'>
                            </a>
                            <span class='posted_by'>
                                <a class='btn-default' href='$added_by'>$first_name $last_name</a>$user_to
                            </span>
                            <i class='time_msg panel-title'>$time_message $delete_button</i>
                        </div>
                        <div id='post_body'>$imageDiv<br>$body<br></div>
                        <div class='post_details panel-heading'>
                            <div class='num_comments' onClick='javascript:toggle$id()'>Comments($comments_check_num)</div>
                            <div class='likes'>
                                <iframe src='like.php?post_id=$id' id='like_iframe'></iframe>
                            </div>
                        </div>
                        <div class='post_comment panel-footer' id='toggleComment$id' style='display:none;'>
                            <iframe src='comment_frame.php?post_id=$id' id='comment_iframe' frameborder='0'></iframe>
                        </div>
                    </div><br>";
                }
                ?>

                <script>
                    $(document).ready(function(){
                        $('#post<?php echo $id; ?>').on('click', function(){
                            bootbox.confirm("<center class='text-danger'>Are you sure to delete this post?</center>", function(result){
                                $.post("includes/form_handlers/delete_post.php?post_id=<?php echo $id; ?>", {result:result});
                                if(result) {
                                    location.reload();
                                }
                            });
                        });
                    });
                </script>

                <?php
            }

            if ($count > $limit) {
                $str .= "<input type='hidden' class='nextPage' value='" . ($page + 1) . "'><input type='hidden' class='noMorePosts' value='false'>";
            } else {
                $str .= "<input type='hidden' class='noMorePosts' value='true'><p class='noMore'>No more posts to show!!</p>";
            }
        }
        echo $str;
    }
    
    
    
    public function loadProfilePosts($data, $limit) {
        $page = $data['page'];
        $profileUsername = $data['profileUsername'];
        $userLoggedIn = $this->user_obj->getUsername();

        if ($page == 1) {
            $start = 0;
        } else {
            $start = ($page - 1) * $limit;
        }

        $str = "";
        $data_query = mysqli_query($this->con, "SELECT * FROM posts WHERE deleted='no' AND ((added_by='$profileUsername' AND user_to='none') OR user_to='$profileUsername') ORDER BY id DESC");

        if (mysqli_num_rows($data_query) > 0) {

            $num_iterations = 0; //Num of results checked (not necesserily posted)
            $count = 1;

            while ($row = mysqli_fetch_array($data_query)) {
                $id = $row['id'];
                $body = $row['body'];
                $added_by = $row['added_by'];
                $date_time = $row['date_added'];
                $imagePath = $row['image'];
                
                
                    if ($num_iterations++ < $start) {
                        continue;
                    }

                    // Once 10 posts loaded, Break.
                    if ($count > 10) {
                        break;
                    } else {
                        $count++;
                    }
                    
                    if($userLoggedIn == $added_by) {
                        $delete_button = "<button id='post$id' class='delete_btn btn btn-xs btn-danger '>X</button>";
                    } else {
                        $delete_button = "";
                    }


                    $user_details_query = mysqli_query($this->con, "SELECT first_name, last_name, profile_pic FROM users WHERE username='$added_by'");
                    $user_row = mysqli_fetch_array($user_details_query);
                    $first_name = $user_row['first_name'];
                    $last_name = $user_row['last_name'];
                    $profile_pic = $user_row['profile_pic'];
                    ?>

                    <script type="text/javascript">
                        function toggle<?php echo $id; ?>() {
                            var element = document.getElementById("toggleComment<?php echo $id; ?>");

                            if (element.style.display === "block") {
                                element.style.display = "none";
                            } else {
                                element.style.display = "block";
                            }
                        }
                    </script>

                    <?php
                    $comments_check = mysqli_query($this->con, "SELECT * FROM comments WHERE post_id='$id'");
                    $comments_check_num = mysqli_num_rows($comments_check);

                    // Timestamp
                    $date_time_now = date("Y-m-d H:i:s");
                    $start_date = new DateTime($date_time);
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
                    
                    if($imagePath != "") {
                        $imageDiv = "<div class='posted_image'>
                                        <img src='$imagePath' width='80%'>
                                    </div>";
                    } else {
                        $imageDiv = "";
                    }

                    $str .= "<div class='status_post'>
                        <div class='post_info'>
                            <a href='$added_by'>
                                <img class='post_profile_pic' src='$profile_pic' width='50' height='50'>
                            </a>
                            <span class='posted_by'>
                                <a class='btn-default' href='$added_by'>$first_name $last_name</a>
                            </span>
                            <i class='time_msg'>$time_message $delete_button</i>
                        </div>
                        <div id='post_body'>$imageDiv<br>$body<br></div>
                        <div class='post_details'>
                            <div class='num_comments' onClick='javascript:toggle$id()'>Comments($comments_check_num)</div>
                            <div class='likes'>
                                <iframe src='like.php?post_id=$id' id='like_iframe'></iframe>
                            </div>
                        </div>
                        <div class='post_comment' id='toggleComment$id' style='display:none;'>
                            <iframe src='comment_frame.php?post_id=$id' id='comment_iframe' frameborder='0'></iframe>
                        </div>
                    </div><br>";
                
                ?>

                <script>
                    $(document).ready(function(){
                        $('#post<?php echo $id; ?>').on('click', function(){
                            bootbox.confirm("<center class='text-danger'>Are you sure to delete this post?</center>", function(result){
                                $.post("includes/form_handlers/delete_post.php?post_id=<?php echo $id; ?>", {result:result});
                                if(result) {
                                    location.reload();
                                }
                            });
                        });
                    });
                </script>

                <?php
            }

            if ($count > $limit) {
                $str .= "<input type='hidden' class='nextPage' value='" . ($page + 1) . "'><input type='hidden' class='noMorePosts' value='false'>";
            } else {
                $str .= "<input type='hidden' class='noMorePosts' value='true'><p class='noMore'>No more posts to show!!</p>";
            }
        }
        echo $str;
    }

}

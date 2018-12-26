<?php
include("includes/header.php");

if (isset($_GET['profile_username'])) {
    $username = $_GET['profile_username'];
    $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$username' AND user_closed='no'");
    $user_array = mysqli_fetch_array($user_details_query);
    $user_details_row = mysqli_num_rows($user_details_query);

    $profile_pic = $user_array['profile_pic'];
    $profile_username = $user_array['username'];
    $num_friends = (substr_count($user_array['friend_array'], ",")) - 1;
}
if ($user_details_row === 0) {
    header("Location: notUser.php");
}


if (isset($_POST['remove_friend'])) {
    $user_obj = new User($con, $userLoggedIn);
    $user_obj->removeFriend($profile_username);
}
if (isset($_POST['add_friend'])) {
    $user_obj = new User($con, $userLoggedIn);
    $user_obj->sendRequest($profile_username);
}
if (isset($_POST['respond_request'])) {
    header("Location: requests.php");
}

$message_obj = new Message($con, $userLoggedIn);
if (isset($_POST['send_message'])) {

    if (isset($_POST['message_body'])) {
        $body = mysqli_real_escape_string($con, $_POST['message_body']);
        $date = date("Y-m-d H:i:s");
        $message_obj->sendMessage($profile_username, $body, $date);
    }

    $link = '#profileTabs a[href="#messages_tab"]';
    echo "<script>
            $(function() {
                $('" . $link . "').tab('show');
            });
         </script>";
    
}

?>

<div class="main">

    
    <div class="l-column">
        <div class="user_details">
            <a href="<?php echo $profile_username; ?>">
                <img id="profile_pic_id" src="<?php echo $profile_pic; ?>"/>
            </a>
            <a class="btn-default" href="<?php echo $profile_username; ?>">
                <span>
                    <?php echo $user_array['first_name'] . " " . $user_array['last_name']; ?>
                </span>
            </a><br>
            <ul class="profile_details_ul">
                <li>
                    <?php
                    $profile_user_obj = new User($con, $username);
                    $loggedIn_user_obj = new User($con, $userLoggedIn);

                    if ($userLoggedIn != $username) {
                        echo 'Mutual Friends: (' . $loggedIn_user_obj->getMutualFriends($profile_username) . ')';
                    }
                    ?>
                </li>
                <li>
                    <?php echo "Friends: (" . $num_friends . ")"; ?>
                </li>
                <li>
                    <?php echo "Posts:  (" . $user_array['num_posts'] . ")"; ?>
                </li>
                <li>
                    <?php echo "Likes:  (" . $user_array['num_likes'] . ")"; ?>
                </li>
            </ul><br>
        </div>
        <div class="profile_commands">
            <ul class="profile_commands_ul">
                <li>
                    <form action="<?php echo $username; ?>" method="POST">
                        <?php
                        if ($userLoggedIn != $username) {
                            
                            
                            if ($loggedIn_user_obj->isFriend($username)) {
                                echo '<input type="submit" name="remove_friend" class="btn btn-danger fr-btns" value="Unfriend"><br>';
                            } elseif ($loggedIn_user_obj->didRecieveRequest($username)) {
                                echo '<input type="submit" name="respond_request" class="btn btn-warning fr-btns" value="Accept Friend"><br>';
                            } elseif ($loggedIn_user_obj->didSendRequest($username)) {
                                echo '<input type="submit" name="" class="btn btn-default fr-btns" value="Request Sent"><br>';
                            } else {
                                echo '<input type="submit" name="add_friend" class="btn btn-success fr-btns" value="Add Friend"><br>';
                            }
                            
                            
                        }
                        ?>
                    </form>
                </li>
                <?php if ($userLoggedIn != $username) {
                    if ($loggedIn_user_obj->isFriend($username)) { ?>
                <li>
                    <input type="submit" class="btn btn-info" data-toggle="modal" data-target="#post_form"
                        value="Post to <?php echo $user_array['first_name']; ?>">
                </li>
                <?php } } if ($userLoggedIn == $username) { ?>
                <li>
                    <input type="submit" class="btn btn-info" data-toggle="modal" data-target="#post_form"
                               value="Post as <?php echo $user_array['first_name']; ?>">
                </li>
                <?php } ?>
                
            </ul>
        </div>

        <!-- POST MODAL -->
        <div class="modal fade" id="post_form" tabindex="-1" role="dialog" aria-labelledby="postModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&timesb;</span>
                        </button>
                        <h4 class="modal-title text-info text-center text-capitalize">Post something to <?php echo $user_array['first_name']; ?></h4>
                        <h5 id="modalInfo" class="text-warning text-center">This will appear on <?php echo $user_array['first_name']; ?>'s profile and you for your friends to see.</h5>
                    </div>

                    <div class="modal-body">
                        <form class="profile_post" action="" method="POST">
                            <div class="form-group">
                                <textarea class="form-control" name="post_body"></textarea>
                                <input type="hidden" name="user_from" value="<?php echo $userLoggedIn; ?>">
                                <input type="hidden" name="user_to" value="<?php echo $profile_username; ?>">
                            </div>
                        </form>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="button" class="btn btn-primary" name="post_to_buttom" id="post_to_submit">Post</button>
                    </div>

                </div>
            </div>
        </div>


    </div>

    
    <div class="m-column">

        <ul class="nav nav-tabs" role="tablist" id="profileTabs">
            <li role="presentation" class="active"><a href="#posts_tab" aria-controls="posts_tab" role="tab" data-toggle="tab">Posts</a></li>
            <li role="presentation"><a href="#messages_tab" aria-controls="messages_tab" role="tab" data-toggle="tab">Messages</a></li>
        </ul>

        <div class="tab-content">

            <div role="tabpanel" class="post tab-pane fade in active" id="posts_tab">
                <div class="posts"></div>

                <img id="loading" src="assets/img/icons/loading.gif">
                
            </div>


            <div role="tabpanel" class="tab-pane fade" id="messages_tab">

                <div class="panel panel-danger">
                    
                    <h4 class="panel-heading text-center">
                        <?php
                        echo "You and <a class='btn-link btn-success' href='$username'>" . $profile_user_obj->getFirstAndLastName() . "</a>";
                        ?>
                    </h4>
                    
                    <div class="panel-body msgs_container" id="msgs_container">
                        <?php
                        echo $message_obj->getMessages($username);
                        ?>
                    </div>

                    <div class="panel-footer">
                        <form action="" method="POST" class="form-horizontal" style="max-width: 500px;">
                            <?php
                            echo "<textarea name='message_body' id='message_textarea' class='form-control' placeholder='.. Write your message ..'></textarea><br>";
                            echo '<input type="submit" id="send_message" name="send_message" value="Send" style="height: 40px;" class="form-control btn btn-lg inputPost"/>';
                            ?>
                        </form>
                    </div>
                    
                    <script>
                        var msgs = document.getElementById("msgs_container");
                        msgs.scrollTop = msgs.scrollHeight;
                    </script>

                </div>

            </div>

        </div>


    </div>

<!--    <div class="r-column">

    </div>-->
</div>


<script>
    var userLoggedIn = '<?php echo $userLoggedIn; ?>';
    var profileUsername = '<?php echo $username; ?>';

    $(document).ready(function () {

        $('#loading').show();

        //Original ajax request for loading first posts 
        $.ajax({
            url: "includes/handlers/ajax_load_profile_posts.php",
            type: "POST",
            data: "page=1&userLoggedIn=" + userLoggedIn + "&profileUsername=" + profileUsername,
            cache: false,
            success: function (data) {
                $('#loading').hide();
                $('.posts').html(data);
            }
        });

        $(window).scroll(function () {
            var height = $('.posts').height(); //Div containing posts
            var scroll_top = $(this).scrollTop();
            var page = $('.posts').find('.nextPage').val();
            var noMorePosts = $('.posts').find('.noMorePosts').val();

            if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
                $('#loading').show();

                var ajaxReq = $.ajax({
                    url: "includes/handlers/ajax_load_profile_posts.php",
                    type: "POST",
                    data: "page=" + page + "&userLoggedIn=" + userLoggedIn + "&profileUsername=" + profileUsername,
                    cache: false,
                    success: function (response) {
                        $('.posts').find('.nextPage').remove(); //Removes current .nextpage 
                        $('.posts').find('.noMorePosts').remove(); //Removes current .nextpage 

                        $('#loading').hide();
                        $('.posts').append(response);
                    }
                });

            } //End if 

            return false;

        }); //End (window).scroll(function())


    });

</script>
<?php include './includes/footer.php'; ?>
<?php
require 'config/config.php';
include("includes/classes/User.php");
include("includes/classes/Post.php");
include("includes/classes/Message.php");


if (isset($_SESSION['username'])) {
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
    $my_friends_num = (substr_count($user['friend_array'], ",")) - 1;
    $user_fn = $user['first_name'];
    $profile_pic = $user['profile_pic'];
} else {
    header("Location: register.php");
}


$success_panel_1 = '<div class="panel panel-success"><h4 class="text-center text-success panel-heading">'
        . '<i class="fa fa-check-square"></i> ';
$success_panel_2 = '<br><br></h5></div>';
$fail_panel_1 = '<div class="panel panel-danger"><h4 class="text-center text-danger panel-heading">'
        . '<i class="fa fa-info-circle"></i> ';
$fail_panel_2 = '<br><br></h5></div>';
?>


<!-- <!DOCTYPE html> -->
<html>

    <head>
        <title>Welcome to Friendy</title>

        <!-- Javascript -->
        <script src="assets/js/jquery-2.1.4.min.js"></script>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/bootbox.min.js"></script>
        <script src="assets/js/master.js"></script>
        <script src="assets/js/jquery.Jcrop.js"></script>
        <script src="assets/js/jcrop_bits.js"></script>



        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <!--<link rel="stylesheet" type="text/css" href="assets/css/mdb.min.css">-->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.Jcrop.css">
    </head>

    <body class="not_iframe_body">

        <div class="top_bar">

            <nav class="navbar-fixed-top">

                <div class="logo">
                    <a href="index.php"><i class="fa fa-home fa-lg"></i>&nbsp;Friendy</a>
                </div>

                <?php
                    // Unread Msgs
                    $msgs_obj = new Message($con, $userLoggedIn);
                    $msgs_num = $msgs_obj->getUnreadMsgsNumber();
                ?>

                <div class="top_bar_links">

                    <a href="<?php echo $userLoggedIn; ?>">
                        <span>
                            <?php echo $user_fn; ?>
                        </span>
                    </a>

                    <a href='javascript:void(0);' onclick='getDropdownData("<?php echo $userLoggedIn; ?>", "messages")'
                       class="dropdown" data-toggle="dropdown" data-target="#dropdown_data_window">
                        <i class="fa fa-envelope fa-lg"></i>
                        <?php
                            if ($msgs_num > 0) {
                                echo '<span class="badge notification_badge" id="unread_msgs"'
                                . 'style="background-color:#C00;opacity:1;top:2px;left:8px;position:absolute;">'
                                . $msgs_num . '</span>';
                            }
                        ?>

                    </a>

                    <a href="#"><i class="fa fa-bell-o fa-lg"></i></a>

                    <a href="#"><i class="fa fa-users"></i></a>

                    <a href="settings.php"><i class="fa fa-cogs"></i></a>

                    <a href="includes/handlers/logout_handler.php"><i class="fa fa-sign-out fa-lg"></i></a>

                </div>


            </nav>


            <div class="dropdown_data_window" id="dropdown_data_window" style="height:0px; border:none;"></div><br>
            <input type="hidden" id="dropdown_data_type" value="">

            <script>
        var userLoggedIn = '<?php echo $userLoggedIn; ?>';

        $(document).ready(function () {

            $('.dropdown_data_window').scroll(function () {
                var innerheight = $('.dropdown_data_window').innerHeight(); //Div containing posts
                var data_scroll_top = $('.dropdown_data_window').scrollTop();
                var data_page = $('.dropdown_data_window').find('.nextPageDropdownData').val();
                var noMoreData = $('.dropdown_data_window').find('.noMoreDropdownData').val();

                if (((data_scroll_top + innerheight) >= $('.dropdown_data_window')[0].scrollHeight) && noMoreData === 'false') {
                    
                    var fileName;
                    var dataType = $('#dropdown_data_type').val();
                    
                    if(dataType === 'notifications') {
                        fileName = 'ajax_load_notifications.php';
                    } else if(dataType === 'messages') {
                        fileName = 'ajax_load_messages.php';
                    }
                    
                    var ajaxReq_data = $.ajax({
                        url: "includes/handlers/" + fileName,
                        type: "POST",
                        data: "page=" + data_page + "&userLoggedIn=" + userLoggedIn,
                        cache: false,
                        success: function (res) {
                            $('.dropdown_data_window').find('.nextPageDropdownData').remove(); //Removes current .nextpage 
                            $('.dropdown_data_window').find('.noMoreDropdownData').remove(); //Removes current .nextpage 

                            $('.dropdown_data_window').append(res);
                        }
                    });

                } //End if 

                return false;

            }); //End (window).scroll(function())


        });

        </script>
        </div>

        
<?php
include("includes/header.php");
?>

<div class="main">

    <div class="l-column">
        <?php include_once './includes/l-column.php'; ?>
    </div>

    <div class="m-column">
        <div class="panel panel-primary">
            <h4 class="panel-heading text-center">Friend Requests</h4>
            <div class="panel-body">
                <?php
                $friend_requests_query = mysqli_query($con, "SELECT * FROM friend_requests WHERE user_to='$userLoggedIn'");

                if (mysqli_num_rows($friend_requests_query) == 0) {
                    echo '<h5 class="text-danger text-center"><b>' . $user_fn . '</b>, You have no Friend Requests at this time!</h5>';
                } else {

                    echo '<ul>';

                    while ($rows = mysqli_fetch_array($friend_requests_query)) {

                        $user_from = $rows['user_from'];
                        $user_from_obj = new User($con, $user_from);
                        $user_from_friend_array = $user_from_obj->getFriendArray();
                        $AI_form = '<form action="requests.php" method="POST">'
                                . '<input type="submit" name="accept_request' . $user_from
                                . '" value="Accept" class="btn btn-success btn-sm" style="float:right;">'
                                . '<input type="submit" name="ignore_request' . $user_from
                                . '" value="Ignore" class="btn btn-danger btn-sm" style="float:right;"></form>';

                        echo '<li style="display:flex;align-items:space-between" class="text-info"><b><a class="btn-info" href="'
                        . $user_from . '" style="padding:5px;float:left;">' . $user_from_obj->getFirstAndLastName()
                        . '</a></b><i>' . $AI_form . '</i></li><br>';

                        
                        if (isset($_POST['accept_request' . $user_from])) {
                            $add_friend_query = mysqli_query($con, "UPDATE users SET friend_array=CONCAT(friend_array, '$user_from,') WHERE username='$userLoggedIn'");
                            $add_friend_query = mysqli_query($con, "UPDATE users SET friend_array=CONCAT(friend_array, '$userLoggedIn,') WHERE username='$user_from'");
                            $delete_query = mysqli_query($con, "DELETE FROM friend_requests WHERE user_to='$userLoggedIn' AND user_from='$user_from'");
                            echo "You are now friends!";
                            header("Location: requests.php");
                        }
                        if (isset($_POST['ignore_request' . $user_from])) {
                            $delete_query = mysqli_query($con, "DELETE FROM friend_requests WHERE user_to='$userLoggedIn' AND user_from='$user_from'");
                            echo "Request ignored!";
                            header("Location: requests.php");
                        }
                    }

                    echo '</ul>';
                }
                ?>
            </div>
            <h4 class="panel-footer text-center"><a href="index.php">Go back here.</a></h4>
        </div>
    </div>

    <div class="r-column">

    </div>
</div>

<?php include './includes/footer.php'; ?>
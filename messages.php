<?php
include("includes/header.php");

$message_obj = new Message($con, $userLoggedIn);

if (isset($_GET['u'])) {
    $user_to = $_GET['u'];
} else {
    $user_to = $message_obj->getMostRecentUser();
    if ($user_to == false) {
        $user_to = 'new';
    }
}

if ($user_to != "new") {
    $user_to_obj = new User($con, $user_to);
}

if (isset($_POST['send_message'])) {

    if (isset($_POST['message_body'])) {
        $body = mysqli_real_escape_string($con, $_POST['message_body']);
        $date = date("Y-m-d H:i:s");
        $message_obj->sendMessage($user_to, $body, $date);
    }
}
?>



<div class="main">

    <div class="l-column conversations">
        <?php // include_once './includes/l-column.php'; ?>
        
        <div class="panel panel-primary" id="new_msg">
            <div class="panel-body ">
                <a href="messages.php?u=new">
                    <input type="submit" value="New Message" style="height: 60px;" class="form-control btn btn-lg inputPost"/>
                </a>
            </div>
        </div>
        
        <div class="panel panel-primary" id="conversations">
            <h5 class="panel-heading text-center">Recent Conversations</h5>
            <div class="panel-body ">
                <?php echo $message_obj->getConversations(); ?>
            </div>
        </div>
        
    </div>

    <div class="m-column">
        <div class="panel panel-primary">
            <h4 class="panel-heading text-center">Messages</h4>
            <div class="panel-body">

                <div class="form-horizontal panel panel-danger">
                    <h5 class="panel-heading text-center">
                        <?php
                        if ($user_to != "new") {
                            echo "You and <a class='btn-link btn-success' href='$user_to'>" . $user_to_obj->getFirstAndLastName() . "</a>";
                        } else {
                            echo 'New Message<br><br>';
                        }
                        ?>
                    </h5>

                    <div class="panel-body msgs_container" id="msgs_container">
                        <?php
                        if ($user_to != "new") {
                            echo $message_obj->getMessages($user_to);
                        }
                        ?>
                    </div>
                    
                    <div class="panel-footer">
                        <form action="" method="POST" class="form-horizontal" style="max-width: 500px;">

                            <?php
                            if ($user_to == "new") {
                                echo "<h5 class='text-center text-danger bg-info'><br>Select the friend you would like to message <br><br><h5>";
                                ?> 
                            
                                <input type='text' onkeyup='getUsers(this.value, "<?php echo $userLoggedIn; ?>")' name='q' placeholder=' Search friends' autocomplete='off' id='seach_text_input'>

                                <?php
                                $displayResults = "<br><div class='panel panel-success searchResultContainer'><div class='panel-body results'></div></div>";
                            } else {
                                $displayResults = "";
                                echo "<textarea name='message_body' id='message_textarea' class='form-control' placeholder='.. Write your message ..'></textarea><br>";
                                echo '<input type="submit" id="send_message" name="send_message" value="Send" style="height: 40px;" class="form-control btn btn-lg inputPost"/>';
                            }
                            ?>

                        </form>
                        <?php echo $displayResults; ?>
                    </div>
                    
                </div>

            </div>
            <h5 class="panel-footer text-center"><a href="index.php">Go back here.</a></h5>
        </div>
    </div>

    <!--    <div class="r-column">
    
        </div>-->
</div>

<script>
    var msgs = document.getElementById("msgs_container");
    msgs.scrollTop = msgs.scrollHeight;
</script>

<?php include './includes/footer.php'; ?>
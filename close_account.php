<?php
include("includes/header.php");

if(isset($_POST['cancel_close'])) {
    header("Location: settings.php");
}

if(isset($_POST['close_sure'])) {
    $close_query = mysqli_query($con, "UPDATE users SET user_closed='yes' WHERE username='$userLoggedIn'");
    session_destroy();
    header("Location: register.php");
}

?>


<div class="main">
    

    <div class="l-column">
        <?php include_once './includes/l-column.php'; ?>
    </div>
    

    <div class="m-column">
        
        <div class="panel panel-primary">
            
            <h4 class="panel-heading text-center">Close Account</h4>
            
            <div class="panel-body">
                
                <?php
                $close_account_msg = $fail_panel_1
                        . 'Closing your account will hide your profile and all your activities from other users.<br>'
                        . 'You can re-open your account at any time by simple logging in.<br><br>'
                        . 'So, Are you sure you want to close your acount?' . $fail_panel_2;
                echo $close_account_msg;
                ?>
                
                
                <form action="close_account.php" method="POST" role="form" class="form-horizontal panel panel-info ">
                    
                    <div class="panel-footer">

                        <div class="form-group" style="margin-bottom: 1px;">
                            <input type="submit" id="close_sure" name="close_sure" value="Yes Close it"
                                   style="height: 40px;" class="form-control btn btn-lg btn-danger"/>
                            <input type="submit" id="update_details" name="cancel_close" value="No, Cancel"
                                   style="height: 40px;" class="form-control btn btn-lg btn-success"/>
                        </div>

                    </div>
                    
                </form>
                
            </div>
            
        </div>

    </div>
    
    
</div>
<?php include './includes/footer.php'; ?>
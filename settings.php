<?php
include("includes/header.php");
include("includes/handlers/settings_handler.php");
?>

<?php
$user_data_query = mysqli_query($con, "SELECT first_name, last_name, email FROM users WHERE username='$userLoggedIn'");
$user_data_row = mysqli_fetch_array($user_data_query);
$first_name = $user_data_row['first_name'];
$last_name = $user_data_row['last_name'];
$email = $user_data_row['email'];
?>

<div class="main">
    

    <div class="l-column">
        <?php include_once './includes/l-column.php'; ?>
    </div>
    

    <div class="m-column">
        
        <div class="panel panel-primary panel-group">
            
            <h4 class="panel-heading text-center">Account Settings</h4>

            <div class="panel-body">
                
                <?php echo $msg; ?>
                <?php echo $pass_msg; ?>

                <div class="form-horizontal panel panel-info update_profile_pic">
                    <div class="panel-heading text-center" style="margin-bottom: 10px;">
                        <h5 class="text-center">Upload New Profile Image</h5>
                    </div>
                    
                    <div class="panel-body">
                        <h5 class="text-warning">
                            <i class="fa fa-question-circle fa-xs"></i>
                            <i>Click the image to change..</i>
                        </h5>
                        <a href="uploadImg.php" class="">
                        <?php
                        echo "<img src='" . $user['profile_pic'] . "' id='small_profile_pic'>";
                        ?>
                        </a>
                    </div>
                </div>

                <br><br>
                
                <form action="settings.php" method="POST" role="form" class="form-horizontal panel panel-info">

                    <div class="panel-heading text-center" style="margin-bottom: 20px;">
                        <h5 class="text-center">Update Details</h5>
                    </div>
                    
                    <div class="panel-body">

                        <div class="form-group">
                            <label for="first_name" class="col-sm-4"><b class="h5 text-primary">First Name:</b></label>
                            <div class="col-sm-8">
                                <input type="text" name="first_name" class="form-control text-center"
                                       value="<?php echo $first_name; ?>"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="last_name" class="col-sm-4"><b class="h5 text-primary">Last Name:</b></label>
                            <div class="col-sm-8">
                                <input type="text" name="last_name" class="form-control text-center"
                                       value="<?php echo $last_name; ?>"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-sm-4"><b class="h5 text-primary">Email:</b></label>
                            <div class="col-sm-8">
                                <input type="text" name="email" class="form-control text-center"
                                       value="<?php echo $email; ?>"/>
                            </div>
                        </div>

                    </div>
                    
                    <div class="panel-footer">

                        <div class="form-group" style="margin-bottom: 1px;">
                                <input type="submit" id="update_details" name="update_details" value="Update"
                                       style="height: 40px;" class="form-control btn btn-lg btn-primary"/>
                        </div>

                    </div>
                    
                </form>

                <br><br>
                
                <form action="settings.php" method="POST" role="form" class="form-horizontal panel panel-info ">

                    <div class="panel-heading text-center" style="margin-bottom: 20px;">
                        <h5 class="text-center">Change Password</h5>
                    </div>
                    
                    <div class="panel-body">

                        <div class="form-group">
                            <label for="old_pass" class="col-sm-4"><b class="h5 text-primary">Old Password:</b></label>
                            <div class="col-sm-8">
                                <input type="password" name="old_pass" class="form-control text-center"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="new_pass" class="col-sm-4"><b class="h5 text-primary">New Password:</b></label>
                            <div class="col-sm-8">
                                <input type="password" name="new_pass" class="form-control text-center"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="new_pass_c" class="col-sm-4"><b class="h5 text-primary">Confirm Password:</b></label>
                            <div class="col-sm-8">
                                <input type="password" name="new_pass_c" class="form-control text-center"/>
                            </div>
                        </div>

                    </div>
                    
                    <div class="panel-footer">

                        <div class="form-group" style="margin-bottom: 1px;">
                                <input type="submit" id="change_password" name="change_password" value="Change Password"
                                       style="height: 40px;" class="form-control btn btn-lg btn-warning"/>
                        </div>

                    </div>
                    
                </form>

                <br><br>
                
                <form action="settings.php" method="POST" role="form" class="form-horizontal panel panel-danger ">

                    <div class="panel-heading text-center">
                        <h5 class="text-center">CLOSE ACCOUNT</h5>
                    </div>
                    
                    <div class="panel-footer">

                        <div class="form-group" style="margin-bottom: 1px;">
                                <input type="submit" id="close_account" name="close_account" value="Close Account"
                                       style="height: 40px;" class="form-control btn btn-lg btn-danger"/>
                        </div>

                    </div>
                    
                </form>
                
            </div>
            
            <h5 class="panel-footer text-center"><a href="index.php">Go back here.</a></h5>
        
        </div>

    </div>
    
    
    
</div>
<?php include './includes/footer.php'; ?>
<?php

/** UPDATE DETAILS */
if(isset($_POST['update_details'])) {
    
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    
    $email_check = mysqli_query($con, "SELECT * FROM users WHERE email='$email'");
    $email_check_row = mysqli_fetch_array($email_check);
    $matched_user = $email_check_row['username'];
    
    if($matched_user == "" || $matched_user == $userLoggedIn) {
        $msg = $success_panel_1 . 'Details updated' . $success_panel_2;
        $query = mysqli_query($con, "UPDATE users SET first_name='$first_name', last_name='$last_name', email='$email' WHERE username='$userLoggedIn'");
    } else {
        $msg = $fail_panel_1 . 'The email is already in use' . $fail_panel_2;
    }
    
} else {
    $msg = "";
}


/** CHANGE PASSWORD */
if(isset($_POST['change_password'])) {
    
    $old_pass = strip_tags($_POST['old_pass']);
    $new_pass = strip_tags($_POST['new_pass']);
    $new_pass_c = strip_tags($_POST['new_pass_c']);
    
    $pass_query = mysqli_query($con, "SELECT password FROM users WHERE username='$userLoggedIn'");
    $pass_query_row = mysqli_fetch_array($pass_query);
    $db_pass = $pass_query_row['password'];
    
    if(md5($old_pass) == $db_pass) {
        
        if($new_pass == $new_pass_c) {
            
            if(strlen($new_pass) <= 4) {
                $pass_msg = $fail_panel_1 . 'Sorry, Your password must be greater than 4 characters.' . $fail_panel_2;
            } else {
                $new_pass_md5 = md5($new_pass);
                $change_pass_query = mysqli_query($con, "UPDATE users SET password='$new_pass_md5' WHERE username='$userLoggedIn'");
                $pass_msg = $success_panel_1 . 'Passwod has been changed succesfully' . $success_panel_2;
            }
            
        } else {
            $pass_msg = $fail_panel_1 . 'Your new Passwords must be matched.' . $fail_panel_2;
        }
        
    } else {
            $pass_msg = $fail_panel_1 . 'The old password is incorrect.' . $fail_panel_2;
    }
    
} else {
    $pass_msg = "";
}


/** CLOSE ACCOUNT */
if(isset($_POST['close_account'])) {
    header("Location: close_account.php");
}
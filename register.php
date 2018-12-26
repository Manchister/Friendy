<?php

require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Welcome to Friendy</title>

	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/register_style.css">

	<script type="text/javascript" src="assets/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="assets/js/register.js"></script>
</head>
<body>

	<?php
	if(isset($_POST['reg_button'])) {
		echo '
		<script>
			$(document).ready(function() {
				$("#form-first").hide();
				$("#form-second").show();
			});
		</script>
		';
	}
	?>

	<div class="wrapper">

		<div class="login_box">

			<div class="login_header">
				<h1>Friendy</h1>
				Login or Sign up below:
			</div>
			
			<div id="form-first">
				<form action="register.php" method="POST">
					<input type="email" name="log_email" placeholder="-- Email Address" id="log_input_frist" required
					value="<?php if(isset($_SESSION['log_email'])) { echo $_SESSION['log_email']; } ?>">
					<br>
					<input type="password" name="log_password" placeholder="-- Password" id="log_input_last" required>
					<br>
					<?php if(in_array("Email or Password was incorect<br/>", $err_array)) {
						echo "<i class='err-txt'>Email or Password was incorect</i><br/>";
					} ?>
					<input type="submit" name="log_button" value="Login" class="btn btn-warning">
					<br>
					<a href="#" id="signup" class="signup">Need an account? Register here!</a>
					<br>
				</form>
			</div>
			

			<div id="form-second">			
				<form action="register.php" method="POST">
					<input type="text" name="reg_fname" placeholder="-- First Name" id="sign_input_frist" required
					value="<?php if(isset($_SESSION['reg_fname'])) { echo $_SESSION['reg_fname']; } ?>">
					<br>
					<?php if(in_array("Your First Name must be between 2 and 25 characters<br/>", $err_array)) {
						echo "<i class='err-txt'>Your First Name must be between 2 and 25 characters</i><br/>";
					} ?>


					<input type="text" name="reg_lname" placeholder="-- Last Name" required
					value="<?php if(isset($_SESSION['reg_lname'])) { echo $_SESSION['reg_lname']; } ?>">
					<br>
					<?php if(in_array("Your Last Name must be between 2 and 25 characters<br/>", $err_array)) {
						echo "<i class='err-txt'>Your Last Name must be between 2 and 25 characters</i><br/>";
					} ?>


					<input type="email" name="reg_email" placeholder="-- Email" required
					value="<?php if(isset($_SESSION['reg_email'])) { echo $_SESSION['reg_email']; } ?>">
					<br>
					<?php if(in_array("Email already taken<br/>", $err_array)) {
						echo "<i class='err-txt'>Email already taken</i><br/>";
						} elseif(in_array("Invalid Email Format<br/>", $err_array)) {
							echo "<i class='err-txt'>Invalid Email Format</i><br/>";
						} elseif(in_array("Emails don't match<br/>", $err_array)) {
							echo "<i class='err-txt'>Emails don't match</i><br/>";
						} ?>


					<input type="email" name="reg_email2" placeholder="-- Confirm Email" required
					value="<?php if(isset($_SESSION['reg_email2'])) { echo $_SESSION['reg_email2']; } ?>">
					<br>


					<input type="password" name="reg_password" placeholder="-- Password" required>
					<br>
					<?php if(in_array("Your Password must bet between 5 and 38 length<br/>", $err_array)) {
						echo "<i class='err-txt'>Your Password must bet between 5 and 38 length</i><br/>";
						} elseif(in_array("Your Password can only contains characters or numbers<br/>", $err_array)) {
							echo "<i class='err-txt'>Your Password can only contains characters or numbers</i><br/>";
						} ?>


					<input type="password" name="reg_password2" placeholder="-- Confirm Password" id="sign_input_last" required>
					<br>
					<?php if(in_array("Your Passwords are not the same<br/>", $err_array)) {
						echo "<i class='err-txt'>Your Passwords are not the same</i><br/>";
					} ?>


					<input type="submit" name="reg_button" value="Register" class="btn btn-warning">
					<br>
					<a href="#" id="signin" class="signin">Already have an account? Sign in here!</a>
					<br>

					<?php if(in_array("You are all set, Goahead and Login", $err_array)) {
						echo "<span class='success-txt'>You are all set, Goahead and Login</span><br/>";
					} ?>

				</form>
			</div>

		</div>
		
	</div>

</body>
</html>
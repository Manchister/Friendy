<?php


// Declaring variables
$fname = "";
$lname = "";
$em = "";
$em2 = "";
$password = "";
$password2 = "";
$date = "";
$err_array = array();


// Registration Form Values
if(isset($_POST['reg_button'])) {

	// First Name
	$fname = strip_tags($_POST['reg_fname']);
	$fname = str_replace(' ', '', $fname);
	$fname = ucfirst(strtolower($fname));
	$_SESSION['reg_fname'] = $fname;

	// Last Name
	$lname = strip_tags($_POST['reg_lname']);
	$lname = str_replace(' ', '', $lname);
	$lname = ucfirst(strtolower($lname));
	$_SESSION['reg_lname'] = $lname;

	// Email
	$em = strip_tags($_POST['reg_email']);
	$em = str_replace(' ', '', $em);
	$em = ucfirst(strtolower($em));
	$_SESSION['reg_email'] = $em;

	// Email2
	$em2 = strip_tags($_POST['reg_email2']);
	$em2 = str_replace(' ', '', $em2);
	$em2 = ucfirst(strtolower($em2));
	$_SESSION['reg_email2'] = $em2;

	// Password
	$password = strip_tags($_POST['reg_password']);
	$password2 = strip_tags($_POST['reg_password2']);

	// Date
	$date = date("y-m-d");


	// Check Inputs Matching

	// Check Email
	if($em == $em2) {
		if(filter_var($em, FILTER_VALIDATE_EMAIL)) {

			$em = filter_var($em, FILTER_VALIDATE_EMAIL);

			$e_check = mysqli_query($con, "SELECT email FROM users WHERE email='$em'");
			$num_rows = mysqli_num_rows($e_check);
			if($num_rows > 0) {
				array_push($err_array, "Email already taken<br/>");
			}

		} else {
			array_push($err_array, "Invalid Email Format<br/>");
		}
	} else {
		array_push($err_array, "Emails don't match<br/>");
	}


	// Check First Name
	if(strlen($fname) > 25 || strlen($fname) < 2) {
		array_push($err_array, "Your First Name must be between 2 and 25 characters<br/>");
	}

	// Check last Name
	if(strlen($lname) > 25 || strlen($lname) < 2) {
		array_push($err_array, "Your Last Name must be between 2 and 25 characters<br/>");
	}


	// Check Password
	if($password != $password2) {
		array_push($err_array, "Your Passwords are not the same<br/>");
	} else {
		if (preg_match('/[^A-Za-z0-9]/', $password)) {
			array_push($err_array, "Your Password can only contains characters or numbers<br/>");
		}
	}

	if(strlen($password) > 38 || strlen($password) < 5) {
		array_push($err_array, "Your Password must bet between 5 and 38 length<br/>");
	}


	// Continue If No Errors

	if(empty($err_array)) {
		// Encrypt Password
		$password = md5($password);

		// Generating a Unique Username
		$username = strtolower($fname . "_" . $lname);
		$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
		$i = 0;
		while (mysqli_num_rows($check_username_query) != 0) {
			$i++;
			$username = strtolower($fname . "_" . $lname . "_" . $i);
			$check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
		}


		// Random Profile Picture
		$rand = mt_rand(1, 17);
		if($rand == 1) {
			$pic_name = "p01.png";
		} elseif($rand == 2) {
			$pic_name = "p02.png";
		} elseif($rand == 3) {
			$pic_name = "p03.png";
		} elseif($rand == 4) {
			$pic_name = "p04.png";
		} elseif($rand == 5) {
			$pic_name = "p05.png";
		} elseif($rand == 6) {
			$pic_name = "p06.png";
		} elseif($rand == 7) {
			$pic_name = "p07.png";
		} elseif($rand == 8) {
			$pic_name = "p08.png";
		} elseif($rand == 9) {
			$pic_name = "p09.png";
		} elseif($rand == 10) {
			$pic_name = "p10.png";
		} elseif($rand == 11) {
			$pic_name = "p11.png";
		} elseif($rand == 12) {
			$pic_name = "p12.png";
		} elseif($rand == 13) {
			$pic_name = "p13.png";
		} elseif($rand == 14) {
			$pic_name = "p14.png";
		} elseif($rand == 15) {
			$pic_name = "p15.png";
		} elseif($rand == 16) {
			$pic_name = "p16.png";
		} elseif($rand == 17) {
			$pic_name = "p17.png";
		}

		$profile_pic = "assets/img/profile_pics/defaults/" . $pic_name; 


		// Inserting Values into users Table
		$query = mysqli_query($con, "INSERT INTO users VALUES ('', '$fname', '$lname', '$username', '$em', '$password', '$date', '$profile_pic', '0', '0', 'no', ',')");


		// Push Success in the Error Array
		array_push($err_array, "You are all set, Goahead and Login");


		// Clear Session Variables
		$_SESSION['reg_fname'] = "";
		$_SESSION['reg_lname'] = "";
		$_SESSION['reg_email'] = "";
		$_SESSION['reg_email2'] = "";

		header("Location: register.php");
	}

}
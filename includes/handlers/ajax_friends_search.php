<?php

include("../../config/config.php");
include("../classes/User.php");
//include("../classes/Post.php");

$query = $_POST['query'];
$userLoggedIn = $_POST['userLoggedIn'];

$names = explode(" ", $query);

if(strpos($query, "_") !== false) {
    $usersReturned = mysqli_query($con, "SELECT * FROM users WHERE username LIKE '$query%' AND user_closed='no' LIMIT 8");
} elseif (count($names) == 2) {
    $usersReturned = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '%$names[0]%' AND last_name LIKE '%$names[1]%') AND user_closed='no' LIMIT 8");
} else {
    $usersReturned = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '%$names[0]%' OR last_name LIKE '%$names[0]%') AND user_closed='no' LIMIT 8");
}


if($query != "") {
	while($row = mysqli_fetch_array($usersReturned)) {

		$user = new User($con, $userLoggedIn);

		if($row['username'] != $userLoggedIn) {
			$mutual_friends = $user->getMutualFriends($row['username']) . " friends in common";
		}
		else {
			$mutual_friends = "";
		}

		if(($row['username'] != $userLoggedIn) && $user->isFriend($row['username'])) {
			echo "<a class='one-conversaion' href='messages.php?u=" . $row['username'] . "'><div class='searchResult text-center'><img src='"
                    . $row['profile_pic'] . "' class='post_profile_pic search_user_img' style='width:50;height:50;'><span class='btn-default'>"
                    . $row['first_name'] . " " . $row['last_name'] . "</span><span class='time_msg_sm text-danger'>"
                    . $mutual_friends . "</span><br></div></a>";

		}


	}
}
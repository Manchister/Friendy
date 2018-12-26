<?php

include("../../config/config.php");
include("../classes/User.php");
include("../classes/Message.php");

$limit = 7;

$messaage = new Message($con, $_REQUEST['userLoggedIn']);
echo $messaage->getMsgsDropdown($_REQUEST, $limit);

?>
<?php ?>

<div class="user_details">
    <a href="<?php echo $userLoggedIn; ?>">
        <img id="profile_pic_id" src="<?php echo $profile_pic; ?>"/>
    </a>
    <a class="btn-default" href="<?php echo $userLoggedIn; ?>">
        <span>
            <?php echo $user['first_name'] . " " . $user['last_name']; ?>
        </span>
    </a><br><br>
    <ul class="profile_details_ul">
        <li>
            <?php echo "Friends: (" . $my_friends_num . ")"; ?>
        </li>
        <li>
            <?php echo "Posts:  (" . $user['num_posts'] . ")"; ?>
        </li>
        <li>
            <?php echo "Likes:  (" . $user['num_likes'] . ")"; ?>
        </li>
    </ul>
</div>


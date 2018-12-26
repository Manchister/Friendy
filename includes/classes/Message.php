<?php

class Message {

    private $con;
    private $user_obj;
    private $otherUser_obj;

    public function __construct($con, $user) {
        $this->con = $con;
        $this->user_obj = new User($con, $user);
    }
    
    public function getMostRecentUser() {
        $userLoggedIn = $this->user_obj->getUsername();
        
        $query = mysqli_query($this->con, "SELECT user_to, user_from FROM messages WHERE user_to='$userLoggedIn' OR user_from='$userLoggedIn' ORDER BY id DESC LIMIT 1");
        
        
        if(mysqli_num_rows($query) == 0) {
            return false;
        }
        
        $row = mysqli_fetch_array($query);
        $user_to = $row['user_to'];
        $user_from = $row['user_from'];
        
        if($user_to != $userLoggedIn) {
            return $user_to;
        } else {
            return $user_from;
        }
    }
    
    
    public function sendMessage($user_to, $body, $date) {
        if ($body != "") {
            $userLoggedIn = $this->user_obj->getUsername();
            $query = mysqli_query($this->con, "INSERT INTO messages VALUES('', '$user_to', '$userLoggedIn', '$body', '$date', 'no', 'no', 'no')");
        }
    }
    
    
    public function getMessages($otherUser) {
        $userLoggedIn = $this->user_obj->getUsername();
        $data = "";
        
        $query = mysqli_query($this->con, "UPDATE messages SET opened='yes' WHERE user_to='$userLoggedIn' AND user_from='$otherUser'");
        $get_messages_query = mysqli_query($this->con, "SELECT * FROM messages WHERE (user_to='$userLoggedIn' AND user_from='$otherUser') "
                . "OR (user_to='$otherUser' AND user_from='$userLoggedIn')");
        
        while ($row = mysqli_fetch_array($get_messages_query)) {
            $user_to = $row['user_to'];
            $user_from = $row['user_from'];
            $body = $row['body'];

            $userLoggedIn_img = $this->user_obj->getProfilePic();
            $this->otherUser_obj = new User($this->con, $otherUser);
            $otherUser_img = $this->otherUser_obj->getProfilePic();
            
            
            if($user_to == $userLoggedIn) {
                $div_start = "<div class='msg_line'><a href='$otherUser'><img src='$otherUser_img' class='msg_user_img'></a><h6 class='message bg-danger'>";
                $div_end = "</h6></div><br>";
            } else {
                $div_start = "<div class='msg_line'><a href='$userLoggedIn'><img src='$userLoggedIn_img' class='msg_user_img'></a><h6 class='message bg-success'>";
                $div_end = "</h6></div><br>";
            }
            $data = $data . $div_start . $body . $div_end;
 
        }

        return $data;
    }

    
    public function getLatestMessage($userLoggedIn, $otherUser) {
        $details = array();

        $query = mysqli_query($this->con, "SELECT body, user_to, date FROM messages WHERE (user_to='$userLoggedIn' AND user_from='$otherUser')"
                . " OR (user_to='$otherUser' AND user_from='$userLoggedIn') ORDER BY id DESC LIMIT 1");
        $row = mysqli_fetch_array($query);

        $sent_by = ($row['user_to'] == $userLoggedIn) ? "They said: " : "You said: ";
        $body = $row['body'];
        $date_added = $row['date'];

        // Timestamp
        $date_time_now = date("Y-m-d H:i:s");
        $start_date = new DateTime($date_added);
        $end_date = new DateTime($date_time_now);
        $interval = $start_date->diff($end_date);
        
        if ($interval->y >= 1) {
            if ($interval == 1) {
                $time_message = $interval->y . " year ago.";
            } else {
                $time_message = $interval->y . " years ago.";
            }
        } else if ($interval->m >= 1) {
            if ($interval->d == 0) {
                $days = " ago.";
            } else if ($interval->d == 1) {
                $days = $interval->d . " day ago.";
            } else {
                $days = $interval->d . " days ago.";
            }

            if ($interval->m == 1) {
                $time_message = $interval->m . " month" . $days;
            } else {
                $time_message = $interval->m . " months" . $days;
            }
        } else if ($interval->d >= 1) {
            if ($interval->d == 1) {
                $time_message = "Yesterday.";
            } else {
                $time_message = $interval->d . " days ago.";
            }
        } else if ($interval->h >= 1) {
            if ($interval->h == 1) {
                $time_message = $interval->h . " hour ago.";
            } else {
                $time_message = $interval->h . " hours ago.";
            }
        } else if ($interval->i >= 1) {
            if ($interval->i == 1) {
                $time_message = $interval->i . " minute ago.";
            } else {
                $time_message = $interval->i . " minutes ago.";
            }
        } else {
            if ($interval->s < 30) {
                $time_message = "Just now.";
            } else {
                $time_message = $interval->s . " seconds ago.";
            }
        }
        
        array_push($details, $sent_by);
        array_push($details, $body);
        array_push($details, $time_message);
        
        return $details;
    }

    
    public function getConversations() {
        $userLoggedIn = $this->user_obj->getUsername();
        $return_str = "";
        $conversations = array();
        
        $query = mysqli_query($this->con, "SELECT user_to, user_from FROM messages WHERE user_to='$userLoggedIn' OR user_from='$userLoggedIn'");
        
        while ($row = mysqli_fetch_array($query)) {
            $user_to_push = ($row['user_to'] != $userLoggedIn) ? $row['user_to'] : $row['user_from'];
            
            if(!in_array($user_to_push, $conversations)) {
                array_push($conversations, $user_to_push);
            }
        }
        
        foreach ($conversations as $username) {
            $user_found_obj = new User($this->con, $username);
            $latest_msg_details = $this->getLatestMessage($userLoggedIn, $username);
            
            $dots = (strlen($latest_msg_details[1] >= 50)) ? "..." : "";
            $split = str_split($latest_msg_details[1], 50);
            $split = $split[0] . $dots;
            
            $return_str .= "<a class='one-conversaion' href='messages.php?u=$username'><div class='user_found_msgs text-center bg-warning'><img src='"
                    . $user_found_obj->getProfilePic() . "' class='msg_user_img' style='float:left;margin-top:0px'><span class='btn-default'>"
                    . $user_found_obj->getFirstAndLastName() . "</span><span class='time_msg_sm text-danger'>"
                    . $latest_msg_details[2] . "</span><br><p class='message' style='margin-left:0;'>" 
                    . $latest_msg_details[0] . $split . "</p></div></a><hr>";
        }
        
        return $return_str;
    }
    
    
    public function getMsgsDropdown($data, $limit) {
        $page = $data['page'];
        $userLoggedIn = $this->user_obj->getUsername();
        $return_str = "";
        $conversations = array();
        
        if($page == 1) {
            $start = 0;
        } else {
            $start = ($page - 1) * $limit;
        }
        
        $set_viewed_query = $query = mysqli_query($this->con, "UPDATE messages SET viewed='yes' WHERE user_to='$userLoggedIn' OR user_from='$userLoggedIn'");
        
        
        $query = mysqli_query($this->con, "SELECT user_to, user_from FROM messages WHERE user_to='$userLoggedIn' OR user_from='$userLoggedIn'");
        
        while ($row = mysqli_fetch_array($query)) {
            $user_to_push = ($row['user_to'] != $userLoggedIn) ? $row['user_to'] : $row['user_from'];
            
            if(!in_array($user_to_push, $conversations)) {
                array_push($conversations, $user_to_push);
            }
        }
        
        $num_iterations = 0;
        $count = 1;
        
        foreach ($conversations as $username) {
            
            if($num_iterations++ < $start) {
                continue;
            }
            if($count > $limit) {
                break;
            } else {
                $count++;
            }
            
            $is_unread_query = mysqli_query($this->con, "SELECT opened FROM messages WHERE user_to='$userLoggedIn' AND user_from='$username' ORDER BY messages.date DESC");
            $row = mysqli_fetch_array($is_unread_query);
            $style = ($row['opened'] == 'yes') ? "opacity:0.7;" : "";
        
            
            $user_found_obj = new User($this->con, $username);
            $latest_msg_details = $this->getLatestMessage($userLoggedIn, $username);
            
            $dots = (strlen($latest_msg_details[1] >= 50)) ? "..." : "";
            $split = str_split($latest_msg_details[1], 50);
            $split = $split[0] . $dots;
            
            $return_str .= "<a href='messages.php?u=$username'>
                                <div class='dropdown_item' style='$style' data-toggle='popover' data-placement='bottom' title='$username'>
                                    <img src='" . $user_found_obj->getProfilePic() . "' class='dropdown_msg_img' width='50px' height='50px'>
                                    <h5 class='dropdown_msg text-center'>" . $split .  "</h5>
                                    <span class='time_msg_sm text-danger'>" . $latest_msg_details[2] ."</span>
                                </div>
                            </a>";
        }
        
        if($count > $limit) {
            $return_str .= "<input type='hidden' class='nextPageDropdownData' value='" . ($page + 1) . "'/>
                            <input type='hidden' class='noMoreDropdownData' value='false'/>";
        } else {
            $return_str .= "<input type='hidden' class='noMoreDropdownData' value='true'/>
                            <p class='text-center'>No More Messages to load</p>";
        }
        
        return $return_str;
    }
    
    
    public function getUnreadMsgsNumber() {
        $userLoggedIn = $this->user_obj->getUsername();
        $query = mysqli_query($this->con, "SELECT * FROM messages WHERE viewed='no' AND user_to='$userLoggedIn'");
        return mysqli_num_rows($query);
    }
    
    
}




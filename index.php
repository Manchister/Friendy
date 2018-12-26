<?php
include("includes/header.php");

$err_msg = "";
//$imageName = "";
if (isset($_POST['post'])) {
    
    $uploadOk = 1;
    $err = "";
    $imageName = $_FILES['imageToUpload']['name'];

    if ($imageName != "") {
        $targetDir = "assets/img/posts_pics/";
        $imageName = $targetDir . uniqid() . basename($imageName);
        $imageFileType = pathinfo($imageName, PATHINFO_EXTENSION);

        if ($_FILES['imageToUpload']['size'] > 10000000) {
            $err = "Sorry your file is too large";
            $uploadOk = 0;
        }

        if ($uploadOk) {
            if (move_uploaded_file($_FILES['imageToUpload']['tmp_name'], $imageName)) {
                // UPLOADED
            } else {
                // UPLOAD ERROR
                $uploadOk = 0;
            }
        }
    }

    if ($uploadOk) {
        $post = new Post($con, $userLoggedIn);
        $post->submitPost($_POST['post_text'], 'none', $imageName);
        $err_msg = "";
    } else {
        $err_msg = $fail_panel_1 . "<div class='text-center alert alert-danger'>$err</div>" . $fail_panel_2;
    }
}
?>

<div class="main">

    <div class="l-column">
        <?php include_once './includes/l-column.php'; ?>
    </div>

    <div class="m-column">
        <div class="post">
            <?php echo $err_msg; ?>

            <form class="post_form" action="index.php" method="POST" enctype="multipart/form-data">
                <textarea name="post_text" id="post_text" class="form-control" placeholder="Your moments here to goooo!!"></textarea>
                <br>
                <div class="row">
                    <label for="imageToUpload" class="left col-lg-3">Add an image:</label>
                    <input type="file" accept="image/*" name="imageToUpload" id="imageToUpload" class="right col-lg-6">
                </div>
                <br>
                <hr style="background-color:#593392;">
                <input type="submit" name="post" id="post_button" value="Post" class="inputPost">
            </form>

            <div class="posts"></div>

            <?php
//                $post = new Post($con, $userLoggedIn);
//                $post->loadPostsFriends();
            ?>

            <!--<div class="posts_area"></div>-->



            <img id="loading" src="assets/img/icons/loading.gif">

        </div>
    </div>
<!--
    <div class="r-column">

    </div>-->


    <script>
        var userLoggedIn = '<?php echo $userLoggedIn; ?>';

        $(document).ready(function () {

            $('#loading').show();

            //Original ajax request for loading first posts 
            $.ajax({
                url: "includes/handlers/ajax_load_posts.php",
                type: "POST",
                data: "page=1&userLoggedIn=" + userLoggedIn,
                cache: false,
                success: function (data) {
                    $('#loading').hide();
                    $('.posts').html(data);
                }
            });

            $(window).scroll(function () {
                var height = $('.posts').height(); //Div containing posts
                var scroll_top = $(this).scrollTop();
                var page = $('.posts').find('.nextPage').val();
                var noMorePosts = $('.posts').find('.noMorePosts').val();

                if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
                    $('#loading').show();

                    var ajaxReq = $.ajax({
                        url: "includes/handlers/ajax_load_posts.php",
                        type: "POST",
                        data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
                        cache: false,
                        success: function (response) {
                            $('.posts').find('.nextPage').remove(); //Removes current .nextpage 
                            $('.posts').find('.noMorePosts').remove(); //Removes current .nextpage 

                            $('#loading').hide();
                            $('.posts').append(response);
                        }
                    });

                } //End if 

                return false;

            }); //End (window).scroll(function())


        });

    </script>

</div>
<?php include './includes/footer.php'; ?>
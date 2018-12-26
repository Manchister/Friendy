$(document).ready(function () {

    // messages dropdown popover
    $('.dropdown_item').popover('show');
    // Button for profile post
    $('#post_to_submit').click(function () {
        $.ajax({
            type: 'POST',
            url: "includes/handlers/ajax_submit_post_to_profile.php",
            data: $('form.profile_post').serialize(),
            success: function (msg) {
                $('#post_form').modal('hide');
                location.reload();
            },
            error: function () {
                $('#modalInfo').replaceWith('<hr class="dark"><br><h4 class="text-center text-danger">Failed to post, please try again.</h>').addClass('text-danger');
            }
        });
    });

});



function getUsers(value, user)
{
    $.post("includes/handlers/ajax_friends_search.php", {query: value, userLoggedIn: user},
            function (data) {
                $(".results").html(data);
            });
}
;



function getDropdownData(user, type) {

    if ($(".dropdown_data_window").css("height") === "0px") {
        var pageName;

        if (type === 'notifications') {

        } else if (type === 'messages') {
            pageName = "ajax_load_messages.php";
            $("span").remove("#unread_message");
        }

        var ajaxReq = $.ajax({
            url: "includes/handlers/" + pageName,
            type: "POST",
            data: "page=1&userLoggedIn=" + user,
            cache: false,
            success: function (response) {
                $(".dropdown_data_window").html(response);
                $(".dropdown_data_window").css({"padding": "0px", "height": "280px", "border": "1px solid #DADADA"});
                $("#dropdown_data_type").val(type);
            }
        });
    } else {
        $(".dropdown_data_window").html("");
        $(".dropdown_data_window").css({"padding": "0px", "height": "0px", "border": "none"});
    }

}
;


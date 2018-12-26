$(document).ready(function() {

	// On click #signup, hide #form-first and show #form-second
	$("#signup").click(function() {
		$("#form-first").slideUp("fast", function(){
			$("#form-second").slideDown("slow");
		});
	});

	// On click #signin, hide #form-second and show #form-first
	$("#signin").click(function() {
		$("#form-second").slideUp("fast", function(){
			$("#form-first").slideDown("show");
		});
	});

});
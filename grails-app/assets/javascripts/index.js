$(document).ready(function () {
  // Email validation
  $("#email").blur(function () {
    var email = $(this).val();
    if (email.length > 0) {
      $.post(
        "/register/checkEmailAvailability",
        {
          username: email,
        },
        function (data) {
          if (data.availability) {
            $("#email-notification")
              .text("Email available")
              .removeClass()
              .addClass("text-success");
          } else {
            $("#email-notification")
              .text("Email not available")
              .removeClass()
              .addClass("text-danger");
          }
        }
      );
    } else {
      $("#email-notification").text("");
    }
  });

  // Seach users
  $("#search-form").submit(function(event) {
    event.preventDefault();
    var searchTerm = $("#search-field").val();
    $.post("/admin/find", {searchTerm: searchTerm}, function(newTable) {
      $("#user-table_wrapper").html(newTable);
    });
  });

  // Display all users after search
  $("#search-field").blur(function() {
    $.post("/admin/find", {showAllUsers: true}, function(newTable) {
      $("#user-table_wrapper").html(newTable);
    });
  });

  // Clear inputs in login form
  $("#clear-btn").click(function(event) {
    event.preventDefault();
    $("#inputEmail").val("");
    $("#inputPassword").val("");
  });

  // Change log in error message
  if ($(".alert").html() === "Sorry, we were not able to find a user with that username and password.") {
    $(".alert").html("Sorry, incorrect email/password.")
  }
});

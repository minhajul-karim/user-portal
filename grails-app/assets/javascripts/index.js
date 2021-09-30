$(document).ready(function () {
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
});

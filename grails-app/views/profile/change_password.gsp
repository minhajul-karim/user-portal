<!doctype html>
<html lang="en" class="h-100">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  <asset:stylesheet src="style.css"/>

  <title>Change Password Page</title>
</head>

<body class="d-flex flex-column h-100">
  <main class="flex-shrink-0 d-flex flex-column align-items-center justify-content-center mt-5">
    <asset:image src="contacts.svg" alt="Contact book" class="icons" />
    <h3 class="text-center my-3">Change Password</h3>
    <g:if test="${flash.message}">
      <div class="alert" role="alert">${flash.message}</div>
    </g:if>
    <g:form action="changePassword" class="auth-form p-4 mb-4">
      <%-- <div class="mb-3">
        <label for="inputEmail" class="form-label w-100 text-center">Email Address</label>
        <input type="email" name="username" class="form-control" id="inputEmail" aria-describedby="emailHelp">
      </div>
      <div class="mb-3">
        <label for="inputPassword" class="form-label w-100 text-center">Password</label>
        <input type="password" name="password" class="form-control" id="inputPassword">
      </div> --%>
      <div class="mb-3">
        <label for="inputPassword" class="form-label w-100 text-center">New Password</label>
        <input type="password" name="newpassword" class="form-control" id="inputPassword">
      </div>
      <div class="btn-container d-flex align-items-center btn-container justify-content-around">
        <button type="submit" class="btn btn-primary">Change</button>
        <a href="#" class="btn btn-primary" id="clear-btn" role="button">Clear</a>
      </div>
    </g:form>
  </main>
  <footer class="footer mt-auto py-3 bg-light">
    <p class="text-center text-muted">© 2021 Company, Inc</p>
  </footer>

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
    integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <asset:javascript src="index.js"/>
</body>

</html>
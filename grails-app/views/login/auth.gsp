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

  <title>Log In - User Portal</title>
</head>

<body class="d-flex flex-column h-100">
  <main class="flex-shrink-0 d-flex flex-column align-items-center justify-content-center mt-5">
    <asset:image src="contacts.svg" alt="Contact book" class="icons" />
    <h3 class="text-center my-3">Login Panel</h3>
    <g:if test="${flash.message}">
      <div class="alert" role="alert">${flash.message}</div>
    </g:if>
    <g:form action="authenticate" class="auth-form p-4 mb-4">
      <div class="mb-3">
        <label for="inputEmail" class="form-label w-100 text-center">Email Address</label>
        <input type="email" name="username" class="form-control" id="inputEmail" aria-describedby="emailHelp">
      </div>
      <div class="mb-3">
        <label for="inputPassword" class="form-label w-100 text-center">Password</label>
        <input type="password" class="form-control" id="inputPassword">
      </div>
      <div class="btn-container d-flex align-items-center btn-container justify-content-around">
        <button type="submit" class="btn btn-primary">Log in</button>
        <button class="btn btn-primary">Clear</button>
      </div>
      <p class="text-center my-4">Are you new here? <g:link controller="register">Register Now</g:link></p>
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
</body>

</html>
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

  <title>Profile Page</title>
</head>

<body class="d-flex flex-column h-100">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="#">Navigation</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <!--
            We can add <li> like the following as needed 
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li> 
          -->
        </ul>
        <div class="nav-item dropdown">
          <a class="dropdown-nav nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
            data-bs-toggle="dropdown" aria-expanded="false">
            <sec:loggedInUserInfo field="firstName" />
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="/profile/changePassword">Change Password</a></li>
            <li>
              <g:form controller="logout">
                <g:submitButton class="dropdown-item" name="Submit" value="Logout" style="color:gray" />
              </g:form>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
  <main class="d-flex h-100">
    <section class="sidebar bg-light">
      <ul>
        <li class="text-center"><a href="/profile" class="d-block p-2">Profile Page</a></li>
        <li class="text-center"><a href="/profile/changePassword" class="d-block p-2">Change Password</a></li>
      </ul>
    </section>
    <section class="content d-flex flex-column align-items-center">
      <div class="content-header w-100 p-3">
        <h1 class="text-center"><sec:loggedInUserInfo field="firstName" />'s Profile</h1>
      </div>
      <div class="content-details p-2 mt-5">
        <p>First Name: <span><sec:loggedInUserInfo field="firstName" /></span></p>
        <p>Last Name: <span><sec:loggedInUserInfo field="lastName" /></span></p>
        <p>Address: <span><sec:loggedInUserInfo field="address" /></span></p>
        <p>Phone: <span><sec:loggedInUserInfo field="phone" /></span></p>
        <p>Email: <span><sec:loggedInUserInfo field="username" /></span></p>
        <p>Birthdate: <span><sec:loggedInUserInfo field="birthdate" /></span></p>
      </div>
    </section>
  </main>
  <footer class="footer mt-auto py-3 bg-light"">
    <p class=" text-center text-muted">© 2021 Company, Inc</p>
  </footer>

  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
    crossorigin="anonymous"></script>
</body>

</html>
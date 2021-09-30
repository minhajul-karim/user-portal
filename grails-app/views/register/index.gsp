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

  <title>Registration Page</title>
</head>

<body>
  <main class="flex-shrink-0 d-flex flex-column align-items-center justify-content-center mt-5">
    <asset:image src="contacts.svg" alt="Contact book" class="icons" />
    <h3 class="text-center my-3">Registration Panel</h3>
    <g:if test="${flash.message}">
      <div class="alert" role="alert">${flash.message}</div>
    </g:if>
    <g:form class="auth-form p-5 mb-4" action="create">
      <%-- Role --%>
      <div class="d-md-flex mb-2" style="display:none !important;">
        <div class="col-md-3 mx-sm-2">
          <label for="role" class="col-form-label">Role</label>
        </div>
        <div class="col-md-9">
          <%-- <g:select class="form-select" name="role.id" from="${com.portal_pack.Role.list()}" optionKey="id" /> --%>
          <select name="role" class="form-select" aria-label="role selection">
            <option selected value="2">ROLE_USER</option>
            <option value="1">ROLE_ADMIN</option>
          </select>
        </div>
      </div> 
      <!-- First Name -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="firstName" class="col-form-label">First Name</label>
        </div>
        <div class="col-md-9">
          <input type="text" name="firstName" id="firstName" class="form-control" aria-describedby="firstNameHelpInline" required>
        </div>
      </div> <!-- End of First Name -->
      <!-- Last Name -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="lastName" class="col-form-label">Last Name</label>
        </div>
        <div class="col-md-9">
          <input type="text" name="lastName" id="lastName" class="form-control" aria-describedby="lastNameHelpInline" required>
        </div>
      </div> <!-- End of Last Name -->
      <!-- Address -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="address" class="col-form-label">Address</label>
        </div>
        <div class="col-md-9">
          <input type="text" name="address" id="address" class="form-control" aria-describedby="addressHelpInline" required>
        </div>
      </div> <!-- End of Address -->
      <!-- Phone -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="phone" class="col-form-label">Phone</label>
        </div>
        <div class="col-md-9">
          <input type="text" name="phone" id="phone" class="form-control" aria-describedby="phoneHelpInline" required>
        </div>
      </div> <!-- End of Phone -->
      <!-- Email -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="email" class="col-form-label">Email</label>
        </div>
        <div class="col-md-9">
          <input type="email" name="username" id="email" class="form-control" aria-describedby="emailHelpInline" required>
          <span id="email-notification"></span>
        </div>
      </div> <!-- End of Email -->
      <!-- Birthdate -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="birthdate" class="col-form-label">Birthdate</label>
        </div>
        <div class="col-md-9">
          <input type="date" name="birthdate" id="birthdate" class="form-control" aria-describedby="birthdateHelpInline" required>
        </div>
      </div> <!-- End of Birthdate -->
      <!-- Password -->
      <div class="d-md-flex mb-2">
        <div class="col-md-3 mx-sm-2">
          <label for="password" class="col-form-label">Password</label>
        </div>
        <div class="col-md-9">
          <input type="password" name="password" id="password" class="form-control" aria-describedby="passwordHelpInline" required>
        </div>
      </div> <!-- End of Password -->
      <div class="btn-container d-flex align-items-center btn-container justify-content-around mt-4">
        <button type="submit" class="btn btn-primary">Register</button>
        <a href="#" class="btn btn-primary" role="button">Cancel</a>
      </div>
    </g:form>
  </main>
  <footer class="footer mt-auto py-3 bg-light"">
    <p class=" text-center text-muted">© 2021 Company, Inc</p>
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
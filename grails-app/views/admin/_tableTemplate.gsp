<table class="table table-striped" id="user-table">
  <thead>
    <tr>
      <th scope=" col">First name</th>
      <th scope="col">Last name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
    </tr>
  </thead>
  <tbody>
    <g:each var="item" in="${ users }">
      <tr>
        <td>${item.firstName}</th>
        <td>${item.lastName}</td>
        <td>${item.username}</td>
        <td>${item.phone}</td>
      </tr>
    </g:each>
  </tbody>
</table>
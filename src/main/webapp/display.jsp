<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Profile - Display</title>
</head>
<body>
  <h2>Submitted Student Profile</h2>
  <p><strong>Name:</strong> ${name}</p>
  <p><strong>Age:</strong> ${age}</p>
  <p><strong>Email:</strong> ${email}</p>
  <p><strong>Branch:</strong> ${branch}</p>
  <p><strong>About:</strong> ${about}</p>
  <a href="${pageContext.request.contextPath}/index.jsp">Back</a>
</body>
</html>

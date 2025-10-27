<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Profile Form</title>
</head>
<body>
  <h2>Student Profile</h2>
  <form action="submit" method="post">
    Name: <input type="text" name="name" required/><br/><br/>
    Age: <input type="number" name="age" min="1" required/><br/><br/>
    Email: <input type="email" name="email" required/><br/><br/>
    Branch: <input type="text" name="branch" /><br/><br/>
    About: <textarea name="about"></textarea><br/><br/>
    <button type="submit">Submit</button>
  </form>
</body>
</html>

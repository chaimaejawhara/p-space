<?php
  include("connection.php")
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<script src="script.js"></script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<header>
    <nav>
        <div class="navContainer">
            <div class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
              <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
                <span class="Logo">P-SPACE</span>
              </a>
              </div>
          </div>
    </nav>
</header>
<body>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <form method="Post" action="login.php">
                 <center><h1>Welcome</h1></center> 
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form2Example1">Email</label>
                      <input type="email" id="form2Example1" class="form-control" name="email" />
                    </div>
                  
                    <!-- Password input -->
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form2Example2">Password</label>
                      <input type="password" id="form2Example2" class="form-control" name="password" />
                    </div>

                    <!-- 2 column grid layout for inline styling -->
                    <div class="row mb-4">
                      <div class="col d-flex justify-content-center">
                        <!-- Checkbox -->
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                          <label class="form-check-label" for="form2Example31"> Remember me </label>
                        </div>
                      </div>
                  
                      <div class="col" >
                        <!-- Simple link -->
                        <a href="#" class="forgotPsw">Forgot password?</a>
                      </div>
                    </div>
                  
                    <!-- Submit button -->
                    <div class="logBtn">
                      <input type="submit" class="btn btn-primary btn-block mb-4" id="logButton" value="Login">
                      <!-- <script>
                        document.getElementById("logButton").addEventListener("click", myFunction);  
                      function myFunction() {  
                        window.location.href="result.html";  
                      }
                    </script> -->
                    </div>
                 
                  </form>
            </div>
        </div>
        
    </div>
    
</body>
<footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center text-white p-3" style="background-color:#1E90FF; margin-top: 20px;">
    © 2022 Copyright:
    <a class="text-white" href="index.html">CN</a>
  </div>
  <!-- Copyright -->
</footer>
</html>
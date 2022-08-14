<?php
     session_start();
     include("connection.php");
     ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="result.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="~/lib/Font-Awesome/css/fontawesome.min.css">
<link rel="stylesheet" href="~/lib/Font-Awesome/css/all.min.css">
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/all.js" integrity="sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ" crossorigin="anonymous"></script>
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
              <!-- linking the stylesheet(CSS) -->
              <!-- input tag -->
              <div class="searchContainer">
              <input class="inputContainer" onkeyup="" type="text" name="search" placeholder="search..">
              <button class="btn btn-primary btn-block mb-4" id="searchButton" style="border-radius:80px;margin-top:2px;margin-left:5px;" ><i class="fas fa-search"></i></button>    
              </div>
              <div class="imageContainer">
                
                <a href="profile.php?w=<?php echo $_SESSION["idUser"];?>"><img src="<?php echo $_SESSION["imageUser"];?>" alt="prfile img" style="width:50px;margin-right:10px;"></a>

              </div>
        </div>
        </div>    
    </nav>
</header>
<style>

    .content-table {
        border-collapse: collapse;
        margin: 25px 0;
        font-size: 1,8em;
        min-width: 400px;
    }
    .content-table thead td {
        background-color:#1e90ff;
        color:#ffffff;
        text-align: left;
        font-weight: bold;
    }
    .content-table th,
    .content-table td {
        padding: 12px 15px ;
    }
    .content-table tbody tr {
        border-bottom: 1px solid #dddddd;
    }
    .content-table tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
    }
    .content-table tbody tr:last-of-type {
        border-bottom: 2px solid #1E90FF ;
    }
    .content-table tbody tr.active-row {
        font-weight: bold
        color #1E90FF ;
    }
    .searchButton{
        border-radius: 50px;
    }
</style>
<body>
    <div align="center" style="vertical-align:bottom">
        <div align="center" style="vertical-align:bottom">
    <table cellpadding="5" cellspacing="10" width="90%" class="content-table">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>POSITION</th>
            <th>CONSULT THE PROFILE</th>
        </tr>
        <?php
             $res=mysqli_query($conn,"select * from employee");
             while($row=mysqli_fetch_assoc($res))
                { ?>
                    <tr>
                        <td><?php echo $row["ID"]?></td>
                        <td><?php echo $row["Name"]?></td>
                        <td><?php echo $row["Position"]?></td>
                        <td><a href="profile.php?w=<?php echo $row["ID"];?>" class="btn btn-primary btn-block mb-4" style="margin-top:20px; margin-left:20px">Check Profile</a></td>
                    </tr>
        <?php 
             } 

        ?>
    </table>
</body>
</html>
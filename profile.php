<?php 
    session_start();
    include("connection.php");
    $idUser=$_GET["w"]
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="profile.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/devicons/devicon@v2.15.1/devicon.min.css">
          
    <title>Document</title>
</head>
<body>
    
<section class="bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div class="card card-style1 border-0">
                    <div class="card-body p-1-9 p-sm-2-3 p-md-6 p-lg-7">
                        <div class="row align-items-center">
                            <?php
                                $res=mysqli_query($conn,"select * from employee where ID=$idUser");
                                $row=mysqli_fetch_assoc($res);
                                $_SESSION["projet"]=$row["projet"];
                            ?>
                            <div class="col-lg-6 mb-4 mb-lg-0">
                                <img class="imgContainer" src="<?php echo trim($row["Image"]);?>" alt="image Profile">
                            </div>
                            <div class="col-lg-6 px-xl-10">
                                <div class="bg-secondary d-lg-inline-block py-1-9 px-1-9 px-sm-6 mb-1-9 rounded" style="text-align:center;width: 400px;">
                                    <h3 class="h2 text-white mb-0"><?php echo $row["Name"]?></h3>
                                    <span class="text-white"><?php echo $row["Position"]?></span>
                                </div>
                                <ul class="list-unstyled mb-1-9">
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Position:</span> <?php echo $row["Position"]?></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Id:</span><?php echo $idUser?></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Email:</span> <?php echo $row["Email"]?></li>
                                    <li class="mb-2 mb-xl-3 display-28"><span class="display-26 text-secondary me-2 font-weight-600">Phone:</span><?php echo $row["Phone"]?></li>
                                    <li class="display-28"><span class="display-26 text-secondary me-2 font-weight-600">Date of birth:</span><?php echo $row["Date of birth"]?></li>
                                </ul>
                                <ul class="social-icon-style1 list-unstyled mb-0 ps-0">
                                    <li><a href="#!"><i class="ti-twitter-alt"></i></a></li>
                                    <li><a href="#!"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#!"><i class="ti-pinterest"></i></a></li>
                                    <li><a href="#!"><i class="ti-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 mb-4 mb-sm-5">
                <div>
                    <span class="section-title text-primary mb-3 mb-sm-4">Certificates:</span>
                    <p><?php echo nl2br($row["Certificates"])?></p>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12 mb-4 mb-sm-5">
                        <div class="mb-4 mb-sm-5">
                            <span class="section-title text-primary mb-3 mb-sm-4">Skills:</span>
                            <?php
                                $res=mysqli_query($conn,"select s.* from skills s,employee e,skills_employee se where se.ID=$idUser and se.ID=e.ID and se.Id_skill=s.Id_skill");
                                while($row=mysqli_fetch_assoc($res))
                                    { 
                                        $skill=strtolower($row["Name_skill"]);
                            ?>
                                    <div class="progress-text">
                                        <div class="row" style="padding: 5px;">
                                            
                                            <div class="col-6"><i class="devicon-<?php echo $skill?>-plain colored" style="margin-right:10px;"></i><?php echo $row["Name_skill"];?></div>
                                        </div>
                                    </div>
                            <?php 
                                     } 
                            ?>
                        </div>
                        <div>
                            <span class="section-title text-primary mb-3 mb-sm-4">Projects:</span>
                            <p class="text-justify"><?php echo  nl2br($_SESSION["projet"]);?></p>              
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>

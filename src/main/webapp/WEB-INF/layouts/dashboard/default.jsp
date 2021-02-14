<!doctype html>
<html>
    <head>
        <title>Doctors Care</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/css/bootstrap-grid.css">
        <link rel="stylesheet" href="/css/bootstrap-grid.min.css">
        <link rel="stylesheet" href="/css/bootstrap-reboot.css">
        <link rel="stylesheet" href="/css/bootstrap-reboot.min.css">
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        <style> 

            /* Make the image fully responsive */
            .carousel-inner img {
                width: 100%;
                height: 100%;
            }
        </style>

    </head>
    <body class="container-fluid">
        
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:125px;">
                </a>
                <ul class="navbar-nav ml-auto">
                    <!--    <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Home</a>
                              <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Doctors</a>
                            <a class="dropdown-item" href="patientpage">Patient</a>
                            <a class="dropdown-item" href="servicepage">Service</a>
                        </li>-->
                    <!--    <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Pricing</a>
                               <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Insurance</a>
                            <a class="dropdown-item" href="#">Self-pay</a>
                            <a class="dropdown-item" href="#">Mobile Banking</a>
                          </div>
                        </li>-->
                    <li class="nav-item">
                        <a class="nav-link" href="doctorpage">Doctor</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="appointmentpage">Appointment</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="servicepage">Service</a>
                    </li></ul>

                <!--    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#"  data-toggle="dropdown">
                        Services
                      </a>
                      <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Urgent Care</a>
                        <a class="dropdown-item" href="#">Family Care</a>
                        <a class="dropdown-item" href="#">Medical Care</a>
                      </div>
                    </li>
                  </ul>-->


                <form class="form-inline" action="/action_page.php">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-success" type="submit">Search</button>
                </form>

            </nav>

            <div class="carousel slide" data-ride="carousel" id="demo">

                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>

                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/images/doctor.jpg" alt="Doctor" width="1100" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/care.jpg" alt="Care" width="1100" height="500">
                    </div>
                    <div class="carousel-item">
                        <img src="/images/dc.jpg" alt="DC" width="1100" height="500">
                    </div>

                </div>

                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </header>
        <section>
            <div>
                <div><h2 class="text-center pt-5 display-4">About Us</h2>
                    <hr class="w-25 mx-auto pb-5">
                </div>
            </div>
            <div class="row">
                <div class="col-sm">
                    <img src="/images/img.jpg" width="500px" class="img-fluid">
                </div>
                <div class="col-sm">
                    <h1>What is it ?</h1><hr>
                    <p>
                        The clinic provides affordable, high quality health care five days a week for patients newborn to age 50. Services include sick and well care, dental hygiene and behavioral health. The clinic accepts Medicaid, CHP+ and self pay/uninsured patients. Doctors Care offers a sliding fee payment option for uninsured patients. To learn more about the sliding fee program please 
                    </p>
                    <button>click here</button>
                </div>
            </div><br>

        </section>


        <div style="background-color:#88a2a7">
            <article class="py-2 text-center" style="color:#ffe8a5">
                <h3 class="display-4">+8801823348066</h3>
                <p> If you want best service, call us now.</p>
                <button><a class="text-dark" href="tel:+8801823348066">Contact Now</a></button>
            </article>
        </div>
        <div class="text-center p-5 my-3 border text-body" style="background-color:#e6acb1">
            <h4>Get connected with us on social networks!</h4><br>


            <a href="https://www.facebook.com/"><img src="/images/fb.jpg" height="50" width="50" class="mx-2" ></a>
            <a href="https://www.twitter.com/"><img src="/images/twt.png" height="50" width="50" class="mx-2"></a>
            <a href="https://www.instagram.com/"><img src="/images/ins.jpg" height="50" width="50" class="mx-2"></a>
            <a href="https://www.youtube.com/"><img src="/images/tube.jpg" height="50" width="50" class="mx-2"></a>
        </div>
        <footer>
            <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                    <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
            </div>

        </footer>

    </body>
</html>
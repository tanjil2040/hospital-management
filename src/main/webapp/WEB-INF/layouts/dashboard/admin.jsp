<%-- 
    Document   : admin
    Created on : Jan 25, 2021, 4:31:31 PM
    Author     : JEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        <title>Admin Page</title>
    </head>
    <body>
       <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#">Hospital Management</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Sign out</a>
    </li>
  </ul>
</header>
          <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="appointmentpage">
              <span data-feather="Appointment"></span>
             Appointment
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="doctorinfopage">
              <span data-feather="Doctor"></span>
             Doctor
            </a>
               <li class="nav-item">
            <a class="nav-link" href="serviceinfopage">
              <span data-feather="Service"></span>
              Service
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="billpage">
                  <span data-feather="bill"></span>
                  Bill
              </a>
          </li>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="historypage">
              <span data-feather="History"></span>
              History
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="searchinfopage">
              <span data-feather="Search"></span>
              Search
            </a>
          </li>
         
          
        </ul>

        
      </div>
 
    </body>
</html>

<%-- 
    Document   : payment
    Created on : Jan 27, 2021, 4:30:55 PM
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
        <title>Payment Page</title>
    </head>
    <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header>
    </body>
    <form >
        <div class="form-group" style="background-color:#d6e0ea; color:#254465">
            <center> <h3>Total Bill</h3></center><br>
            <div class="row">
                <div class="col-sm-5 offset-1">

                    <h5> Patient Name :<br>
                        <input type="text" size="20" value="${pname}"><br><br>
                        Physical Checkup :<br>


                        <input type="text" value="${phy}" size="20"><br><br>
                        Blood Test :<br>
                        <input type="text" value="${bt}" size="20"><br><br>
                        Hospital Charge :<br>
                        <input type="text"  value="${hos}" size="20"><br><br>


                    </h5>
                </div>

                <div class="col-sm-5 offset-1">
                    <h5>Urine Test :<br>
                        <input type="text" value="${ut}" size="20"><br><br>
                        X ray :<br>
                        <input type="text" value="${xray}" size="20"><br><br>
                        Doctor Fees :<br>
                        <input type="text" value="${docfee}"  size="20"><br><br>
                        Total Bill :<br>
                        <input type="text" value="${total}"   size="20"><br><br></h5>

                </div>

            </div>

        </div>
    </form>

    <footer>
        <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
        </div>

    </footer>
</html>

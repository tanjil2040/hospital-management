<%-- 
    Document   : appoint
    Created on : Jan 21, 2021, 5:51:27 PM
    Author     : JEE
--%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
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
        <title>Appoint Page</title>
    </head>
    <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header>
        <form action="addAppoint" method="POST">
            <div class="form-group" style="background-color:#d6e0ea; color:#254465">
                <center> <h3>Make an appointment</h3></center><br>
                <center>  <h3>Fill in the fields bellow to book a visit to our clinic and we will contact you to clear up the details.</h3></center><hr><br>
                <div class="row">
                    <div class="col-sm-5 offset-1">
                        <h5>Patient Name :<br>
                            <input type="text" name="pname" placeholder="Enter your name" size="40"><br><br>
                            Email :<br>
                            <input type="text" name="email" placeholder="Enter your Email" size="40"><br><br>
                            Choose Doctor :<br>
                            <select name="doctorname">
                              <option>Dr Ripon (Cardiology)</option>
                                <option>Dr Tanjil (Dermatology)</option>
                                <option>Dr Sadia (Gynaecology)</option>
                                <option>Dr Asif (Medicine)</option>
                                <option>Dr Kazi (Neurology)</option>
                                <option>Dr Kanchon (Oncology)</option>
                                <option>Dr Joshim (Paediatrics)</option>
                                <option>Dr Saddam (Orthopaedics)</option>


                            </select><br><br>
                            Blood Group :<br>
                            <input type="checkbox" name="bg" value="A">A
                            <input type="checkbox" name="bg" value="B">B
                            <input type="checkbox" name="bg" value="C">O<br><br>

                            Gender :<br>
                            <input type="radio" name="gender" value="male">Male
                            <input type="radio" name="gender" value="female">Female
                            <input type="radio" name="gender" value="others">others<br><br>
                           


                        </h5>
                    </div>

                    <div class="col-sm-5 offset-1">
                        <h5>
                            Contact Number :<br>
                            <input type="text" name="contactnumber" placeholder="Enter your contuct number" size="40"><br><br>
                            Date of birth :<br>
                            <input type="date" name="dat" size="40"><br><br>
                            Blood Type :<br>
                            <input type="checkbox" name="bt" value="positive">Positive
                            <input type="checkbox" name="bt" value="negetive">Negative<br><br>
                            National ID Number :<br>
                            <input type="text" name="nid" placeholder="Enter your ID Number"><br><br>
                             Choose Date :<br>
                            <input type="date" name="date" size="40"><br><br>

                        </h5> 
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-2 offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </div>
                    <div class="col-sm-2 offset-2">
                        <button type="reset" class="btn btn-secondary btn-block">reset</button>
                    </div>
                </div>
            </div>
        </form>

        <footer>
            <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                    <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
            </div>

        </footer>
    </body>
</html>

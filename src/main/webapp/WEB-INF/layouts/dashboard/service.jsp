<%-- 
    Document   : service
    Created on : Jan 21, 2021, 4:13:24 PM
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
        <title>Service Page</title>
    </head>
    <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header>
        <div class="form-group" style="background-color:#d6e0ea; color:#254465">
            <center> <h3>Total Bill</h3></center><br>
            <form action="searchPatient" method="get">
                <div class="row">
                    <div class="col-sm-5 offset-1">

                        <h5>Appointment ID : 
                            <input type="number" name="appointId" placeholder="Enter Appoint ID" size="20">
                            <input type="submit" class="btn btn-primary" value="Search"><br><br> 
                        </h5>
                    </div>
                    <div class="col-sm-5 offset-1">
                        <h5>Patient Name : 
                            <input value="${a.patientName}" name="pname" placeholder="Patient Name" size="20"><br><br>
                        </h5>
                    </div>
                </div>

            </form>


            <form action="Calculate" method="POST">

                <div class="row">
                    <div class="col-sm-5 offset-1">
                        <input value="${a.patientName}" name="pname" placeholder="Patient Name" size="20" hidden><br><br>

                        <h5>     Physical Checkup :<br>


                            <input type="checkbox" name="phycheck"  value="${chackup}"  size="20">${chackup}Tk<br><br>
                            Blood Test :<br>
                            <input type="checkbox" name="bt"  value="${bt}"  size="20">${bt}Tk<br><br>
                            Hospital Charge :<br>
                            <input type="checkbox" name="hoscharge" value="${hos}" size="20" checked>${hos}Tk<br><br>


                        </h5>
                    </div>

                    <div class="col-sm-5 offset-1">
                         <input value="${a.patientName}" name="pname" placeholder="Patient Name" size="20" hidden><br><br>
                        <h5>Urine Test :<br>
                            <input type="checkbox" name="ut" value="${ut}" size="20">${ut}Tk<br><br>
                            X ray :<br>
                            <input type="checkbox" name="xray" value="${xray}"  size="20" >${xray}Tk<br><br>
                            Doctor Fees :<br>
                            <input type="checkbox" name="docfee" value="${doc}" size="20" checked>${doc}Tk<br><br>
                        </h5>

                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2 offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Payment</button>
                    </div>
                    <div class="col-sm-2 offset-2">
                        <button type="reset" class="btn btn-secondary btn-block">reset</button>
                    </div>
                </div>

            </form>
        </div>
    </body>
    <footer>
        <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
        </div>

    </footer>

</html>

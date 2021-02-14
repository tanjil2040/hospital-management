<%-- 
    Document   : serviceinfo
    Created on : Jan 30, 2021, 3:44:27 PM
    Author     : JEE
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <title>Service Info Page</title>
    </head>
    <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header>
        <div class="form-group" style="background-color:#d6e0ea; color:#254465">
            <center> <h3>Bill Management</h3></center><br>
            <form action="deleteservice" method="post">



                <table class="table table-bordered">
                    <thead class="thead-dark">
                       
                    <th>Physical Checkup</th>
                    <th>Urine Test</th>
                    <th>Xray</th>
                    <th>Blood Test</th>
                    <th>Doctor Fees </th>
                    <th>Hospital Charge</th>
                    <th>Action</th>
                    </thead>

                    <tbody class="thead-light">
                        <c:forEach items="${s}" var="s">

                            <tr>
                                <input type="number" size="10px" name="sid" class="border-0" style="background-color:#d6e0ea; color:#254465" value="${s.serviceId}" hidden="true">
                                <td >${s.physicalCheckup}</td>
                                <td >${s.urineTest}</td>
                                <td >${s.xray}</td>
                                <td >${s.bloodTest}</td>
                                <td >${s.doctorFees}</td>
                                <td >${s.hospitalCharge}</td>
                                <td ><button type="submit" >Delete</button></td>



                            </tr>
                        </c:forEach>


                    </tbody>



                </table>
            </form><br><br><br>
            <form action="serviceinfopage" method="POST">
                <div class="row">
                    <div class="col-sm-6 offset-1">


                        <h5>Physical Checkup :<br>


                            <input type="number" name="phycheck"  ><br><br>
                            Blood Test :<br>
                            <input type="number" name="bt"   ><br><br>
                            Hospital Charge :<br>
                            <input type="number" name="hoscharge"   ><br><br>


                        </h5>
                    </div>

                    <div class="col-sm-2 offset-1">
                        <h5>Urine Test :<br>
                            <input type="number" name="ut" ><br><br>
                            X ray :<br>
                            <input type="number" name="xray"  ><br><br>
                            Doctor Fees :<br>
                            <input type="number" name="docfee" ><br><br>
                        </h5>

                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-2 offset-2">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </div>
                    <div class="col-sm-2 offset-3">
                        <button type="reset" class="btn btn-secondary btn-block">Reset</button>
                    </div>
                </div>
            </form>
        </form>
    </div>
</body>
</html>

<%-- 
    Document   : patient
    Created on : Jan 20, 2021, 7:02:15 PM
    Author     : JEE
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Patient Page</title>
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

    </head>
    <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header>
        <div class="container-fluid" style="background-color:#d6e0ea; color:#254465">
            <form method="get" action="searchpage">

                <center> <h3>Appoint ID Search</h3></center><br>



                <h5>Doctor Name :
                    <!--<input type="number" name="appointId" placeholder="Enter Appoint ID">-->
                    <!--<input type="text" name="doctorname" placeholder="Enter Doctor Name">-->
                    <select name="doctorname">
                        <option>Dr Ripon (Cardiology)</option>
                        <option>Dr Tanjil (Dermatology)</option>
                        <option>Dr Sadia (Gynaecology)</option>
                        <option>Dr Asif (Medicine)</option>
                        <option>Dr Kazi (Neurology)</option>
                        <option>Dr Kanchon (Oncology)</option>
                        <option>Dr Joshim (Paediatrics)</option>
                        <option>Dr Saddam (Orthopaedics)</option>


                    </select>


                    <input type="submit" class="btn btn-primary" value="Search">
                </h5><br><br><br>
                <table class="table table-bordered">
                    <thead class="thead-dark">
                    <th>appoint id</th>
                    <th>Patient Name</th>
                    <th>Doctor Name</th>
                    <th>appoint date</th>
                    <th>blood group</th>
                    <th>blood type</th>
                    <th>contact number</th>
                    <th>date of birth</th>
                    <th>email</th>
                    <th>gender</th>
                    <th>nid</th>

                    </thead>

                    <tbody class="thead-light">
                        <c:forEach items="${ap}" var="a">
                            <tr>

                                <td >${a.appointId}</td>
                                <td >${a.patientName}</td>
                                <td >${a.doctorName}</td>
                                <td >${a.appointDate}</td>
                                <td >${a.bloodGroup}</td>
                                <td >${a.bloodType}</td>
                                <td >${a.contactNumber}</td>
                                <td >${a.dateOfBirth}</td>
                                <td >${a.email}</td>
                                <td >${a.gender}</td>
                                <td >${a.nid}</td>


                            </tr>
                        </c:forEach>



                    </tbody>

                </table>


            </form>
        </div><br><br><br><br><br><br>
        <footer>
            <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                    <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
            </div>

        </footer>



    </body>
</html>

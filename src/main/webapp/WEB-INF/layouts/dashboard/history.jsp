<%-- 
    Document   : history
    Created on : Jan 30, 2021, 4:23:14 PM
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
        <title>History Page</title>
    </head>
    <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header><br><br><br>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <div class="container-fluid" style="background-color:#d6e0ea; color:#254465">
            <!--            <form method="get" action="searchinfopage">
                            Filter:
                            <input id="myInput" type="text" placeholder="Search" class="form-control"/><br>-->

            <!--            <input type="submit" value="Search"/>-->



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
                    <c:forEach items="${a}" var="a">
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
            <!--</form>-->
        </div>
        <script>
            $(document).ready(function () {
                $("#myInput").on("keyup", function () {
                    $("#myTable tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
        <br><br><br><br><br><br>
        <footer>
            <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                    <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
            </div>

        </footer>
    </body>

</html>

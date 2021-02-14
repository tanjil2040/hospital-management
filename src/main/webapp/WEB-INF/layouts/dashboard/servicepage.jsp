<%-- 
    Document   : servicepage
    Created on : Feb 9, 2021, 5:39:44 PM
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
        <title>Service Page</title>
    </head>
   <body class="container-fluid">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#17262f">
                <a class="navbar-brand" href="#">
                    <img src="/images/logo.png" alt="Logo" style="width:100px;">
                </a>
        </header><br><br><br>
       <div class="container-fluid" style="background-color:#d6e0ea; color:#254465">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <th>Physical Checkup</th>
            <th>Urine Test</th>
            <th>Xray</th>
            <th>Blood Test</th>
            <th>Doctor Fees </th>
            <th>Hospital Charge</th>
        </thead>

        <tbody class="thead-light">
        <c:forEach items="${s}" var="s">
            <tr>

                <td >${s.physicalCheckup}</td>
                <td >${s.urineTest}</td>
                <td >${s.xray}</td>
                <td >${s.bloodTest}</td>
                <td >${s.doctorFees}</td>
                <td >${s.hospitalCharge}</td>



            </tr>
        </c:forEach>


    </tbody>

</table><br><br><br>
       </div><br><br><br>
        <footer>
            <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                    <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
            </div>

        </footer>
</body>
</html>

<%-- 
    Document   : patient
    Created on : Jan 20, 2021, 7:02:15 PM
    Author     : JEE
--%>
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
                    <img src="/images/logo.png" alt="Logo" style="width:125px;">
                </a>
        </header>
        <form>
            <div class="form-group" style="background-color:#d6e0ea; color:#254465">
                <center> <h3>User Inpur Form</h3></center><br>
                <center>  <h3>Personal Information</h3></center><hr><br>
                <div class="row">
                    <div class="col-sm-5 offset-1">
                        <h5>First Name :
                            <input type="text" name="first name" placeholder="Enter your first name" size="40"><br><br>
                            Father's Name :<br>
                            <input type="text" name="father name" placeholder="Enter your father name" size="40"><br><br>
                            Email :<br>
                            <input type="text" name="email" placeholder="Enter your Email" size="35"><br><br>
                            Problem Types :<br>
                            <select>
                                <option>Physical</option>
                                <option>Mental</option>
                                <option>Both</option>

                            </select><br><br>
                            Religion :<br>
                            <input type="checkbox" name="religion" value="islam">Islam
                            <input type="checkbox" name="religion" value="hindu">Hindu
                            <input type="checkbox" name="religion" value="christan">Christian
                            <input type="checkbox" name="religion" value="boddoh">Buddha
                            <input type="checkbox" name="religion" value="others">Others<br><br>
                            Gender :<br>
                            <input type="radio" name="gender" value="male">Male
                            <input type="radio" name="gender" value="female">Female
                            <input type="radio" name="gender" value="others">others<br><br>


                        </h5> </div>

                    <div class="col-sm-5 offset-1">
                        <h5>Last Name :
                            <input type="text" name="lirst name" placeholder="Enter your Lirst name" size="40"><br><br>
                            Mother's Name :<br>
                            <input type="text" name="mother name" placeholder="Enter your Mother name" size="40"><br><br>
                            Contact Number :<br>
                            <input type="text" name="contact number" placeholder="Enter your contuct number" size="40"><br><br>
                            Date of birth :<br>
                            <input type="date" name="date" size="45"><br><br>
                            National ID Number :<br>
                            <input type="text" name="ID CR" placeholder="Enter your ID Number"><br><br>
                            Marital Status :<br>
                            <input type="checkbox" name="married" value="married">Married
                            <input type="checkbox" name="unmarried" value="unmarried">Unmarried<br><br>
                        </h5> </div>
                </div>
                <div class="row">
                    <div class="col-sm-10 offset-2">
                        <h4>Instruction :</h4>
                        <h6><textarea rows="10" cols="118" >
						Describe your problem here...
                            </textarea></h6><br>
                    </div>				
                </div><br>

                <div class="row">
                    <div class="col-sm-2 offset-3">
                        <button type="button" class="btn btn-primary btn-block">Submit</button>
                    </div>
                    <div class="col-sm-2 offset-2">
                        <button type="reset" class="btn btn-secondary btn-block">reset</button>
                    </div>
                </div></div>
        </form>
        <footer>
            <div class="text-center pb-3 text-danger" style="background-color:#c0d2e4"><h5>© 2020 Copyright:
                    <a href="https://mdbootstrap.com/education/bootstrap/">DoctorsCare.com</a></h5>
            </div>

        </footer>



    </body>
</html>

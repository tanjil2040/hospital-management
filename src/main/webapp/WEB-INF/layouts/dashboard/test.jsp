<%-- 
    Document   : test
    Created on : Feb 8, 2021, 11:24:22 PM
    Author     : fatem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Page</title>
    </head>
    <body>
        <form action="addtest" method="POST">
            <h5>Test Name :
                <input type="text" name="testname">
           Test Date :
           <input type="date" name="testdate"><br>
           <button type="submit">Submit</button>
            </h5>
        </form>
    </body>
</html>

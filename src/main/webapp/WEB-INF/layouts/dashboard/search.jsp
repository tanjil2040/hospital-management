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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>

        <!--        <form method="get" action="searchinfopage">
                    Filter:
                    <input type="number" name="appointId" />
                   
                    <input type="submit" value="Search"/>
               
                </form>-->
        <form>
           
            <table>



                <tr>
                    <th>appoint_id</th>
                    <th>First Name</th>
                    <th>Doctor Name</th>
                </tr>       
                <c:forEach items="${ap}" var="ap">
                    <tr>

                        <td >${ap.appointId}</td>
                        <td >${ap.firstName}</td>
                        <td >${ap.doctorName}</td>


                    </tr>
                </c:forEach>




            </table>
        </form>

    </body>

</html>

<%-- 
    Document   : thankYou
    Created on : Oct 5, 2017, 11:21:48 AM
    Author     : ncmzt2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <link rel="stylesheet" href="main.css" type="text/css"/>
        <title>DVD order form JSP Page</title>
    </head>
    <body>
        <h1>Thanks for your order</h1>
        <p>Here is the information that you entered:</p>

        <label>Name:</label>
        <span>${dvd.name}</span><br>
        <label>Email:</label>
        <span>${dvd.email}</span><br>
        
        <table>
            <tr>
                <th>Cover</th>
                <th>Title</th>
                <th>Price</th>
            </tr>
            <tr>
                <td>
                    <img src="https://cinesnark.files.wordpress.com/2014/11/interstellar-poster.jpg" width="175">
                </td>
                <td> ${dvd.dvdTitle}</td>
                <td>
                    <span>${dvd.dvdPrice}</span>
                </td>  
            </tr> 
        </table>
 <p>To oder another DVD, click on the Back button in your browser or the Return button shown below.</p>

    <form action="orderForm.jsp" method="get">
        <input type="hidden" name="action" value="add">
        <input type="submit" value="Return">
    </form>

    </body>
</html>

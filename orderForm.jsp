<%-- 
    Document   : orderForm
    Created on : Oct 5, 2017, 11:19:05 AM
    Author     : ncmzt2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <title>HW2 dvd order form</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="main.css" type="text/css"/>
    </head>
    <body>
        <h1>DVD order form</h1>
        <p>Please select DVD(s) you wish to order</p>
        <form action="dvd" method="post">
            <input type="hidden" name="action" value="add">
            <table>
            <tr>
                <th>Cover</th>
                <th>Title</th>
                <th>Price</th>
                <th>Add to Cart</th>
            </tr>
            <tr>
                <td>
                    <img src="https://cinesnark.files.wordpress.com/2014/11/interstellar-poster.jpg" width="175">
                </td>
                <input type="hidden" name="dvdTitle" value="Interstellar">
                <td>Interstellar</td>
                <input type="hidden" name="dvdPrice" value="$15.99">
                <td name="dvdPrice">$15.99</td>
                <td><input type="radio"></td>   
            </tr>
            <tr>
                <td>
                    <img src="http://thumbs1.ebaystatic.com/d/l225/m/m1xNMwMqzrzMHU0Op0lWWyw.jpg" width="175">
                </td>
                <input type="hidden" name="dvdTitle" value="Gladiator">
                <td name="dvdTitle">Gladiator</td>
                <input type="hidden" name="dvdPrice" value="$5.99">
                <td name="dvdPrice">$5.99</td>
                <td><input type="radio" name="thisDvd"></td>
            </tr>
            <tr>
                <td>
                    <img src="http://www.yifysubtitles.com/images/movies/movie-1504.jpg" width="175">
                </td>
                <input type="hidden" name="dvdTitle" value="Rounders">
                <td name="dvdTitle">Rounders</td>
                <input type="hidden" name="dvdPrice" value="$4.50">
                <td name="dvdPrice">$4.50</td>
                <td><input type="radio" name="thisDvd"></td>
            </tr>
            <tr>
                <td>
                    <img src="https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/product_image_aspect_switcher_170w/public/product-images/csm-movie/the-shack-poster1.jpg?itok=oPOQCyB4" width="175">
                </td>
                <input type="hidden" name="dvdTitle" value="TheShack">
                <td name="dvdTitle">The Shack</td>
                <input type="hidden" name="dvdPrice" value="$19.99">
                <td name="dvdPrice">$19.99</td>
                <td><input type="radio" name="thisDvd"></td>
            </tr> 
        </table>
        <br>
            <label>Name:</label>
            <input type="text" name="name"  required><br>
            
            <label>Email:</label>
            <input type="email" name="email"  required><br>
            
            <label>&nbsp;</label>
            <input type="submit" value="Place Order" id="submit">
        </form>
    </body>
</html>

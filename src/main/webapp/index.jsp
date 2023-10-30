<%@ page import="java.util.List" %>
<%@ page import="java.util.Currency" %><%--
  Created by IntelliJ IDEA.
  User: Akobek
  Date: 10/22/2023
  Time: 1:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>currency</title>
    <link rel="stylesheet" href="style/someStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar cssLightGreen">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <img src="https://maanimo.kz/wp-content/uploads/halyk-bank-icon.png"
                     alt="Logo" width="30" height="30" class="d-inline-block align-text-top">

            </button>
            <span style="color: #00815d;">Halyk Bank </span>
        </a>
    </div>
</nav>
<table class="table border-dark cssLightGreenTable" id="cssTable">
    <thead>
    <tr>
        <th scope="col" colspan="2"></th>
        <th scope="col"><span>Покупка</span><br>
            <soan>We Buy at</soan>
        </th>
        <th scope="col"><span>Продажа</span><br><span>We Sell at</span></th>
    </tr>
    </thead>
    <tbody class="table-group-divider">
    <c:forEach items="${currencies}" var="user">
        <tr>
            <th scope="row"><img class="cssImage" src="${user.getLogo()}"></th>
            <td><c:out value="${user.getAbbr()}"/></td>
            <td><div class="currency"><c:out value="${user.getBuyAt()}"/></div></td>
            <td><div class="currency"><c:out value="${user.getSellAt()}"/></div></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="background-color: palegreen;">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Add currency</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="POST" action="/ServletGet">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Name</label>
                        <select class="form-select form-select-sm" aria-label="Small select example"
                                id="exampleInputEmail1" name="logo">
                            <option selected>Currency</option>
                            <option value="https://flagicons.lipis.dev/flags/4x3/ru.svg">Ruble</option>
                            <option value="https://flagicons.lipis.dev/flags/4x3/eu.svg">Euro</option>
                            <option value="https://flagicons.lipis.dev/flags/4x3/um.svg">Dollar</option>
                            <option value="https://flagicons.lipis.dev/flags/4x3/kg.svg">Som</option>
                            <option value="https://flagicons.lipis.dev/flags/4x3/jp.svg">Yen</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">BuyAt</label>
                        <input type="text" class="form-control" id="exampleInputEmail2" name="buyAt" value="0"
                               aria-describedby="emailHelp" placeholder="Buy At">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail3">SellAt</label>
                        <input type="text" class="form-control" id="exampleInputEmail3" name="sellAt" value="0"
                               aria-describedby="emailHelp" placeholder="Sell At">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" value="add">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

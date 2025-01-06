<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Course Information</title>
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        /* Header and title styles */
        h1 {
            text-align: center;
            color: #333;
            margin-top: 30px;
        }

        /* Container for the table */
        .table-container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Image style */
        .header-image {
            display: block;
            margin: 0 auto;
            width: 100%;
            max-width: 600px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>

    <!-- Image Section -->
    <img src="your-image-url.jpg" alt="Header Image" class="header-image">

    <!-- Page Header -->
    <h1>Student Course Information</h1>

    <!-- Table Section -->
    <div class="table-container">
        <table>
            <thead>
                <tr>
                     <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Batch Name</th>
                    <th>Faculty Name</th>
                    <th>Course Name</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <!-- JSP Loop to display student data -->
                <c:forEach items="${data}" var="s">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.name}</td>
                        <td>${s.b.bname}</td>
                        <td>${s.b.f.fname}</td>
                        <td>${s.b.f.c.cname}</td>
                         <td><a href="edit?id=${s.id}">EDIT</a>||
                         <a  href="delete?id=${s.id}">DELETE</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>

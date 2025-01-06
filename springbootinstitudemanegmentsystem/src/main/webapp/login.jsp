<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Choice</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-image: url('https://www.w3schools.com/w3images/mountains.jpg'); /* Background image URL */
            background-size: cover; /* Makes the image cover the entire screen */
            background-position: center center; /* Centers the image */
            background-attachment: fixed; /* Makes the background image stay fixed while scrolling */
            margin: 0;
            padding: 0;
            color: #333; /* Dark text for good contrast */
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white background */
            border-radius: 12px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            font-size: 2.5rem;
            color: #512da8; /* Purple color for the heading */
            margin-bottom: 30px;
            font-weight: 500;
        }

        .btn {
            display: inline-block;
            margin: 15px;
            padding: 12px 30px;
            font-size: 1.2rem;
            text-decoration: none;
            color: #fff;
            background-color: #00897b; /* Teal button color */
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            text-align: center;
        }

        .btn:hover {
            background-color: #00695c; /* Darker teal on hover */
            transform: translateY(-4px);
        }

        .btn:active {
            background-color: #004d40; /* Even darker teal when pressed */
            transform: translateY(1px);
        }

        pre {
            font-size: 1rem;
            line-height: 1.8;
            color: #555;
            margin-top: 20px;
        }

        /* Media query for responsiveness */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            .btn {
                padding: 10px 25px;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <form action="login">
            <h1>Select Any Choice</h1>
            <a href="enterdata" class="btn">Enter Data</a>
            <a href="showdata" class="btn">Show All Data</a>
        </form>
    </div>

</body>
</html>

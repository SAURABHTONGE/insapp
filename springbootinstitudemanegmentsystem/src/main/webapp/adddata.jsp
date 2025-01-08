<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Form</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background-image: url('https://www.w3schools.com/w3images/mountains.jpg'); /* Background image URL */
            background-size: cover; /* Make the background image cover the entire screen */
            background-position: center center; /* Center the background image */
            background-attachment: fixed; /* Keep the background fixed during scrolling */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            color: #512da8;
            margin-bottom: 20px;
            font-size: 1.8rem;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"], select {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #512da8; /* Purple submit button */
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 1.1rem;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #3f258d; /* Darker purple on hover */
        }

        input[type="submit"]:active {
            background-color: #2c1b64; /* Even darker purple when pressed */
        }

        /* Responsive design for mobile */
        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
            }

            h1 {
                font-size: 1.6rem;
            }

            input[type="submit"] {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Student Form</h1>
        <form action="save" method="post" enctype="multipart/form-data">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" required>
            
             <label for="photo">Image:</label>
            <input type="file" id="photo" name="photo" required>
            
            <label for="bname">Batch Name:</label>
            <select id="b.bname" name="b.bname" required>
                <option value="Morning Batch">Morning Batch</option>
                <option value="Evening Batch">Evening Batch</option>
            </select>
            
            <label for="fname">Faculty Name:</label>
            <select id="b.f.fname" name="b.f.fname" required>
                <option value="Kunal Sir">Kunal Sir</option>
                <option value="Mane Sir">Mane Sir</option>
                <option value="Nandu Sir">Nandu Sir</option>
            </select>
            
            <label for="cname">Course Name:</label>
            <select id="b.f.c.cname" name="b.f.c.cname" required>
                <option value="Java">Java</option>
                <option value="Python">Python</option>
                <option value="C++">C++</option>
                <option value="JavaScript">JavaScript</option>
                <option value="MySQL">MySQL</option>
            </select>
            
            <input type="submit" value="Save">
        </form>
    </div>

</body>
</html>

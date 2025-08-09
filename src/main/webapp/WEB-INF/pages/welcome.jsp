<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Doctor Management System</title>
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #b2ebf2);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            text-align: center;
            padding-top: 100px;
        }

        h1.title {
            color: #00796b;
            font-size: 36px;
            text-shadow: 2px 2px 4px gray;
        }

        .card {
            margin-top: 50px;
            display: inline-block;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 12px 20px rgba(0,0,0,0.3);
        }

        .card img {
            width: 75px;
            height: 75px;
            margin-bottom: 10px;
        }

        .card a {
            text-decoration: none;
            font-size: 22px;
            color: #00695c;
            font-weight: bold;
        }

        .card a:hover {
            color: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="title">Welcome To Doctor Management System<br>CRUD Operations</h1>

        <div class="card">
            <a href="report">
                <img src="images/report.png" alt="Show Report">
                <br>Show Doctor Report
            </a>
        </div>
    </div>
</body>
</html>

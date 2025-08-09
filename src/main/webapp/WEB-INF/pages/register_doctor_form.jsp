<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Registration</title>
    <style>
        body {
            background: linear-gradient(to right, #f5f7fa, #c3cfe2);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #2e7d32;
            padding: 20px;
            text-shadow: 1px 1px 2px #888;
        }

        .form-container {
            width: 450px;
            margin: 30px auto;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            padding: 30px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        form:input {
            width: 100%;
        }

        input[type="text"], input[type="number"] {
            width: 95%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        input[type="submit"], input[type="reset"] {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #388e3c;
        }

        input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #c62828;
        }
    </style>
</head>
<body>

    <h1>Welcome to Doctor Registration Page</h1>

    <div class="form-container">
        <form:form modelAttribute="docVO" method="post" action="register">
            <table>
                <tr>
                    <td>Doctor Name:</td>
                    <td><form:input path="dname" /></td>
                </tr>
                <tr>
                    <td>Specialization:</td>
                    <td><form:input path="specialization" /></td>
                </tr>
                <tr>
                    <td>Fee:</td>
                    <td><form:input path="fee" /></td>
                </tr>
                <tr>
                    <td>Qualification:</td>
                    <td><form:input path="qlfy" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Register Doctor" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="reset" value="Cancel" />
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

</body>
</html>

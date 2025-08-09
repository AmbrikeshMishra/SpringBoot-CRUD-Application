<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Doctor</title>
    <style>
        body {
            background: linear-gradient(to right, #fceabb, #f8b500);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #1b5e20;
            margin-top: 40px;
            text-shadow: 1px 1px 2px gray;
        }

        .form-box {
            width: 450px;
            margin: 30px auto;
            background-color: #fff8dc;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            padding: 30px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        input[type="text"], input[readonly] {
            width: 95%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        input[readonly] {
            background-color: #eeeeee;
            font-weight: bold;
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
            background-color: #43a047;
            color: white;
        }

        input[type="submit"]:hover {
            background-color: #2e7d32;
        }

        input[type="reset"] {
            background-color: #f44336;
            color: white;
        }

        input[type="reset"]:hover {
            background-color: #b71c1c;
        }
    </style>
</head>
<body>

    <h1>Doctors Details Edit Page</h1>

    <div class="form-box">
        <form:form modelAttribute="docVO" method="post" action="edit">
            <table>
                <tr>
                    <td>Doctor Id:</td>
                    <td><form:input path="did" readonly="true" /></td>
                </tr>
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
                        <input type="submit" value="Edit Doctor" />
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

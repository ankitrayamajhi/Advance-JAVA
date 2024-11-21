<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Day-2</title>
    <style>
        body { `
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px 30px;
            max-width: 400px;
            width: 100%;
        }

        .form-container h2 {
            text-align: center;
            color: #333333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555555;
        }

        input[type="text"], select, textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            outline: none;
            font-size: 14px;
        }

        input[type="radio"], input[type="checkbox"] {
            margin-right: 5px;
        }

        textarea {
            resize: none;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group-inline {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .form-group-inline label {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Registration Form</h2>
        <form method="post" action="day-2-result.jsp">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>

            <div class="form-group">
                <label for="time">Time:</label>
                <select id="time" name="time">
                    <option value="morning">Morning</option>
                    <option value="day">Day</option>
                    <option value="evening">Evening</option>
                </select>
            </div>

            <div class="form-group">
                <label>Gender:</label>
                <div class="form-group-inline">
                    <input type="radio" id="male" name="gender" value="Male" required>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="Female" required>
                    <label for="female">Female</label>
                </div>
            </div>

            <div class="form-group">
                <label>Courses:</label>
                <div class="form-group-inline">
                    <input type="checkbox" id="java" name="course" value="java">
                    <label for="java">Java</label>
                    <input type="checkbox" id="oracle" name="course" value="oracle">
                    <label for="oracle">Oracle</label>
                </div>
            </div>

            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" rows="5" cols="50" name="address" placeholder="Enter your address" required></textarea>
            </div>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>

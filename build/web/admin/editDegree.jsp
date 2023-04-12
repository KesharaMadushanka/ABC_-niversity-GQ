<%--degree_code 	degree_name 	degree_description 	degree_duration 	degree_credits--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Edit Degree</title>
    <!-- Link bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Link jquery and Javascript -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="margin-top:80px;background-size:cover;background-position:center;padding: 20px;">

    <%--    display alert if success--%>
    <% if ("true".equals(request.getParameter("success"))) { %>
    <div class="alert alert-success" role="alert">
        User successfully added!
    </div>
    <% } else if ("false".equals(request.getParameter("success"))) { %>
    <div class="alert alert-danger" role="alert">
        Error!
    </div>
    <%
        } %>
    <div class="card" style="background-color:rgba(255, 255, 255, 0.5)">
        <div class="card-header">
            Add New Degree
        </div>
        <div class="card-body">
            <form action="EditDegree" method="post">
                <div class="form-group mt-2">
                    <label for="degree_code">Enter Degree Code</label>
                    <input type="text" name="degree_code" id="degree_code" placeholder="Enter degree Code"
                           class="form-control" value="${degreeCode}"
                           required="" readonly>
                </div>
                <div class="form-group mt-2">
                    <label for="Degree_name">Enter Degree Name</label>
                    <input type="text" name="degree_name" id="Degree_name" placeholder="Enter Your Degree Name"
                           class="form-control" value="${degreeName}">
                </div>

                <div class="form-group mt-2">
                    <label for="degree_duration">Enter Degree Duration (Years)</label>
                    <input type="text" name="degree_duration" id="degree_duration" placeholder="Enter Degree Duration"
                           class="form-control" value="${degreeDuration}">
                </div>
                <div class="form-group mt-2">
                    <label for="degree_credits">Enter Degree Credits</label>
                    <input type="text" name="degree_credits" id="degree_credits" placeholder="Enter Your Degree Credits"
                           class="form-control" value="${degreeCredits}">
                </div>
                <div class="form-group mt-2">
                    <label for="degree_description">Enter Degree Description</label>
                    <textarea name="degree_description" id="degree_description" placeholder="Enter Degree Description"
                              class="form-control"> ${degreeDescription} </textarea>
                </div>
                <div class="form-group mt-2">
                    <input type="submit" value="Save Details" name="btnSave" id="btnSave" class="btn btn-success btn-sm">
                    <input type="reset" class="btn btn-warning btn-sm">
                    <a href="home.jsp" class="btn btn-danger btn-sm">Back</a>
                </div>


            </form>
        </div>
    </div>
</div>
</body>
</html>
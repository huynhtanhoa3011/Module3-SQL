<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deposit</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    <style>
        label.error {
            color: red;
        }
    </style>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="/resource/js/jquery.validate.min.js"></script>

</head>
<body class="container">
<div align="center">
    <caption><h2>Form Deposit Customers</h2></caption>
    <a href="/customers">Back to customer list</a>
    <%--    <h2><a href="/banking_system">Manager Customer</a></h2>--%>
    <form class="form-group needs-validation" method="post">
        <div class="row">
            <div class="col-6">
                <label>Name: </label>
                <input type="text" name="name" size="45" class="form-control" readonly
                <c:out value='${customer.getName()}'/>
            </div>
            <div class="col-md-6">
                <label>Email:</label>
                <input type="text" name="email" id="email" size="45" class="form-control" readonly
                <c:out value='${customer.getEmail()}'/>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label>Phone:</label>
                <input type="text" name="phone" id="phone" size="45" class="form-control" readonly
                <c:out value='${customer.getPhone()}'/>
            </div>
            <div class="col-md-6">
                <label>Address:</label>
                <input type="text" name="address" id="address" size="45" class="form-control" readonly
                <c:out value='${customer.getAddress()}'/>
            </div>
            <div class="col-md-6">
                <label>Balance</label>
                <input type="text" name="balance" class="form-control"/>
            </div>
        </div>
        <br>
        <div class="form-group">
            <button type="submit" class="btn btn-warning">Deposit</button>
        </div>
    </form>
</div>
</div>
</body>
</html>


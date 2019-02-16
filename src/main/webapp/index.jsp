<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/4.2.1/css/bootstrap.min.css">
</head>
<body>
<h2>Cookies</h2>
<br/>
<form action="/CookieCreate" method="post">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="cookie-name">Cookie name</span>
        </div>
        <input type="text" class="form-control" name="cookie-name" placeholder="Name" aria-label="Name" aria-describedby="basic-addon1">
    </div>
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="cookie-value">Cookie value</span>
        </div>
        <input type="text" class="form-control" name="cookie-value" placeholder="Value" aria-label="Value" aria-describedby="basic-addon1">
    </div>
    <div>
        <button class="btn btn-outline-secondary" type="submit">Add cookie</button>
    </div>
</form>

<form action="/cookieInfoList.jsp">
    <div>
        <button class="btn btn-outline-secondary" type="submit">Display all cookies</button>
    </div>
</form>

<form action="/cookieInfo.jsp" method="post">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="display-name">Cookie name</span>
        </div>
        <input type="text" class="form-control" name="cookie-name" placeholder="Name" aria-label="Name" aria-describedby="basic-addon1">
    </div>
    <div>
        <button class="btn btn-outline-secondary" type="submit">Display <cookie></cookie></button>
    </div>
</form>


<form action="/CookieDelete" method="post">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="delete-name">Cookie name</span>
        </div>
        <input type="text" class="form-control" name="delete-name" placeholder="Name" aria-label="Name" aria-describedby="basic-addon1">
    </div>
    <div>
        <button class="btn btn-outline-secondary" type="submit">Delete<cookie></cookie></button>
    </div>
</form>
</body>
</html>

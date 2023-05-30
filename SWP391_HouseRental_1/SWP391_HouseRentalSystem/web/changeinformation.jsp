<!DOCTYPE html>
<html>
    <head>
        <title>Change Information</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h2>Change Information</h2>
            <form method="post" action="changeinformation">
                <div class="form-group">
                    <label>Fullname: </label>
                    <input required="" type="text" name="fullname" class="form-control" placeholder="Enter fullname" value="${fullname}">
                    <p style="color: red">${alertF}</p>
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <input required="" type="text" name="address" class="form-control" placeholder="Enter address" value="${address}">
                </div>
                <div class="form-group">
                    <label>Phone number</label>
                    <input required="" type="text" name="phone" class="form-control" placeholder="Enter phone number" value="${phone}">
                    <p style="color: red">${alertP}</p>
                </div>
                <div class="form-group">
                    <p>Gender</p>
                    <p style="font-size: 20px">
                        <label style="margin-right: 2em"><input required="" style="margin-right: 1em;transform: scale(1.2)" type="radio" name="gender" value="1" ${gender==1?"checked":""}>Male </label>
                        <label><input required="" style="margin-right: 1em;transform: scale(1.2)" type="radio" name="gender" value="0" ${gender==0?"checked":""}>Female</label>
                    </p>
                </div>
                <div class="form-group">
                    <label>Profile picture: </label>
                    <input type="file" name="picture" required="">
                </div>
                <button type="submit" class="btn btn-primary">Change Information</button>               
            </form>
        </div>

    </body>
</html>
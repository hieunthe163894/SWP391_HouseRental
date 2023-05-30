<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h2>Change Password</h2>
            <form method="post" action="changepassword">
                <div class="form-group">
                    <label for="currentPassword">Current Password</label>
                    <input type="password" name="oldPass" class="form-control" id="currentPassword" placeholder="Enter current password">
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" name="newPass" class="form-control" id="newPassword" placeholder="Enter new password">
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" name="confirmPass" class="form-control" id="confirmPassword" placeholder="Confirm new password">
                </div>
                <button type="submit" class="btn btn-primary">Change Password</button>
            </form>
        </div>

    </body>
</html>
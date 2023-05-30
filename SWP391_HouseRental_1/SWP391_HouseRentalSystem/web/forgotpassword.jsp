<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Forgot Password</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>

        <div class="container">
            <h2>Forgot Password</h2>
            <form method="post" action="forgotpassword" id="frm">
                <div class="form-group">
                    <label for="currentPassword">Email</label>
                    <input value="${email}" type="text" name="email" class="form-control" id="currentPassword" placeholder="Enter email">
                    <p style="color: red">${errorE}</p>
                </div>
                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input value="${newPass}" type="password" name="newPass" class="form-control" id="newPassword" placeholder="Enter new password">
                    <p style="color: red">${alertP}</p>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input value="${confirmPass}" type="password" name="confirmPass" class="form-control" id="confirmPassword" placeholder="Confirm new password">
                </div>
                <div class="form-group zmdi zmdi-account material-icons-name">Security question:
                    <select name="question" required="" onchange="change()" style="width: 250px ; border-radius: 10px; padding-left: 10px ">
                        <c:forEach items="${lsQF}" var="q">
                            <c:if test="${idQ!=null}">
                                <option value="${q.getId()}" ${q.getId() == idQ ? "selected" : ""}>${q.getQuestion()}</option>
                            </c:if>
                            <c:if test="${idQ==null}">
                                <option value="${q.getId()}">${q.getQuestion()}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                    <p style="color: red">${alertS}</p>
                </div>

                <div class="form-group zmdi zmdi-account material-icons-name">Security answers:
                    <select required="" name="answer" style="width: 250px ; border-radius: 10px; padding-left: 10px " >
                        <c:forEach items="${lsA}" var="a">
                            <option value="${a.getId()}">${a.getAnswer()}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" name="forgot" class="btn btn-primary" value="1">Forgot Password</button>
            </form>
        </div>
        <script>
            function change() {
                var a = document.getElementById('frm').submit();
            }
        </script>
    </body>
</html>
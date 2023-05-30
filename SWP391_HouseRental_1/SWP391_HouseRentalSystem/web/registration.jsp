<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by Colorlib</title>

        <!-- Font Icon -->
        <link rel="stylesheet"
              href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
      
    </head>
    <body>

        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>

                            <form method="post" action="register" id="frm" class="register-form"
                                  id="register-form">

                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label> <input
                                        type="email" name="email" value="${email}" placeholder="Email" required=""/>
                                    <p style="color: red">${alertE}</p>
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="pass" value="${password}" id="pass" placeholder="Password" required=""/>
                                    <p style="color: red">${alertP}</p>
                                </div>
                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="repass" value="${repassword}" id="re_pass"
                                           placeholder="Repeat your password" required=""/>
                                </div>
                                <div class="form-group">
                                    <label for="name"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> <input
                                                type="text" name="fullname" value="${fullname}" id="fullname" placeholder="Full Name" required=""/>
                                            <p style="color: red">${alertF}</p>
                                </div>
                                
                                <div class="form-group">
                                    <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="number" name="phonenumber"
                                           placeholder="Phone numbers" value="${phone}" required=""/>
                                </div>
                                <div class="form-group">
                                    <label for="adress"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> 
                                            <input type="text" name="adress" placeholder="Adress" value="${address}" required=""/>
                                </div>
                                <div class="form-group" style="display: flex ; justify-content: left">
                                    <input style="width: 4.5em" type="radio" name="gender" value="1" ${gender.equals("1")?"checked":""} required="">Male
                                    <input style="width: 4.5em" type="radio" name="gender" value="0" ${gender.equals("0")?"checked":""} required="">Female
                                </div>
                                <div class="form-group" style="display: flex ; justify-content: left">
                                    <c:forEach items="${lsR}" var="r">
                                        <input type="radio" name="role" value="${r.getId()}" ${r.getId()== roleId ?"checked":""} required="">${r.getRole()}
                                    </c:forEach>
                                </div>
                                
                                <div class="form-group zmdi zmdi-account material-icons-name">Security question:
                                    <select required="" onchange="change()" style="width: 150px ; border-radius: 10px; padding-left: 10px " name="question">
                                        <c:forEach items="${lsQ}" var="q">
                                            <c:if test="${idQ!=null}">
                                                <option value="${q.getId()}" ${q.getId() == idQ ? "selected" : ""}>${q.getQuestion()}</option>
                                            </c:if>
                                            <c:if test="${idQ==null}">
                                                <option value="${q.getId()}">${q.getQuestion()}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group zmdi zmdi-account material-icons-name">Security answers:
                                    <select required="" style="width: 150px ; border-radius: 10px; padding-left: 10px " name="answer">
                                        <c:forEach items="${lsA}" var="a">
                                            <option value="${a.getId()}">${a.getAnswer()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div style="font-size: 20px">
                                    Profile picture: <input type="file" name="file" value="${picture}" size="60" required="">
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup"
                                           class="form-submit" value="Register" />
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure>
                                <img src="images/signup-image.jpg" alt="sing up image">
                            </figure>
                            <a href="Login.jsp" class="signup-image-link">I am already</a>
                        </div>
                    </div>
                </div>
            </section>

            --<!-- test cho b?n Thang -->
        </div>
        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
        <script>
                                        function change() {
                                            var a = document.getElementById('frm').submit();
                                        }
        </script>


    </body>
    <!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
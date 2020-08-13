<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html lang="en">
<jsp:include page="head.jsp"/>

<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Welcome to MBSTU Contact App
					</span>
            </div>

            <form:form class="login100-form validate-form" method="post" modelAttribute="student">
                <form:hidden path="id"/>
                <div class="wrap-input100 validate-input m-b-26" data-validate="Name is required">
                    <span class="label-input100">Name:</span>
                    <form:input class="input100" type="text" placeholder="Enter your name"  path="name"/>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" data-validate="Student ID is required">
                    <span class="label-input100">Student ID:</span>
                    <form:input class="input100" type="text" placeholder="Enter your Student ID"  path="stid"/>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" data-validate="Department is required">
                    <span class="label-input100">Department:</span>
                    <form:input class="input100" type="text" placeholder="Enter your Department" path="dept"/>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" data-validate="Session is required">
                    <span class="label-input100">Session:</span>
                    <form:input class="input100" type="text" placeholder="Enter your Session" path="session"/>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" data-validate="Mobile is required">
                    <span class="label-input100">Mobile:</span>
                    <form:input class="input100" type="text" placeholder="Enter your Mobile No." path="mobile"/>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input m-b-26" data-validate="Email is required">
                    <span class="label-input100">Email:</span>
                    <form:input class="input100" type="text" placeholder="Enter your Email" path="email"/>
                    <span class="focus-input100"></span>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Save
                    </button>
                </div>

            </form:form>

            <form:form action="/StudentList" method="get" modelAttribute="mylist">
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        View Student List
                    </button>
                </div>
            </form:form>

            <div>
                <br>
                <a style="color: lightseagreen;">All rights reserved @ Depertment of ICT</a>
            </div>
        </div>

    </div>

</div>

</body>

</html>
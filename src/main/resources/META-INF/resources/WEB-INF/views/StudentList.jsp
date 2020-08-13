<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->

<jsp:include page="head.jsp"/>

<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Data Table</strong>
                    </div>
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>SL#</th>
                                <th>Name</th>
                                <th>Student Id</th>
                                <th>Department</th>
                                <th>Session</th>
                                <th>Mobile</th>
                                <th>Email</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${mylist}" var="std" varStatus="idx">
                                <tr>
                                    <td>${idx.index+1}</td>
                                    <td>${std.name}</td>
                                    <td>${std.stid}</td>
                                    <td>${std.dept}</td>
                                    <td>${std.session}</td>
                                    <td>${std.mobile}</td>
                                    <td>${std.email}</td>
                                        <td>
                                        <a href="/EditList?id=${std.id}" style="color:green">Edit</a>
                                        <a href="/delete?id=${std.id}" style="color:red">Delete</a>
                                        </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div><!-- .animated -->
</div><!-- .content -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#bootstrap-data-table-export').DataTable();
    } );
</script>
</body>
</html>
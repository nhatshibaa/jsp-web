<%@ page import="com.t2010a.hellot2010aagain.entity.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: xuanhung
  Date: 5/12/22
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Student> listStudent = (List<Student>) request.getAttribute("listStudent");
%>
<html>
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resource/images/favicon.png">
<!-- Custom Stylesheet -->
<link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet"/>
<head>
    <title>List student</title>
</head>
<body>
<div class="nk-sidebar">
    <div class="nk-nav-scroll">
        <ul class="metismenu" id="menu">
            <li class="nav-label">Dashboard</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-speedometer menu-icon"></i><span class="nav-text">Dashboard</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./index.html">Home 1</a></li>
                    <!-- <li><a href="./index-2.html">Home 2</a></li> -->
                </ul>
            </li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-note menu-icon"></i><span class="nav-text">Forms</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./form-basic.html">Basic Form</a></li>
                    <li><a href="./form-validation.html">Form Validation</a></li>
                    <li><a href="./form-step.html">Step Form</a></li>
                    <li><a href="./form-editor.html">Editor</a></li>
                    <li><a href="./form-picker.html">Picker</a></li>
                </ul>
            </li>
            <li class="nav-label">Table</li>
            <li>
                <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                    <i class="icon-menu menu-icon"></i><span class="nav-text">Table</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="./table-basic.html" aria-expanded="false">Basic Table</a></li>
                    <li><a href="./table-datatable.html" aria-expanded="false">Data Table</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<div class="content-body">
    <div class="row page-titles mx-0">
        <div class="col p-md-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                <li class="breadcrumb-item active"><a href="javascript:void(0)">Home</a></li>
            </ol>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4>List student</h4>
                        <a href="/admin/students/create">Create new student</a>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered zero-configuration">
                                <thead>
                                <tr>
                                    <th>Rollnumber</th>
                                    <th>Fullname</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Date Of Birth</th>
                                    <th>Created At</th>
                                    <th>Updated At</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <%for (Student st : listStudent) {
                                    %>
                                <tr>
                                    <td>
                                        <%=st.getRollNumber()%>
                                    </td>
                                    <td>
                                        <%=st.getFullName()%>
                                    </td>
                                    <td>
                                        <%=st.getPhone()%>
                                    </td>
                                    <td>
                                        <%=st.getEmail()%>
                                    </td>
                                    <td>
                                        <%=st.getDob()%>
                                    </td>
                                    <td>
                                        <%=st.getCreatedAt()%>
                                    </td>
                                    <td>
                                        <%=st.getUpdatedAt()%>
                                    </td>
                                    <td>
                                        <%=st.getStatus()%>
                                    </td>
                                    <td>
                                        <a href="/admin/students/detail?id=<%=st.getRollNumber()%>">Detail</a>&nbsp;&nbsp;
                                        <a href="/admin/students/edit?id=<%=st.getRollNumber()%>">Edit</a>&nbsp;&nbsp;
                                        <a href="/admin/students/delete?id=<%=st.getRollNumber()%>"
                                           onclick="confirm('Are you sure?')">Delete</a>
                                    </td>
                                </tr>
                                    <%}%>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

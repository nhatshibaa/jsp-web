<%@ page import="com.t2010a.hellot2010aagain.entity.Student" %><%--
  Created by IntelliJ IDEA.
  User: xuanhung
  Date: 5/12/22
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student student = (Student) request.getAttribute("student");
    int action = (int) request.getAttribute("action");
    String url = "/admin/students/create";
    if (action == 2) {
        url = "/admin/students/edit";
    }
%>
<html>
<link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resource/images/favicon.png">
<!-- Custom Stylesheet -->
<link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet"/>
<head>
    <title>Create new student</title>
</head>
<body>
<div id="main-wrapper">
    <div class="nav-header">
        <div class="brand-logo">
            <a href="index.html">
                <b class="logo-abbr"><img src="${pageContext.request.contextPath}/resource/images/logo.png" alt=""> </b>
                <span class="logo-compact"><img src="${pageContext.request.contextPath}/resource/images/logo-compact.png" alt=""></span>
                <span class="brand-title">
                        <img src="${pageContext.request.contextPath}/resource/images/logo-text.png" alt="">
                    </span>
            </a>
        </div>
    </div>
    <div class="header">
        <div class="header-content clearfix">

            <div class="nav-control">
                <div class="hamburger">
                    <span class="toggle-icon"><i class="icon-menu"></i></span>
                </div>
            </div>
            <div class="header-left">
                <div class="input-group icons">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-transparent border-0 pr-2 pr-sm-3" id="basic-addon1"><i
                                class="mdi mdi-magnify"></i></span>
                    </div>
                    <input type="search" class="form-control" placeholder="Search Dashboard"
                           aria-label="Search Dashboard">
                    <div class="drop-down   d-md-none">
                        <form action="#">
                            <input type="text" class="form-control" placeholder="Search">
                        </form>
                    </div>
                </div>
            </div>
            <div class="header-right">
                <ul class="clearfix">
                    <li class="icons dropdown">
                        <div class="user-img c-pointer position-relative" data-toggle="dropdown">
                            <span class="activity active"></span>
                            <img src="${pageContext.request.contextPath}/resource/images/imgs/7.png" height="40" width="40" alt="">
                        </div>
                        <div class="drop-down dropdown-profile   dropdown-menu">
                            <div class="dropdown-content-body">
                                <ul>
                                    <li>
                                        <a href="app-profile.html"><i class="icon-user"></i> <span>Profile</span></a>
                                    </li>
                                    <li>
                                        <a href="email-inbox.html"><i class="icon-envelope-open"></i> <span>Inbox</span>
                                            <div class="badge gradient-3 badge-pill badge-primary">3</div>
                                        </a>
                                    </li>

                                    <hr class="my-2">
                                    <li>
                                        <a href="page-lock.html"><i class="icon-lock"></i> <span>Lock Screen</span></a>
                                    </li>
                                    <li><a href="page-login.html"><i class="icon-key"></i> <span>Logout</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="nk-sidebar">
        <div class="nk-nav-scroll">
            <ul class="metismenu" id="menu">
                <li class="nav-label">Dashboard</li>
                <li>
                    <a href="javascript:void()" aria-expanded="false">
                        <i class="icon-speedometer menu-icon"></i><span class="nav-text">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a class="has-arrow" href="javascript:void()" aria-expanded="false">
                        <i class="icon-note menu-icon"></i><span class="nav-text">Students</span>
                    </a>
                    <ul aria-expanded="false">
                        <li><a href="/admin/students/create">Create Student</a></li>
                        <li><a href="/admin/students/list">List Students</a></li>
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
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Input Style</h4>
                            <a href="/admin/students/list">Back to list</a>
                            <div class="basic-form">
                                <form action="<%=url%>" method="post">
                                    <div class="form-group">
                                        <input type="text" name="rollNumber" class="form-control input-rounded"
                                               placeholder="Roll Number"
                                               value="<%=student.getRollNumber()%>" <%=action == 2 ? "readonly":""%>>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="fullName" class="form-control input-rounded"
                                               placeholder="Full Name" value="<%=student.getFullName()%>">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control input-rounded"
                                               placeholder="Email" value="<%=student.getEmail()%>">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="phone" class="form-control input-rounded"
                                               placeholder="Phone" value="<%=student.getPhone()%>">
                                    </div>
                                    <div class="form-group">
                                        <input type="date" name="birthday"
                                               class="complex-colorpicker form-control input-rounded"
                                               placeholder="Birthday" value="<%=student.getDobString()%>">
                                    </div>
                                    <div>
                                        <input type="submit" class="btn btn-info" value="Save">
                                        <input type="reset" class="btn btn-warning" value="Reset">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="copyright">
                <p>Copyright &copy; Designed & Developed by <a href="https://themeforest.net/user/quixlab">Nhat dep
                    try</a> 2022
                </p>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/resource/plugins/common/common.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/custom.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/settings.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/gleek.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/styleSwitcher.js"></script>
</body>
</html>

<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=Cp1251" pageEncoding="Cp1251" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
    <meta http-equiv="content-type" content="text/html; charset=cp1251">
    <title>tecno-tab | home</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div role="navigation">
    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
        <div class="container">
            <a class="navbar-brand" href="/userPage">
                <img src="static/images/logo.png" alt="" height="50">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/payment">�������</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/deposit">��������</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/credit">�������</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/exchange">����������� �����</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">� ���</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contacts">��������</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/welcome">�����</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>


<c:choose>
    <c:when test="${mode=='MODE_HOME' }">

        <div class="container-fluid " id="homediv">

            <div class="row">

                <div class="jumbotron center">

                    <h1 align="center">Welcome to Zepter Bank</h1>
                    <center><img src="static/images/templatemo_image_01.png" alt="Bank" width="60%"/></center>
                </div>

            </div>


        </div>
    </c:when>

    <c:when test="${mode=='MODE_UPDATE' }">
        <div class="container text-center">
            <h3>Update User</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-user">
                <input type="hidden" name="id" value="${user.id}"/>
                <div class="form-group">
                    <label class="control-label col-md-3">Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="name"
                               value="${user.name}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Login</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="login"
                               value="${user.login}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password </label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="password"
                               value="${user.password}"/>
                    </div>
                </div>

                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Update"/>
                </div>
            </form>
        </div>
    </c:when>
</c:choose>


<footer class="navbar-fixed-bottom row-fluid navbar-light bg-light">
    <div class="navbar-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="copy">� 2019 <span class="nowrap">��� �<a class="spec_decor"
                                                                          href="/welcome">������ ����</a>�</span>
                    </div>
                    <div class="foo_info">
                        �������� ������������� ����� ���������� �������� N31 �� 28 ��� 2013 ���� �� �������������
                        ���������� ������������. <br>
                        <br>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>���������� � �����</h4>
                    <ul class="foo_nav">

                        <li><a href="/bank/newsroom/" class="undecor">�����-�����</a></li>

                        <li><a href="/jobs/" class="undecor">��������</a></li>

                        <li><a href="/bank/information/" class="undecor">�������� ����������</a></li>

                        <li><a href="/bank/contacts/requisites/" class="undecor">���������</a></li>

                    </ul>
                    <div class="social_block">
                        <div class="social_block_grid">
                            <a href="https://www.facebook.com/myzepterbank/" target="_blank"
                               class="social_block_item">
                                <img src="/static/images/social_facebook.svg" alt="facebook">
                            </a>
                            <a href="https://vk.com/myzepterbank" target="_blank" class="social_block_item">
                                <img src="/static/images/social_vk.svg" alt="vk">
                            </a>
                            <a href="https://www.instagram.com/zepterbank/" target="_blank"
                               class="social_block_item">
                                <img src="/static/images/social_instagram.svg" alt="instargram">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>�������</h4>
                    <ul class="foo_nav">

                        <li><a href="/bank/contacts" class="undecor">��������</a></li>

                        <li><a href="/offices/" class="undecor">��� ��� �����</a></li>

                        <li><a href="/personal/cards/ibank/" class="undecor">������ ������</a></li>

                        <li><a href="/bank/information/rates/" class="undecor">������� ��������������</a></li>

                        <li><a href="/personal/services/currency/" class="undecor">����� �����</a></li>

                    </ul>
                </div>
            </div>

        </div>
    </div>
</footer>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
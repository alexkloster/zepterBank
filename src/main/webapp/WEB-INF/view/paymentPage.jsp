<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=Cp1251" pageEncoding="Cp1251" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="page-container bg-light">
    <div class="content-wrap bg-white">
        <div role="navigation">
            <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                <div class="container">
                    <a class="navbar-brand" href="/user/userPage">
                        <img src="static/images/logo.png" alt="" height="50">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                            aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
                            </li>
                            <li class="nav-item active">
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
        <br>

        <c:choose>
            <c:when test="${mode == 'MODE_PAYMENT'}">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <h5>��������� ������� ������������� ${currentUser.name}</h5>
                        </div>
                        <div class="col-lg-6">
                            <div class="float-right">
                                <a class="btn btn-primary" href="/payment-newPayment">����� ������</a>
                            </div>
                        </div>
                    </div>

                    <br>
                    <div class="row">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>��� �������</th>
                                    <th>��������</th>
                                    <th>����� �������</th>
                                    <th>�����</th>
                                    <th>����</th>
                                    <th>������</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="payment" items="${payments}">
                                    <tr>
                                        <td>${payment.paymentType}</td>
                                        <td>${payment.description}</td>
                                        <td>${payment.number}</td>
                                        <td>${payment.sum}</td>
                                        <td><fmt:formatDate value="${payment.date}" pattern="dd-MM-yyyy" /></td>
                                        <td>${payment.client.name}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:when>

            <c:when test="${mode == 'MODE_NEW_PAYMENT'}">

                <div class="container">

                    <div class="row">
                        <div class="col-lg-6">
                            <h5>����� ������ ������������� ${currentUser.name}</h5>
                        </div>
                    </div>

                    <br>
                    <c:choose>
                        <c:when test="${client_mode == null}">
                            <div class="row">
                                <form class="form-horizontal col-lg-12" method="POST" action="/payment-find-client">
                                    <div class="row">
                                        <div class="col-lg-2">
                                            <div class="form-group">
                                                <label class="control-label col-lg-12">����� ��������</label>
                                                <div class="col-lg-8">
                                                    <input type="text" class="form-control" name="passportSeries"
                                                           value="${client.passportSeries }"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="passportNumber"
                                                           value="${client.passportNumber }"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3">
                                            <label class="control-label col-lg-10"> </label>
                                            <div class="form-group col-lg-12">
                                                <input type="submit" class="btn btn-primary" value="�����"/>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                        <c:when test="${client_mode == 'NEW'}">
                            <div class="alert alert-info">
                                ������ ������� ���, ���������� �������� ������.
                            </div>
                            <div class="row">
                                <form class="form-horizontal col-lg-12" method="POST" action="/payment-save-client">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-12">��� �������</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="name"
                                                           value="${client.name }"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-12">���� ��������</label>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <input type="date" class="form-control" name="birth"
                                                               value="${client.birth }"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="passportSeries"
                                                           value="${client.passportSeries }"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="passportNumber"
                                                           value="${client.passportNumber }"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">�����</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="address"
                                                           value="${client.address }"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <input type="text" class="form-control" name="phone"
                                                           value="${client.phone }"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <div class="float-right">
                                                        <input type="submit" class="btn btn-primary"
                                                               value="���������"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                        <c:when test="${client_mode == 'EXISTS'}">
                            <div class="row">
                                <form class="form-horizontal col-lg-12" method="POST"
                                      action="/payment-save-payment">

                                    <div class="row">
                                        <h4>������:</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <form:input path="client.id" type="hidden" name="id"/>
                                                <label class="control-label col-lg-12">��� �������</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="name"
                                                                path="client.name" disabled="true"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-12">���� ��������</label>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <form:input type="text" class="form-control" name="birth"
                                                                    path="client.birth" disabled="true"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control"
                                                                name="passportSeries"
                                                                path="client.passportSeries" disabled="true"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control"
                                                                name="passportNumber"
                                                                path="client.passportNumber" disabled="true"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">�����</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="address"
                                                                path="client.address" disabled="true"/>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-10">����� ��������</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="phone"
                                                                path="client.phone" disabled="true"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <h4>������</h4>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <form:input path="payment.id" type="hidden" name="id"/>
                                            <div class="form-group">
                                                <label class="control-label col-lg-12">��� �������</label>
                                                <div class="col-lg-12">
                                                    <form:select path="payment.paymentType" id="type">
                                                        <c:forEach var="type" items="${paymentTypes}">
                                                            <form:option value="${type}">${type}</form:option>
                                                        </c:forEach>
                                                    </form:select>
                                                </div>
                                                <br>
                                                <label class="control-label col-lg-12">��������</label>
                                                <div class="col-lg-12">
                                                    <div class="form-group">
                                                        <form:input type="text" class="form-control"
                                                                    name="description"
                                                                    path="payment.description"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">����� �������</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="number"
                                                                path="payment.number"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label class="control-label col-lg-10">�����</label>
                                                <div class="col-lg-12">
                                                    <form:input type="text" class="form-control" name="sum"
                                                                path="payment.sum"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <div class="col-lg-12">
                                                    <div class="float-right">
                                                        <input type="submit" class="btn btn-primary"
                                                               value="���������"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </c:when>
                    </c:choose>

                </div>
            </c:when>
        </c:choose>
        <br>
    </div>

    <footer class="navbar navbar-light bg-light">
        <div class="container bg-light">
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
    </footer>
</div>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>
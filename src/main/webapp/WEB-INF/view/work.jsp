<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<div class="page-container bg-light">
    <div class="content-wrap bg-white">
        <c:choose>
            <c:when test="${NAVIGATION_MODE == null}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/welcome">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarResponsive"
                                    aria-controls="navbarResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/welcome"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/about">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/login">Войти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'user'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/userPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarUserResponsive"
                                    aria-controls="navbarUserResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarUserResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/userPage"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/payment">Платежи</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/deposit">Депозиты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/credit">Кредиты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exchange">Калькулятор валют</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/about">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>
            <c:when test="${NAVIGATION_MODE == 'admin'}">
                <div role="navigation">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light static-top">
                        <div class="container">
                            <a class="navbar-brand" href="/adminPage">
                                <img src="static/images/logo.png" alt="" height="50">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarAdminResponsive"
                                    aria-controls="navbarAdminResponsive" aria-expanded="false"
                                    aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarAdminResponsive">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/adminPage"><i class="fa fa-home"></i> </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/users">Работа с пользователями</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/statistic">Статистика</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/about">О нас</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/contacts">Контакты</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/exit">Выйти</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </c:when>

        </c:choose>
        <div class="container">
            <div class="inner_content">
                <div class="wrapper clearfix">
                    <section class="content_header brd clearfix">
                        <h1 class="h1">Вакансии</h1>
                    </section>
                </div>
                <div id="vacancies-list">
                    <section class="content_area vac_list">
                        <div class="row js_row">
                            <div class="wrapper">
                                <div class="row_head clearfix">
                                    <div class="rh_title">
                                        <a href="#courseCollapse0" class="ct_link iconafter arr_down_bl"
                                           data-toggle="collapse" aria-expanded="false" aria-controls="courseCollapse0"><span
                                                class="undecor">Специалист сектора технической поддержки Управления информационных технологий</span></a>
                                    </div>
                                    <div class="rh_desc">Minsk</div>
                                </div>
                                <div id="courseCollapse0" class="row_body collapse">
                                    <div class="row_body_wrap">
                                        <a href="#courseCollapse0" data-toggle="collapse"
                                           aria-controls="courseCollapse0" class="icon_hover icon_close"></a>
                                        <div class="wrapper">
                                            <div class="row clearfix">
                                                <div class="row_content">
                                                    <h3 class="h3">Наши требования</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">Высшее техническое образование</li>
                                                        <li class="def_list_item">Опыт работы: от 1-3 лет, возможно без
                                                            опыта работы
                                                        </li>
                                                        <li class="def_list_item">Обязательно: знание ОС Microsoft
                                                            winXP/win2003/win2008, TCP/IP
                                                        </li>
                                                        <li class="def_list_item">Желательно: знание Linux (RedHat,
                                                            CentOS, Oracle Linux, Ubuntu), серверное оборудование HP,
                                                            VMWare
                                                        </li>
                                                        <li class="def_list_item">Умение работать в команде</li>
                                                        <li class="def_list_item">Коммуникабельность</li>
                                                        <li class="def_list_item">Исполнительность</li>
                                                    </ul>
                                                    <h3 class="h3">Ваши обязанности</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">Поддержка пользователей в возникающих
                                                            вопросах, сопровождение клиент-интернет банка, настройка
                                                            сети и ПК
                                                        </li>
                                                        <li class="def_list_item">Поддержка пользователей банка,
                                                            поддержка клиентов по системе интернет (клиент) банк,
                                                            поддержка пользователей
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Режим работы</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">С 08.30 до 17.30 (а так же вторые
                                                            смены по графику с 11.30 до 19.00)
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Отправить резюме</h3>
                                                    <div class="form vac_form">

                                                        <form name="FORM_2000635991" action="/jobs/" method="post"
                                                              enctype="multipart/form-data" class="form"
                                                              id="form-containeryRQedaqHYm" novalidate="">
                                                            <div id="success_form_yRQedaqHYm">
                                                                <div class="modal" style="display: none;">
                                                                    <div class="modal_dialog">
                                                                        <div class="md_content success_msg iconbefore">
                                                                            <a title="Close"
                                                                               class="icon_hover icon_close js_close_modal"
                                                                               href="#" data-dismiss="modal"></a>
                                                                            <h3 class="h3">Резюме отправлено</h3>
                                                                            <p>Мы свяжемся с вами в ближайшее время. В
                                                                                случае заинтересованности в дальнейшем
                                                                                будет проведено собеседование</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal_backdrop fade in"
                                                                     style="display:none;"></div>
                                                            </div>


                                                            <div class="form_row ">
                                                                <div class="form_label">Как вас зовут<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="text" class="text_input"
                                                                           name="FORM_2000635991[NAME]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Контактный телефон<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="tel" class="text_input phone_input"
                                                                           placeholder="+375 (__) ___-__-__"
                                                                           name="FORM_2000635991[PHONE]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">E-mail</div>
                                                                <div class="form_field">
                                                                    <input type="email" class="text_input"
                                                                           name="FORM_2000635991[EMAIL]" value="">
                                                                    <div class="error_msg"></div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Комментарии</div>
                                                                <div class="form_field">
                                                                    <textarea class="text_area"
                                                                              name="FORM_2000635991[PREVIEW_TEXT]"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_field">
                                                                    <label class="ct_link iconbefore icon_add file_upload js_add_resume">
                                                                        <span class="undecor">Прикрепить резюме</span>
                                                                        <mark>Файл не выбран</mark>
                                                                        <input type="file" name="FORM_2000635991[FILE]">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2000635991[VACANCY]"
                                                                       value="Специалист сектора технической поддержки Управления информационных технологий">
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2000635991[CITY]"
                                                                       value="2377">
                                                            </div>


                                                            <div class="form_row">
                                                                <div class="form_field">
                                                                    <button class="btn btn_def" type="submit"
                                                                            data-send-text="Отправить резюме"
                                                                            data-default-text="Отправить резюме"
                                                                            name="SAVE">Отправить резюме
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <script type="text/javascript">
                                                            var formGenerator = new FormGenerator({
                                                                formContainer: '#form-containeryRQedaqHYm',
                                                                ajaxMode: true,
                                                                captchaImg: '.captcha-image',
                                                                captchaReload: '.captcha-reload',
                                                                uri: '/jobs/',
                                                                formID: 'yRQedaqHYm'
                                                            });
                                                            formGenerator.init();
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="row_sidebar">
                                                    <h3 class="h3">Татьяна Томашова</h3>
                                                    <div class="phone_link"><i class="iconbefore icon_phone_b"></i><span
                                                            class="">+375 17 331 89 49, +375 44 580 09 61</span></div>
                                                    <ul class="rc_list">
                                                        <li class="rc_list_item">Пн.-чт. 8:30-17:30, пт 8:30-16:15</li>
                                                        <li class="rc_list_item">Выходной: суббота, воскресенье</li>
                                                    </ul>
                                                    <h3 class="h3">Анкета соискателя</h3>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa kandidata.docx"
                                                           class="file_ttl ct_link">Анкета для соискателя</a>
                                                    </div>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa dla prohozdenia praktiki.docx"
                                                           class="file_ttl ct_link">Анкета для студента</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row js_row">
                            <div class="wrapper">
                                <div class="row_head clearfix">
                                    <div class="rh_title">
                                        <a href="#courseCollapse1" class="ct_link iconafter arr_down_bl"
                                           data-toggle="collapse" aria-expanded="false" aria-controls="courseCollapse1"><span
                                                class="undecor">Cпециалист по ОРБУ (категория по результатам собеседования) </span></a>
                                    </div>
                                    <div class="rh_desc">Minsk</div>
                                </div>
                                <div id="courseCollapse1" class="row_body collapse">
                                    <div class="row_body_wrap">
                                        <a href="#courseCollapse1" data-toggle="collapse"
                                           aria-controls="courseCollapse1" class="icon_hover icon_close"></a>
                                        <div class="wrapper">
                                            <div class="row clearfix">
                                                <div class="row_content">
                                                    <h3 class="h3">Наши требования</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">Высшее экономическое образование или
                                                            среднее специальное без предъявления требований к стажу
                                                            работы
                                                        </li>
                                                        <li class="def_list_item">Опыт работы: желательно</li>
                                                        <li class="def_list_item">Клиентоориентированность</li>
                                                        <li class="def_list_item">Ответственность</li>
                                                        <li class="def_list_item">Исполнительность</li>
                                                        <li class="def_list_item">Коммуникабельность</li>
                                                        <li class="def_list_item">Порядочность</li>
                                                        <li class="def_list_item">Стрессоустойчивость</li>
                                                    </ul>
                                                    <h3 class="h3">Ваши обязанности</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">Расчетно-кассовое обслуживание ЮЛ и
                                                            ИП
                                                        </li>
                                                        <li class="def_list_item">Расчетно-кассовое обслуживание ФЛ</li>
                                                        <li class="def_list_item">Валютно-обменные операции</li>
                                                        <li class="def_list_item">Прием платежей</li>
                                                    </ul>
                                                    <h3 class="h3">Отправить резюме</h3>
                                                    <div class="form vac_form">

                                                        <form name="FORM_1396766156" action="/jobs/" method="post"
                                                              enctype="multipart/form-data" class="form"
                                                              id="form-containerZo6TAL13IM" novalidate="">
                                                            <div id="success_form_Zo6TAL13IM">
                                                                <div class="modal" style="display: none;">
                                                                    <div class="modal_dialog">
                                                                        <div class="md_content success_msg iconbefore">
                                                                            <a title="Close"
                                                                               class="icon_hover icon_close js_close_modal"
                                                                               href="#" data-dismiss="modal"></a>
                                                                            <h3 class="h3">Резюме отправлено</h3>
                                                                            <p>Мы свяжемся с вами в ближайшее время. В
                                                                                случае заинтересованности в дальнейшем
                                                                                будет проведено собеседование</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal_backdrop fade in"
                                                                     style="display:none;"></div>
                                                            </div>


                                                            <div class="form_row ">
                                                                <div class="form_label">Как вас зовут<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="text" class="text_input"
                                                                           name="FORM_1396766156[NAME]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Контактный телефон<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="tel" class="text_input phone_input"
                                                                           placeholder="+375 (__) ___-__-__"
                                                                           name="FORM_1396766156[PHONE]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">E-mail</div>
                                                                <div class="form_field">
                                                                    <input type="email" class="text_input"
                                                                           name="FORM_1396766156[EMAIL]" value="">
                                                                    <div class="error_msg"></div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Комментарии</div>
                                                                <div class="form_field">
                                                                    <textarea class="text_area"
                                                                              name="FORM_1396766156[PREVIEW_TEXT]"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_field">
                                                                    <label class="ct_link iconbefore icon_add file_upload js_add_resume">
                                                                        <span class="undecor">Прикрепить резюме</span>
                                                                        <mark>Файл не выбран</mark>
                                                                        <input type="file" name="FORM_1396766156[FILE]">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_1396766156[VACANCY]"
                                                                       value="Cпециалист по ОРБУ (категория по результатам собеседования) ">
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_1396766156[CITY]"
                                                                       value="2377">
                                                            </div>


                                                            <div class="form_row">
                                                                <div class="form_field">
                                                                    <button class="btn btn_def" type="submit"
                                                                            data-send-text="Отправить резюме"
                                                                            data-default-text="Отправить резюме"
                                                                            name="SAVE">Отправить резюме
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <script type="text/javascript">
                                                            var formGenerator = new FormGenerator({
                                                                formContainer: '#form-containerZo6TAL13IM',
                                                                ajaxMode: true,
                                                                captchaImg: '.captcha-image',
                                                                captchaReload: '.captcha-reload',
                                                                uri: '/jobs/',
                                                                formID: 'Zo6TAL13IM'
                                                            });
                                                            formGenerator.init();
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="row_sidebar">
                                                    <h3 class="h3">Татьяна Томашова</h3>
                                                    <div class="phone_link"><i class="iconbefore icon_phone_b"></i><span
                                                            class="">+375 17 331 89 49, +375 44 580 09 61</span></div>
                                                    <ul class="rc_list">
                                                        <li class="rc_list_item">Пн.-чт. 8:30-17:30, пт 8:30-16:15</li>
                                                        <li class="rc_list_item">Выходной: суббота, воскресенье</li>
                                                    </ul>
                                                    <h3 class="h3">Анкета соискателя</h3>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa kandidata.docx"
                                                           class="file_ttl ct_link">Анкета для соискателя</a>
                                                    </div>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa dla prohozdenia praktiki.docx"
                                                           class="file_ttl ct_link">Анкета для студента</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row js_row">
                            <div class="wrapper">
                                <div class="row_head clearfix">
                                    <div class="rh_title">
                                        <a href="#courseCollapse2" class="ct_link iconafter arr_down_bl"
                                           data-toggle="collapse" aria-expanded="false" aria-controls="courseCollapse2"><span
                                                class="undecor">Начальник Управления сопровождения банковских операций</span></a>
                                    </div>
                                    <div class="rh_desc">Minsk</div>
                                </div>
                                <div id="courseCollapse2" class="row_body collapse">
                                    <div class="row_body_wrap">
                                        <a href="#courseCollapse2" data-toggle="collapse"
                                           aria-controls="courseCollapse2" class="icon_hover icon_close"></a>
                                        <div class="wrapper">
                                            <div class="row clearfix">
                                                <div class="row_content">
                                                    <h3 class="h3">Наши требования</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">высшее экономическое образование</li>
                                                        <li class="def_list_item">опыт работы не менее 5 лет на
                                                            аналогичном участке, в том числе не менее года опыта
                                                            руководящей работы
                                                        </li>
                                                        <li class="def_list_item">опытный пользователь ПК, ПО «SC Bank
                                                            NT»
                                                        </li>
                                                        <li class="def_list_item">практическое применения
                                                            законодательства РБ в области бухгалтерского учета
                                                            банковских операций
                                                        </li>
                                                        <li class="def_list_item">наличие ДипИФР, пройденная в НБ оценка
                                                            соответствия должности или готовность ее пройти
                                                        </li>
                                                        <li class="def_list_item">организованность и умение оперативно
                                                            принимать управленческие решения
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Ваши обязанности</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">руководство управлением</li>
                                                        <li class="def_list_item">координация и контроль работы
                                                            персонала по сопровождению
                                                        </li>
                                                        <li class="def_list_item">операций на межбанковском рынке</li>
                                                        <li class="def_list_item">операций по кредитованию юридических и
                                                            физических лиц
                                                        </li>
                                                        <li class="def_list_item">операций по текущим, вкладным
                                                            (депозитным) счетам юридических и физических лиц
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Мы предлагаем</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">работа в команде профессионалов</li>
                                                        <li class="def_list_item">возможность профессионального развития
                                                            и обучения
                                                        </li>
                                                        <li class="def_list_item">возможность участия в корпоративных
                                                            спортивно-развлекательных мероприятиях
                                                        </li>
                                                        <li class="def_list_item">стабильный и достойный уровень оплаты
                                                            труда
                                                        </li>
                                                        <li class="def_list_item">уровень оплаты труда определяется по
                                                            результатам собеседования
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Отправить резюме</h3>
                                                    <div class="form vac_form">

                                                        <form name="FORM_2720464376" action="/jobs/" method="post"
                                                              enctype="multipart/form-data" class="form"
                                                              id="form-containerMntGilodGz" novalidate="">
                                                            <div id="success_form_MntGilodGz">
                                                                <div class="modal" style="display: none;">
                                                                    <div class="modal_dialog">
                                                                        <div class="md_content success_msg iconbefore">
                                                                            <a title="Close"
                                                                               class="icon_hover icon_close js_close_modal"
                                                                               href="#" data-dismiss="modal"></a>
                                                                            <h3 class="h3">Резюме отправлено</h3>
                                                                            <p>Мы свяжемся с вами в ближайшее время. В
                                                                                случае заинтересованности в дальнейшем
                                                                                будет проведено собеседование</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal_backdrop fade in"
                                                                     style="display:none;"></div>
                                                            </div>


                                                            <div class="form_row ">
                                                                <div class="form_label">Как вас зовут<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="text" class="text_input"
                                                                           name="FORM_2720464376[NAME]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Контактный телефон<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="tel" class="text_input phone_input"
                                                                           placeholder="+375 (__) ___-__-__"
                                                                           name="FORM_2720464376[PHONE]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">E-mail</div>
                                                                <div class="form_field">
                                                                    <input type="email" class="text_input"
                                                                           name="FORM_2720464376[EMAIL]" value="">
                                                                    <div class="error_msg"></div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Комментарии</div>
                                                                <div class="form_field">
                                                                    <textarea class="text_area"
                                                                              name="FORM_2720464376[PREVIEW_TEXT]"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_field">
                                                                    <label class="ct_link iconbefore icon_add file_upload js_add_resume">
                                                                        <span class="undecor">Прикрепить резюме</span>
                                                                        <mark>Файл не выбран</mark>
                                                                        <input type="file" name="FORM_2720464376[FILE]">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2720464376[VACANCY]"
                                                                       value="Начальник Управления сопровождения банковских операций">
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2720464376[CITY]"
                                                                       value="2377">
                                                            </div>


                                                            <div class="form_row">
                                                                <div class="form_field">
                                                                    <button class="btn btn_def" type="submit"
                                                                            data-send-text="Отправить резюме"
                                                                            data-default-text="Отправить резюме"
                                                                            name="SAVE">Отправить резюме
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <script type="text/javascript">
                                                            var formGenerator = new FormGenerator({
                                                                formContainer: '#form-containerMntGilodGz',
                                                                ajaxMode: true,
                                                                captchaImg: '.captcha-image',
                                                                captchaReload: '.captcha-reload',
                                                                uri: '/jobs/',
                                                                formID: 'MntGilodGz'
                                                            });
                                                            formGenerator.init();
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="row_sidebar">
                                                    <h3 class="h3"></h3>
                                                    <div class="phone_link"><i class="iconbefore icon_phone_b"></i><span
                                                            class=""></span></div>
                                                    <h3 class="h3">Анкета соискателя</h3>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa kandidata.docx"
                                                           class="file_ttl ct_link">Анкета для соискателя</a>
                                                    </div>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa dla prohozdenia praktiki.docx"
                                                           class="file_ttl ct_link">Анкета для студента</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row js_row">
                            <div class="wrapper">
                                <div class="row_head clearfix">
                                    <div class="rh_title">
                                        <a href="#courseCollapse3" class="ct_link iconafter arr_down_bl"
                                           data-toggle="collapse" aria-expanded="false" aria-controls="courseCollapse3"><span
                                                class="undecor">Главный специалист Управления экономики и финансов</span></a>
                                    </div>
                                    <div class="rh_desc">Minsk</div>
                                </div>
                                <div id="courseCollapse3" class="row_body collapse">
                                    <div class="row_body_wrap">
                                        <a href="#courseCollapse3" data-toggle="collapse"
                                           aria-controls="courseCollapse3" class="icon_hover icon_close"></a>
                                        <div class="wrapper">
                                            <div class="row clearfix">
                                                <div class="row_content">
                                                    <h3 class="h3">Наши требования</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">высшее экономическое образование</li>
                                                        <li class="def_list_item">опыт работы от 3 лет на аналогичном
                                                            участке в банковской сфере
                                                        </li>
                                                        <li class="def_list_item">знание банковского законодательства по
                                                            направлению деятельности подразделения
                                                        </li>
                                                        <li class="def_list_item">знание английского (приветствуется)
                                                        </li>
                                                        <li class="def_list_item">аналитический склад ума, нацеленность
                                                            на результат, умение принимать решения, умение работать в
                                                            команде
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Ваши обязанности</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">составление пруденциальной отчетности
                                                            с последующим предоставлением в НБ РБ в регламентированные
                                                            сроки
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Мы предлагаем</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">комфортный офис в центре Минска (ст.м.
                                                            пл.Победы)
                                                        </li>
                                                        <li class="def_list_item">достойный уровень заработной платы
                                                            (определяется по результатам собеседования) и карьерный рост
                                                            в банковской сфере
                                                        </li>
                                                        <li class="def_list_item">возможность профессионального развития
                                                            (бесплатное корпоративное обучение у ведущих бизнес-тренеров
                                                            РБ и центрах обучения)
                                                        </li>
                                                        <li class="def_list_item">возможность участия в корпоративных
                                                            спортивно-развлекательных мероприятиях
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Отправить резюме</h3>
                                                    <div class="form vac_form">

                                                        <form name="FORM_2957220958" action="/jobs/" method="post"
                                                              enctype="multipart/form-data" class="form"
                                                              id="form-containerYvam3RGMBp" novalidate="">
                                                            <div id="success_form_Yvam3RGMBp">
                                                                <div class="modal" style="display: none;">
                                                                    <div class="modal_dialog">
                                                                        <div class="md_content success_msg iconbefore">
                                                                            <a title="Close"
                                                                               class="icon_hover icon_close js_close_modal"
                                                                               href="#" data-dismiss="modal"></a>
                                                                            <h3 class="h3">Резюме отправлено</h3>
                                                                            <p>Мы свяжемся с вами в ближайшее время. В
                                                                                случае заинтересованности в дальнейшем
                                                                                будет проведено собеседование</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal_backdrop fade in"
                                                                     style="display:none;"></div>
                                                            </div>


                                                            <div class="form_row ">
                                                                <div class="form_label">Как вас зовут<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="text" class="text_input"
                                                                           name="FORM_2957220958[NAME]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Контактный телефон<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="tel" class="text_input phone_input"
                                                                           placeholder="+375 (__) ___-__-__"
                                                                           name="FORM_2957220958[PHONE]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">E-mail</div>
                                                                <div class="form_field">
                                                                    <input type="email" class="text_input"
                                                                           name="FORM_2957220958[EMAIL]" value="">
                                                                    <div class="error_msg"></div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Комментарии</div>
                                                                <div class="form_field">
                                                                    <textarea class="text_area"
                                                                              name="FORM_2957220958[PREVIEW_TEXT]"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_field">
                                                                    <label class="ct_link iconbefore icon_add file_upload js_add_resume">
                                                                        <span class="undecor">Прикрепить резюме</span>
                                                                        <mark>Файл не выбран</mark>
                                                                        <input type="file" name="FORM_2957220958[FILE]">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2957220958[VACANCY]"
                                                                       value="Главный специалист Управления экономики и финансов">
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2957220958[CITY]"
                                                                       value="2377">
                                                            </div>


                                                            <div class="form_row">
                                                                <div class="form_field">
                                                                    <button class="btn btn_def" type="submit"
                                                                            data-send-text="Отправить резюме"
                                                                            data-default-text="Отправить резюме"
                                                                            name="SAVE">Отправить резюме
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <script type="text/javascript">
                                                            var formGenerator = new FormGenerator({
                                                                formContainer: '#form-containerYvam3RGMBp',
                                                                ajaxMode: true,
                                                                captchaImg: '.captcha-image',
                                                                captchaReload: '.captcha-reload',
                                                                uri: '/jobs/',
                                                                formID: 'Yvam3RGMBp'
                                                            });
                                                            formGenerator.init();
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="row_sidebar">
                                                    <h3 class="h3">Татьяна Томашова</h3>
                                                    <div class="phone_link"><i class="iconbefore icon_phone_b"></i><span
                                                            class="">+375 17 331 89 49, +375 44 580 09 61</span></div>
                                                    <ul class="rc_list">
                                                        <li class="rc_list_item">Пн.-чт. 8:30-17:30, пт 8:30-16:15</li>
                                                        <li class="rc_list_item">Выходной: суббота, воскресенье</li>
                                                    </ul>
                                                    <h3 class="h3">Анкета соискателя</h3>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa kandidata.docx"
                                                           class="file_ttl ct_link">Анкета для соискателя</a>
                                                    </div>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa dla prohozdenia praktiki.docx"
                                                           class="file_ttl ct_link">Анкета для студента</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row js_row">
                            <div class="wrapper">
                                <div class="row_head clearfix">
                                    <div class="rh_title">
                                        <a href="#courseCollapse4" class="ct_link iconafter arr_down_bl"
                                           data-toggle="collapse" aria-expanded="false" aria-controls="courseCollapse4"><span
                                                class="undecor">Главный специалист/заместитель руководителя Отдела банковских платежных карточек</span></a>
                                    </div>
                                    <div class="rh_desc">Minsk</div>
                                </div>
                                <div id="courseCollapse4" class="row_body collapse">
                                    <div class="row_body_wrap">
                                        <a href="#courseCollapse4" data-toggle="collapse"
                                           aria-controls="courseCollapse4" class="icon_hover icon_close"></a>
                                        <div class="wrapper">
                                            <div class="row clearfix">
                                                <div class="row_content">
                                                    <h3 class="h3">Наши требования</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">высшее экономическое или техническое
                                                            образование
                                                        </li>
                                                        <li class="def_list_item">опыт работы от 3 лет на аналогичном
                                                            участке в банковской системе
                                                        </li>
                                                        <li class="def_list_item">знание банковского законодательства по
                                                            направлению деятельности подразделения
                                                        </li>
                                                        <li class="def_list_item">знание правил МПС (Visa, БЕЛКАРТ)</li>
                                                        <li class="def_list_item">умение производить настройки карточных
                                                            продуктов в ПО SC-Retail, CMS (ОАО "БПЦ")
                                                        </li>
                                                        <li class="def_list_item">проактивность, ответственность,
                                                            внимательность
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Ваши обязанности</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">взаимодействие с МПС (Visa, БЕЛКАРТ)
                                                            по вопросам членства и текущей деятельности, внедрение новых
                                                            продуктов/услуг
                                                        </li>
                                                        <li class="def_list_item">настройка карточных продуктов,
                                                            вознаграждений в соответствии с принятыми изменениями и
                                                            внедрением новых продуктов
                                                        </li>
                                                        <li class="def_list_item">контроль работы продуктов, выявление
                                                            ошибок/инициирование устранения ошибок, недочетов в
                                                            продуктах
                                                        </li>
                                                        <li class="def_list_item">работа с ПО CMS (ОАО "БПЦ") -
                                                            настройка, сопровождение, внедрение доработок
                                                        </li>
                                                        <li class="def_list_item">работа с SC-Retail - настройка,
                                                            сопровождение, внедрение доработок
                                                        </li>
                                                        <li class="def_list_item">разработка ЛНПА</li>
                                                    </ul>
                                                    <h3 class="h3">Мы предлагаем</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">комфортный офис в центре Минска (ст.м.
                                                            пл.Победы)
                                                        </li>
                                                        <li class="def_list_item">работа в команде профессионалов</li>
                                                        <li class="def_list_item">возможность участия в корпоративных
                                                            спортивно-развлекательных мероприятиях
                                                        </li>
                                                        <li class="def_list_item">должность и уровень оплаты труда
                                                            определяется по результатам собеседования
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Отправить резюме</h3>
                                                    <div class="form vac_form">

                                                        <form name="FORM_2099032493" action="/jobs/" method="post"
                                                              enctype="multipart/form-data" class="form"
                                                              id="form-containerRoCmTjLfeT" novalidate="">
                                                            <div id="success_form_RoCmTjLfeT">
                                                                <div class="modal" style="display: none;">
                                                                    <div class="modal_dialog">
                                                                        <div class="md_content success_msg iconbefore">
                                                                            <a title="Close"
                                                                               class="icon_hover icon_close js_close_modal"
                                                                               href="#" data-dismiss="modal"></a>
                                                                            <h3 class="h3">Резюме отправлено</h3>
                                                                            <p>Мы свяжемся с вами в ближайшее время. В
                                                                                случае заинтересованности в дальнейшем
                                                                                будет проведено собеседование</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal_backdrop fade in"
                                                                     style="display:none;"></div>
                                                            </div>


                                                            <div class="form_row ">
                                                                <div class="form_label">Как вас зовут<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="text" class="text_input"
                                                                           name="FORM_2099032493[NAME]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Контактный телефон<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="tel" class="text_input phone_input"
                                                                           placeholder="+375 (__) ___-__-__"
                                                                           name="FORM_2099032493[PHONE]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">E-mail</div>
                                                                <div class="form_field">
                                                                    <input type="email" class="text_input"
                                                                           name="FORM_2099032493[EMAIL]" value="">
                                                                    <div class="error_msg"></div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Комментарии</div>
                                                                <div class="form_field">
                                                                    <textarea class="text_area"
                                                                              name="FORM_2099032493[PREVIEW_TEXT]"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_field">
                                                                    <label class="ct_link iconbefore icon_add file_upload js_add_resume">
                                                                        <span class="undecor">Прикрепить резюме</span>
                                                                        <mark>Файл не выбран</mark>
                                                                        <input type="file" name="FORM_2099032493[FILE]">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2099032493[VACANCY]"
                                                                       value="Главный специалист/заместитель руководителя Отдела банковских платежных карточек">
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_2099032493[CITY]"
                                                                       value="2377">
                                                            </div>


                                                            <div class="form_row">
                                                                <div class="form_field">
                                                                    <button class="btn btn_def" type="submit"
                                                                            data-send-text="Отправить резюме"
                                                                            data-default-text="Отправить резюме"
                                                                            name="SAVE">Отправить резюме
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <script type="text/javascript">
                                                            var formGenerator = new FormGenerator({
                                                                formContainer: '#form-containerRoCmTjLfeT',
                                                                ajaxMode: true,
                                                                captchaImg: '.captcha-image',
                                                                captchaReload: '.captcha-reload',
                                                                uri: '/jobs/',
                                                                formID: 'RoCmTjLfeT'
                                                            });
                                                            formGenerator.init();
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="row_sidebar">
                                                    <h3 class="h3">Татьяна Томашова</h3>
                                                    <div class="phone_link"><i class="iconbefore icon_phone_b"></i><span
                                                            class="">+375 17 331 89 49, +375 44 580 09 61</span></div>
                                                    <ul class="rc_list">
                                                        <li class="rc_list_item">Пн.-чт. 8:30-17:30, пт 8:30-16:15</li>
                                                        <li class="rc_list_item">Выходной: суббота, воскресенье</li>
                                                    </ul>
                                                    <h3 class="h3">Анкета соискателя</h3>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa kandidata.docx"
                                                           class="file_ttl ct_link">Анкета для соискателя</a>
                                                    </div>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa dla prohozdenia praktiki.docx"
                                                           class="file_ttl ct_link">Анкета для студента</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row js_row">
                            <div class="wrapper">
                                <div class="row_head clearfix">
                                    <div class="rh_title">
                                        <a href="#courseCollapse5" class="ct_link iconafter arr_down_bl"
                                           data-toggle="collapse" aria-expanded="false" aria-controls="courseCollapse5"><span
                                                class="undecor">Кассир (специалист по оказанию розничных банковских услуг)</span></a>
                                    </div>
                                    <div class="rh_desc">Minsk</div>
                                </div>
                                <div id="courseCollapse5" class="row_body collapse">
                                    <div class="row_body_wrap">
                                        <a href="#courseCollapse5" data-toggle="collapse"
                                           aria-controls="courseCollapse5" class="icon_hover icon_close"></a>
                                        <div class="wrapper">
                                            <div class="row clearfix">
                                                <div class="row_content">
                                                    <h3 class="h3">Наши требования</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">средне-специальное / высшее
                                                            экономическое образование
                                                        </li>
                                                        <li class="def_list_item">желание и умение работать с деньгами
                                                        </li>
                                                        <li class="def_list_item">умение сглаживать конфликтные ситуации
                                                            с клиентами
                                                        </li>
                                                        <li class="def_list_item">опыт работы в банке приветствуется
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Ваши обязанности</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">валютно-обменные операции</li>
                                                        <li class="def_list_item">прием платежей</li>
                                                    </ul>
                                                    <h3 class="h3">Мы предлагаем</h3>
                                                    <ul class="def_list">
                                                        <li class="def_list_item">стабильную работу с гарантированным
                                                            доходом
                                                        </li>
                                                        <li class="def_list_item">оформление согласно ТК РБ</li>
                                                        <li class="def_list_item">корпоративные мероприятия и
                                                            познавательные туры
                                                        </li>
                                                        <li class="def_list_item">комфортное рабочее место - центр
                                                            города (ул.Платонова, 1б)
                                                        </li>
                                                    </ul>
                                                    <h3 class="h3">Отправить резюме</h3>
                                                    <div class="form vac_form">

                                                        <form name="FORM_3288111895" action="/jobs/" method="post"
                                                              enctype="multipart/form-data" class="form"
                                                              id="form-container9dByrtUQDb" novalidate="">
                                                            <div id="success_form_9dByrtUQDb">
                                                                <div class="modal" style="display: none;">
                                                                    <div class="modal_dialog">
                                                                        <div class="md_content success_msg iconbefore">
                                                                            <a title="Close"
                                                                               class="icon_hover icon_close js_close_modal"
                                                                               href="#" data-dismiss="modal"></a>
                                                                            <h3 class="h3">Резюме отправлено</h3>
                                                                            <p>Мы свяжемся с вами в ближайшее время. В
                                                                                случае заинтересованности в дальнейшем
                                                                                будет проведено собеседование</p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="modal_backdrop fade in"
                                                                     style="display:none;"></div>
                                                            </div>


                                                            <div class="form_row ">
                                                                <div class="form_label">Как вас зовут<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="text" class="text_input"
                                                                           name="FORM_3288111895[NAME]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Контактный телефон<span
                                                                        style="color:red">*</span></div>
                                                                <div class="form_field">
                                                                    <input type="tel" class="text_input phone_input"
                                                                           placeholder="+375 (__) ___-__-__"
                                                                           name="FORM_3288111895[PHONE]" value="">
                                                                    <div class="error_msg">Заполните это поле</div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">E-mail</div>
                                                                <div class="form_field">
                                                                    <input type="email" class="text_input"
                                                                           name="FORM_3288111895[EMAIL]" value="">
                                                                    <div class="error_msg"></div>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_label">Комментарии</div>
                                                                <div class="form_field">
                                                                    <textarea class="text_area"
                                                                              name="FORM_3288111895[PREVIEW_TEXT]"></textarea>
                                                                </div>
                                                            </div>

                                                            <div class="form_row ">
                                                                <div class="form_field">
                                                                    <label class="ct_link iconbefore icon_add file_upload js_add_resume">
                                                                        <span class="undecor">Прикрепить резюме</span>
                                                                        <mark>Файл не выбран</mark>
                                                                        <input type="file" name="FORM_3288111895[FILE]">
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_3288111895[VACANCY]"
                                                                       value="Кассир (специалист по оказанию розничных банковских услуг)">
                                                            </div>
                                                            <div class="form_row" style="margin-top: 0">
                                                                <input type="hidden" name="FORM_3288111895[CITY]"
                                                                       value="2377">
                                                            </div>


                                                            <div class="form_row">
                                                                <div class="form_field">
                                                                    <button class="btn btn_def" type="submit"
                                                                            data-send-text="Отправить резюме"
                                                                            data-default-text="Отправить резюме"
                                                                            name="SAVE">Отправить резюме
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <script type="text/javascript">
                                                            var formGenerator = new FormGenerator({
                                                                formContainer: '#form-container9dByrtUQDb',
                                                                ajaxMode: true,
                                                                captchaImg: '.captcha-image',
                                                                captchaReload: '.captcha-reload',
                                                                uri: '/jobs/',
                                                                formID: '9dByrtUQDb'
                                                            });
                                                            formGenerator.init();
                                                        </script>
                                                    </div>
                                                </div>
                                                <div class="row_sidebar">
                                                    <h3 class="h3">Татьяна Томашова</h3>
                                                    <div class="phone_link"><i class="iconbefore icon_phone_b"></i><span
                                                            class="">+375 17 331 89 49, +375 44 580 09 61</span></div>
                                                    <ul class="rc_list">
                                                        <li class="rc_list_item">Пн.-чт. 8:30-17:30, пт 8:30-16:15</li>
                                                        <li class="rc_list_item">Выходной: суббота, воскресенье</li>
                                                    </ul>
                                                    <h3 class="h3">Анкета соискателя</h3>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa kandidata.docx"
                                                           class="file_ttl ct_link">Анкета для соискателя</a>
                                                    </div>
                                                    <div class="row_m">
                                                        <div class="btn btn_anim btn_file"><span>DOC</span></div>
                                                        <a href="/upload/document/Anketa dla prohozdenia praktiki.docx"
                                                           class="file_ttl ct_link">Анкета для студента</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <div class="preload"></div>

                </div>
            </div>
        </div>

    </div>

    <br>
    <footer class="navbar navbar-light bg-light">
        <div class="container bg-light">
            <div class="row">
                <div class="col-lg-4">
                    <div class="copy">© 2019 <span class="nowrap">ЗАО «<a class="spec_decor"
                                                                          href="/welcome">Цептер Банк</a>»</span>
                    </div>
                    <div class="foo_info">
                        Лицензия Национального банка Республики Беларусь N31 от 28 мая 2013 года на осуществление
                        банковской деятельности. <br>
                        <br>
                    </div>
                </div>

                <div class="col-lg-4">
                    <h4>Информация о банке</h4>
                    <ul class="foo_nav">

                        <li><a href="/jobs" class="undecor">Вакансии</a></li>

                        <li><a href="/requisites" class="undecor">Реквизиты</a></li>

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
                    <h4>Клиенту</h4>
                    <ul class="foo_nav">

                        <li><a href="/contacts" class="undecor">Контакты</a></li>

                        <li><a href="/offices" class="undecor">Как нас найти</a></li>

                        <li><a href="/welcome" class="undecor">Цептер Онлайн</a></li>

                    </ul>
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
<%@page import="by.bsuir.bank.dao.entity.user.UserEntity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${empty sessionScope.locale}">
  <c:set var="locale" value="ru" scope="session"/>
</c:if>
<fmt:setLocale value="${locale}" scope="session"/>
<fmt:setBundle basename="message" var="msgs" />
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title></title>
  <script src="https://npmcdn.com/tether@1.2.4/dist/js/tether.min.js"></script>
  <link rel="stylesheet" href="/resources/css/style.css">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="/resources/js/app.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
        integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
          integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
          crossorigin="anonymous"></script>
</head>
<body>

<div id="templatemo_top_panel_wrapper_outter">
  <div id="templatemo_top_panel_wrapper_inner">
    <div id="templatemo_top_panel">
      <div id="templatemo_menu">

        <div id="myjquerymenu" class="jquerycssmenu">
          <ul>
            <li><a href=<fmt:message bundle="${msgs}" key="jsp.index"/>><fmt:message bundle="${msgs}" key="menu.main"/></a></li>
            <li><a href=<fmt:message bundle="${msgs}" key="jsp.about"/>><fmt:message bundle="${msgs}" key="menu.about"/></a></li>
            <li><a href=<fmt:message bundle="${msgs}" key="jsp.contacts"/>><fmt:message bundle="${msgs}" key="menu.contact"/></a></li>

          </ul>
          <br style="clear: left" />

        </div>

      </div>
      <br/><br/>
      <center><img src="/resources/images/zepter_logo_color.png" alt="Emblem" /> </center>

    </div> <!-- end of templatemo_top_panel -->

  </div> <!-- end of templatemo_top_panel_wrapper_inner -->
</div> <!-- end of  templatemo_top_panel_wrapper_outter -->

<div id="templatemo_content_wrapper">

  <div id="templatemo_content">


    <div id="templatemo_main_content_top"></div>
    <div id="templatemo_main_coontent">

      <div id="main_column">

        <div class="post_box">
          <div class="box"></div> <!-- end of date box -->

          <div class="post_body">
            <center><img src="/resources/images/templatemo_image_01.png" alt="Bank" /></center><p/>
            <p><fmt:message bundle="${msgs}" key="index.hello"/>  </p>

          </div> <!-- end of post body -->

        </div> <!-- end of a post -->

      </div> <!-- end of main column -->

      <div id="side_column">

        <form id="EnterUser" >
          <input type="hidden" name="command" value="EnterUser" />
          <div class="side_column_section">
            <h3><fmt:message bundle="${msgs}" key="user.autoriz"/></h3>
            <h4><fmt:message bundle="${msgs}" key="user.login"/></h4><input class="form-control" id="login" pattern="[a-zA-Z0-9\s]+" type="text" required ><br/>
            <h4><fmt:message bundle="${msgs}" key="user.password"/></h4><input class="form-control" id="password" type="password" required ><br/>


            <input type="button" class="btn btn-secondary" value="<fmt:message bundle="${msgs}" key="user.regist"/>" onclick="register()">
            <p><input type="button" class="btn btn-secondary" value="<fmt:message bundle="${msgs}" key="user.enter"/>" onclick="authorization()"></p>
            <br/>
            <h3>
              <c:if test="${user != null && user.id!=null}">
                <c:out value="No user"/>
              </c:if>
            </h3>
          </div>
        </form>


        <input type="button" value="<fmt:message bundle="${msgs}" key="user.regist"/>" onclick="register()">

        <button type="submit" style="border: 0; background: transparent" onclick="setLocation('ru-RU')">
          <img src="/resources/images/rus.png" alt="Русский" />
        </button>

        <button type="submit" style="border: 0; float: right; background: transparent" onclick="setLocation('en-EN')">
          <img src="/resources/images/eng.png" alt="English" />
        </button>


      </div> <!-- end of side column -->

      <div class="cleaner"></div>
    </div> <!-- end of main content -->

  </div> <!-- templatemo_content -->

</div> <!-- end of templatemo_content_wrapper -->

<div id="templatemo_footer_wrapper">

  <div id="templatemo_footer">

    <div class="section_w550">

      <div class="section_vk vk">
      </div>

    </div>

  </div> <!-- end of templatemo_footer -->

  <div class="cleaner"></div>
</div> <!-- end of templatemo_footer_wrapper -->
</body>
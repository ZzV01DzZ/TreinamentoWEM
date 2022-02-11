<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="templating" uri="/WEB-INF/vgnExtTemplating.tld" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



      <templating:contentItem result="content" />

      <div class="w3-container" id="services" style="margin-top:75px">
        <h1 class="w3-xxxlarge w3-text-red"><b>${content.title}</b></h1>
        <hr style="width:50px;border:5px solid red" class="w3-round">
      </div>

      ${content.description}
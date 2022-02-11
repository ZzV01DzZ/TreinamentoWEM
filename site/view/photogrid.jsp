<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="templating" uri="/WEB-INF/vgnExtTemplating.tld" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <templating:initComponent /> 
    


      <c:forEach var="content" items="${component.results}" varStatus="status">

        <div class="w3-row-padding">
          <div class="w3-half">

            <img src="${content.image.placementPath}" style="width:100%" onclick="onClick(this)"
              alt="${content.administrative_name}">

          </div>

          <div class="w3-half">

            <img src="${content.image.placementPath}" style="width:100%" onclick="onClick(this)"
              alt="${content.administrative_name}">

          </div>
        </div>

      </c:forEach>



      <!--ACERTAR ITERAÇÃO - COLUNAS REPETIDAS-->
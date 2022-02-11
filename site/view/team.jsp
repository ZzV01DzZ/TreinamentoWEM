<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="templating" uri="/WEB-INF/vgnExtTemplating.tld" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


      <c:catch var="ex">
        <templating:initComponent /> 

        <div class="w3-container" id="designers" style="margin-top:75px">
          <h1 class="w3-xxxlarge w3-text-red"><b>${not empty component.title ? component.title : 'Designers'}</b></h1>
          <hr style="width:50px;border:5px solid red" class="w3-round">
          <p>${not empty component.header ? component.header : 'The best team in the world.'}</p>

          <p>${component.footer}</p>
        </div>

        <div class="w3-row-padding w3-grayscale">
          <c:forEach var="content" items="${component.results}" varStatus="status">
              <div class="w3-col m4 w3-margin-bottom">
                <div class="w3-light-grey">
                  <img src="${content.image.placementPath}" alt="John" style="width:100%">
                  <div class="w3-container">
                    <h3>${content.name}</h3>
                    <p class="w3-opacity">${content.office}</p>
                    <p>${content.description}</p>
                  </div>
                </div>
              </div>
          </c:forEach>
        </div>


      </c:catch>
      <c:if test="${ex != null}">
        <!--p>
          The exception is: ${ex} <br/>
          There is an exception: ${ex.message}
        </p-->
      </c:if>
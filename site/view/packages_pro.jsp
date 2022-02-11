<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="templating" uri="/WEB-INF/vgnExtTemplating.tld" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <c:catch var="ex">


        <templating:contentItem result="content" />

        
          <div class="w3-half">
            <ul class="w3-ul w3-light-grey w3-center">
              <li class="w3-red w3-xlarge w3-padding-32">${content.title}</li>
              <li class="w3-padding-16">${content.project_name}</li>
              <li class="w3-padding-16">${content.support_time}</li>
              <li class="w3-padding-16">${content.photography}</li>
              <li class="w3-padding-16">${content.discount_percentage}</li>
              <li class="w3-padding-16">${content.deals_type}</li>
              <li class="w3-padding-16">
                <h2>${content.price}</h2>
                <span class="w3-opacity">${content.payment_condition}</span>
              </li>
              <li class="w3-light-grey w3-padding-24">
                <button class="w3-button w3-red w3-padding-large w3-hover-black">${content.button}</button>
              </li>
            </ul>
          </div>
        

      </c:catch>
      <c:if test="${ex != null}">
        <!--p>
        The exception is: ${ex} <br/>
        There is an exception: ${ex.message}
      </p-->
      </c:if>
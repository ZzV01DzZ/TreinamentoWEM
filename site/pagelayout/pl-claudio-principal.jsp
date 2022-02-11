<!--Imports importantes (charset, wem e jstl)-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="templating" uri="/WEB-INF/vgnExtTemplating.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<templating:contentRegion name="claudio-photogrid" scope="page" />
  
<div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
  <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption"></p>
  </div>
</div>


<templating:contentRegion name="claudio-services" scope="page" />

<templating:contentRegion name="claudio-team" scope="page" />  

<templating:contentRegion name="claudio-packages-title" scope="page" />  

<div class="w3-row-padding">
<templating:contentRegion name="claudio-packages-basic" scope="page" />  
<templating:contentRegion name="claudio-packages-pro" scope="page" />  
</div>

<templating:contentRegion name="claudio-contact" scope="page" /> 
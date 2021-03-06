<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="templating" uri="/WEB-INF/vgnExtTemplating.tld" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <!DOCTYPE html>
      <html lang="en">

      <title>Treinamento - Cláudio Leal - Design</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
      <style>
        body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
        body {font-size:16px;}
        .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
        .w3-half img:hover{opacity:1}    
      </style>

      <templating:styleSheet />
      <templating:theme />
      <templating:scripts />

      <body>

        <templating:in-context-edit />

        <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding"
          style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
          <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft"
            style="width:100%;font-size:22px">Close Menu</a>
          <div class="w3-container">
            <h3 class="w3-padding-64"><b>Company<br>Name</b></h3>
          </div>
          <div class="w3-bar-block">
            <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a>
            <a href="#showcase" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Showcase</a>
            <a href="#services" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Services</a>
            <a href="#designers" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Designers</a>
            <a href="#packages" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Packages</a>
            <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact</a>
          </div>
        </nav>


        <header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
          <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
          <span>Company Name</span>
        </header>


        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu"
          id="myOverlay"></div>


        <div class="w3-main" style="margin-left:340px;margin-right:40px">


          <div class="w3-container" style="margin-top:80px" id="showcase">
            <h1 class="w3-jumbo"><b>Interior Design</b></h1>
            <h1 class="w3-xxxlarge w3-text-red"><b>Showcase.</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
          </div>

          <templating:pageLayout />

        </div>

        <div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px">
          <p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS"
              target="_blank" class="w3-hover-opacity">w3.css</a></p>
        </div>

      </body>

      </html>


      <script>
        function w3_open() {
          document.getElementById("mySidebar").style.display = "block";
          document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
          document.getElementById("mySidebar").style.display = "none";
          document.getElementById("myOverlay").style.display = "none";
        }
        function onClick(element) {
          document.getElementById("img01").src = element.src;
          document.getElementById("modal01").style.display = "block";
          var captionText = document.getElementById("caption");
          captionText.innerHTML = element.alt;
        }
      </script>
<!DOCTYPE html>
<html>
<head>
<title>Weather, Currency Exchange, and News Apps</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}
</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="#home" class="w3-bar-item w3-button">Welcome</a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="#Weather" class="w3-bar-item w3-button">Weather</a>
      <a href="#Currency" class="w3-bar-item w3-button">Currency Exchange</a>
      <a href="#News" class="w3-bar-item w3-button">News</a>
      <a href="#News" class="w3-bar-item w3-button">Contact</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">
  <img class="w3-image" src="https://img.freepik.com/premium-vector/sunny-blue-cloud-kids-background-011_615845-621.jpg?ga=GA1.1.1286375805.1742353003&semt=ais_hybrid" alt="Weather App Background" width="1600" height="800">
  <div class="w3-display-middle w3-padding-large w3-opacity">
       <h1 class="w3-xxlarge" style="font-weight: bold; color:black;">Weather App</h1>
    <form action="weather" method="get">
                <div class="form-group">
                    <label for="city">Enter City:</label>
                    <input type="text" id="city" name="city" required placeholder="e.g., Tokyo">
                </div>
                <button type="submit">Get Weather</button>
            </form>
  </div>
</header>

<!-- Page content -->
<div class="w3-content" style="max-width:1100px">

  <!-- currency Section -->

    <div class="w3-row w3-padding-64" id="Currency Exchange">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="https://th.bing.com/th/id/OIP.OETEld-cacpNNjNahk6x2AHaHa?rs=1&pid=ImgDetMain" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">Currency Exchange Rate App</h1><br>
      <h5 class="w3-center">We provide live exchange rates</h5>
      <a class="app-button" href="${pageContext.request.contextPath}/currencyExchangeHome" style="font-weight: bold; text-align: center; display: block;">
                Check Exchange Rate Here
     </a>
    </div>
  </div>
  
  <hr>
  
  <!-- news Section -->
<div class="w3-row w3-padding-64" id="News Apps">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">News App</h1><br>
      <form action="news" method="get">
        <button type="submit">Check Today's One Top News</button>
      </form>
      <p class="w3-text-grey">From Headlines to Insights – Discover What Matters Today</p><br>
    </div>

    <div class="w3-col l6 w3-padding-large">
      <img src="https://th.bing.com/th/id/OIP.l2LaIEwjLz5TRqHLeAdhdAHaEK?rs=1&pid=ImgDetMain" 
           class="w3-round w3-image w3-opacity-min" 
           alt="news" 
           style="width: 120%; max-width: 200%;">
    </div>
</div>


  <hr>

  <!-- Contact Section -->
<div class="w3-container w3-padding-64" id="contact">
 <h1>Contact</h1><br>
<img class="w3-image" src="https://pps.innovatureinc.com/wp-content/uploads/2022/10/5-1.jpg" alt="contactus" width="1600" height="800">
 <div class="w3-container w3-padding-64 w3-opacity">
    <p>We are trying to add more features to our website, Do not hesitate to contact us.</p>
    <p class="w3-text-blue-grey w3-large"><b>Grateful for Your Visit – Stay Curious, Stay Informed!</b></p>
    <p>You can contact us by phone 080-6666-7777 or email weathercurrencynews@wcn.com</p>
    
  </div>

  
<!-- End page content -->
</div>

<!-- Footer -->
<footer class="w3-center w3-light-grey w3-padding-32">
  <p>Created with Passion by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">AmitKhemnar</a></p>
</footer>

</body>
</html>

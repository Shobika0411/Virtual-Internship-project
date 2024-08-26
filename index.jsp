<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="praveen.spcorporatedao"%>
    
         <jsp:useBean class="praveen.spcorporate" id="spc" scope="session"></jsp:useBean>
 <jsp:setProperty property="*" name="spc"></jsp:setProperty>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SS CORPORATE LIMITED</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
     body
{
  margin: 0;
  padding: 0;
  
  /* make it look decent enough */
  background: #fffcfc;
  color: #000000;
  font-family: "Avenir Next", "Avenir", sans-serif;
}

img{
  width: 120px;

}
#menuToggle
{
  display: block;
  position: relative;
  top: 50px;
  left: 50px;
  height: 100%;
  
  z-index: 1;
  
  -webkit-user-select: none;
  user-select: none;
}

#menuToggle a
{
  text-decoration: none;
  color: #ffffff;
  
  transition: color 0.3s ease;
}

#menuToggle a:hover
{
  color: rgb(188, 182, 238);
}


#menuToggle input
{
  display: block;
  width: 40px;
  height: 1000px;
  position: absolute;
  top: -7px;
  left: -5px;
  
  cursor: pointer;
  
  opacity: 0; /* hide this */
  z-index: 2; /* and place it over the hamburger */
  
  -webkit-touch-callout: none;
}

/*
 * Just a quick hamburger
 */
#menuToggle span
{
  display: block;
  width: 33px;
  height: 4px;
  margin-bottom: 5px;
  position: relative;
  
  background: white;
  border-radius: 3px;
  
  z-index: 1;
  
  transform-origin: 4px 0px;
  
  transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0),
              background 0.5s cubic-bezier(0.77,0.2,0.05,1.0),
              opacity 0.55s ease;
}

#menuToggle span:first-child
{
  transform-origin: 0% 0%;
}

#menuToggle span:nth-last-child(2)
{
  transform-origin: 0% 100%;
}

/* 
 * Transform all the slices of hamburger
 * into a crossmark.
 */
#menuToggle input:checked ~ span
{
  opacity: 1;
  transform: rotate(45deg) translate(-2px, -1px);
  background: #f3dcdc;
}

/*
 * But let's hide the middle one.
 */
#menuToggle input:checked ~ span:nth-last-child(3)
{
  opacity: 0;
  transform: rotate(0deg) scale(0.2, 0.2);
}

/*
 * Ohyeah and the last one should go the other direction
 */
#menuToggle input:checked ~ span:nth-last-child(2)
{
  transform: rotate(-45deg) translate(0, -1px);
}

/*
 * Make this absolute positioned
 * at the top left of the screen
 */
#menu
{
  position: absolute;
  width: 150px;
  margin: -100px 0 0 -50px;
  padding: 50px;
  padding-top: 125px;
  
  background: rgb(36, 36, 113);
  list-style-type: none;
  -webkit-font-smoothing: antialiased;
  /* to stop flickering of text in safari */
  
  transform-origin: 0% 0%;
  transform: translate(-100%, 0);
  
  transition: transform 0.5s cubic-bezier(0.77,0.2,0.05,1.0);
}

#menu li
{
  padding: 10px 0;
  font-size: 22px;
}

/*
 * And let's slide it in from the left
 */
#menuToggle input:checked ~ ul
{
  transform: none;
}
link:hover{
  color: #000000;
}
.blink {
            animation: blinker 1.5s linear infinite;
            color: red;
            font-size: 1.5em;
            /* Larger, responsive font size */
            margin-bottom: 20px;
        }

        @keyframes blinker {
            50% {
                opacity: 0;
            }
        }
        .box {
          border-radius: 20px;
  width: 260px;
  height: 17px;
  background-color: rgb(247, 241, 247);
  transition: width 1s, height 1s, background-color 1s;
}

.box:hover {
  border-radius: 20px;
  width: 300px;
  height: 20px;
  background-color: rgb(188, 182, 238);}
  .di{
    border: 3px solid #9980f5;
    border-radius: 15px;
    box-shadow: 0 0 20px rgb(188, 182, 238);}
    @keyframes move {
  0% {
    transform: translateX(0);
  }
  50% {
    transform: translateX(50px);
  }
  100% {
    transform: translateX(0);
  }
}

.box1 {
  width: 700px;
  height: 50px;
  animation: move 2s infinite;
}
.blink {
  width: 400px;
  height: 30px;
  /* background-color: rgb(188, 182, 238); */
  animation: pulse 1s infinite alternate;
}

@keyframes pulse {
  0% {
    transform: scale(1);
  }
  100% {
    transform: scale(1.1);
  }
}
.logo{

 margin-left:1400px;

 font-family:Monotype Corsiva;

 color:cornsilk;

 font-size:40px;

 } 
  

</style>
</head>
<body style="background-color: rgb(36, 36, 113);">
  <nav role="navigation">
    <div id="menuToggle">
      <!--
      A fake / hidden checkbox is used as click reciever,
      so you can use the :checked selector on it.
      -->
      <input type="checkbox" />
      
      <!--
      Some spans to act as a hamburger.
      
      They are acting like a real hamburger,
      not that McDonalds stuff.
      -->
      <span></span>
      <span></span>
      <span></span>
      <!--
      Too bad the menu has to be inside of the button
      but hey, it's pure CSS magic.
      -->
      <ul id="menu">
        <a href="index.jsp"><li>Home</li></a>
        <a href="aboutus.jsp"><li>About</li></a>
        <a href="contactus.jsp"><li>Contact</li></a>
      </ul>
    </div>
    <div class="logo"><b>PS</b> CO<b>R</b>PS</div>
    </nav>
<center>
<fieldset class="di" style="width: 840px;height: 480px;background-image: url(backgroung-home.jpg);">
      
       <div id="img"><center><img  src="pslogops.png"></center></div>
  <center>
   <h1 class="box1"style="color: rgb(238, 23, 113);font-family:Courier ;">WELCOME TO OUR NEW JOURNEY!!! </h1>  
   <h1 style="color:rgb(154, 220, 248);font-family:Elephant;font-style: italic;">PS CORPORATE LIMITED</h1>
   <h1 style="color: rgb(16, 255, 151);font-family:Lucida Calligraphy;">ONLINE INTERNSHIP</h1>
   <b><h1 class="blink"style="color:brightred;font-family: Ink Free;">REGISTRATION FREE</h1>
   <div class="box"  id="link"><a href="login.jsp" style="color: blue;">Click Here to Login--></a></div>
  </center>
</fieldset>
</center>
</body>
</html>

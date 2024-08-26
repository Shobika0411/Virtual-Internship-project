<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
     color: rgb(188, 182, 238) ;
   }
   
   
   #menuToggle input
   {
     display: block;
     width: 40px;
     height: 32px;
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
     
     background: rgb(35, 35, 104);
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
    .hr{
    border: 1px solid lightgrey;
    border-radius: 15px;
    }
    .logo{

 margin-left:1400px;

 font-family:Monotype Corsiva;

 color:cornsilk;

 font-size:40px;

 } 
    
   </style>
</head>
<body style="background:  rgb(35, 35, 104);">
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
    <br>
    <br>
    <br>
    <hr class="hr">   
    <h1><center style="color:white;">About Us</center></h1>
    <hr class="hr">  
    <center> 
    <fieldset style="height: 700px;width:1000px;border:none;"><p style="margin-top: 5%;color:white;">In a limited company, the liability of members or subscribers of the company is limited to what they have invested or guaranteed to the company. Limited companies may be limited by shares or by guarantee. In a company limited by shares, the liability of members is limited to the unpaid value of shares. In a company limited by guarantee, the liability of owners is limited to such amount as the owners may undertake to contribute to the assets of the company, in the event of being wound up. The former may be further divided in public companies (public limited companies) and private companies (private limited companies). Who may become a member of a private limited company is restricted by law and by the company's rules. In contrast, anyone may buy shares in a public limited company.</p>
</fieldset>
</center>
</body>
</html>

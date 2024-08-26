<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
td{
    padding: 7px;
}
li{
    color: white;
    font-size: 30px;
}
.box {
          border-radius: 10px;
  width: 260px;
  height: 25px;
  background-color: rgb(247, 241, 247);
  transition: width 1s, height 1s, background-color 1s;
  text-align: center;
  margin-inline-start: 80%;
}

.box:hover {
  border-radius: 20px;
  width: 300px;
  height: 30px;
  background-color: rgb(57, 219, 255);}
  .link:hover{
    background-color:  rgb(188, 182, 238);
    border-radius: 25px;
    color: rgb(35, 35, 104);
    text-size:20px;
  }
  .link{
    text-decoration: none;
    color: #fff;
    padding: 10px;
    font: bolder;
  }
  .back{
  width:10px;
  margin-top:5px;
  }
  .lin{
  text-decoration: none;
  padding: 10px;
    font: bolder;
  }
  .lin:hover{
  box-shadow: 0 0 20px rgb(188, 182, 238);
  }
  
.logo{

 margin-left:1400px;

 font-family:Monotype Corsiva;

 color:cornsilk;

 font-size:40px;

 }
    </style>
</head>
<body style="background-color: rgb(41,41,143);">
    <table>
        <tr>
          <td><a href="course.jsp" class="lin"><img src="back.jpg" class="back"></a></td>
          <td><a href="index.jsp" class="link">Home</a></td>
          <td><a href="aboutus.jsp" class="link">About Us</a></td>
          <td><a href="contactus.jsp" class="link">Contact Us</a></td>
        </tr>
      </table>
      <div class="logo"><b>PS</b> CO<b>R</b>PS</div><br>
    <h1 style="font-family:Baskerville Old Face ;color: rgb(203, 235, 243);text-align: center;">SOCIAL MEDIA MARKETING</h1>
    <table border="solid" style="border-color: aliceblue;background-color: rgb(197, 233, 241);">
        <tr>
            <td>INTERNSHIP DURATION</td>
            <td>2 MONTHS</td>
        </tr>
        <tr>
            <td>INTERNSHIP TIMING</td>
            <td>7PM-9PM IN WEEK ENDS</td>
        </tr>

    </table><br>
    <div class="box"  id="link"><a href="ppp.html" style="color: blue;">Click Here to register--></a></div>
    <div>
    <h3 style="font-family: Engravers MT;color: beige;font-size: 35px;">SYLLABUS</h3>
    <ul type="square">
    <li>Social Media Marketing- Concept and Importance</li>
    <li>Social Media Platforms</li>
        <li>Online communities and Forums; Blogs and Microblogs</li>
            <li>Social Networks</li>
                <li>other
                    contemporary social media platforms</li>
                    <li>Goals, Role in Marketing and Use as listening tools</li>
                    <li>Trends in
                        SMM. Social Media Influencers.
                        Social Media Marketing6EC(1264)-03.02.2023
                        </li>
                        <li>SMM Plan</li>
                        <li>Setting Goals</li>
                        <li>Determining Strategies</li>
                        <li> Identifying Target Market</li>
                        <li>Selecting Tools,</li>
                        <li>Selecting
                            Platforms</li>
                        <li> Implementation: Measuring Effectiveness </li>
                        <li>Conversion rate</li>
</ul>
</div>
</body>
</html>
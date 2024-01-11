<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminSignUp::</title>
<style>
input
{
border:1px solid rgb(144, 59, 230);
border-radius: 12px;
 padding: 8px 40px;
}
input:focus
{
border:5px solid green;
}

td,th
{
padding:10px ;
border-spacing:20px;
color:white;
}
input:hover
{
border:5px solid rgb(144, 59, 230);
}
#sub-button
{
background-color:rgb(144, 59, 230);
  border-radius: 12px;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border:2px solid black;
}
#container{
text-align: center;
display:flex;
 margin: 30px 30px 30px 30px;
 border:2px solid rgb(144, 59, 230);
 padding: 80px;
background-color:black;
}
#frame
{
display: flex;
width:100%;
}
#tab_frame
{
width:60%;
}
#img-container
{

width:40%;
}

</style>
</head>
<body>
<div id="container">
<div id="frame">
<div id="tab_frame">
<table>
<form action="saveadmin" method="post">
<tr>
<th colspan="3">SignUp</th>
</tr>
<tr>
<td><label for="aid">AdminId</label></td>
<td>:</td>
<td><input type="number" name="a-id" id="aid" placeholder="Enter Your Id..."></td>
</tr>
<tr>
<td><label for="aname">Admin</label></td>
<td>:</td>
<td><input type="text" name="a-name" id="aname" placeholder="Enter Your Name..."></td>
</tr>
<tr>
<td><label for="acontact">AdminContact</label></td>
<td>:</td>
<td><input type="tel" name="a-contact" id="acontact" placeholder="Enter Your Contact..."></td>
</tr>
<tr>
<td><label for="amail">AdminEmail</label></td>
<td>:</td>
<td><input type="email" name="a-mail" id="amail" placeholder="Enter Your Email..."></td>
</tr>
<tr>
<td><label for="apassword">AdminPassword</label></td>
<td>:</td>
<td><input type="password" name="a-password" id="apassword" placeholder="Enter Your Password..."></td>
</tr>
<tr>
<td colspan="3"><center><input type="submit" name="submit" id="sub-button"></center>
</tr>
</form>
</table>
</div>
<div id="img-container">
<img src="image/img4.jpg" height="400px" width="400px" style ="border:5px solid rgb(144, 59, 230)">
</div>
</div>
</div>

</body>
</html>
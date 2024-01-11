<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLogin::</title>
<style>
input
{
border:1px solid rgb(144, 59, 230);
border-radius: 12px;
 padding: 8px 40px;
}
td,th
{
padding:10px ;
border-spacing:20px;
color:white;
}
#submitbutton
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
input:hover
{
border:5px solid rgb(144, 59, 230);
}
input:focus
{
border:5px solid green;
}
</style>
</head>
<body>
<div id="container">
<div id="frame">
<div id="tab_frame">
<table>
  <form action="loginadmin" method="post">
    <tr>
       <th colspan="3">Login</th>
      </tr>
      <tr>
         <td><label for="amail">AdminEmail</label></td>
         <td>:</td>
         <td><input type="email" name="adminmail" id="amail" placeholder="Enter your mail..."></td>
      </tr>
      
      <tr>
         <td><label for="apassword">AdminPassword</label></td>
         <td>:</td>
         <td><input type="password" name="adminpassword" id="apassword" placeholder="Enter your password..."></td>
       </tr>
       <tr>
       <td colspan="2">
       <% String msg=(String)request.getAttribute("message"); %>
       <% if(msg!=null){%>
       <h4 style="color:red;"><%= msg %></h4>
       <%}%></td>
       </tr>
       <tr>
        <td colspan="2"><input type="submit" name=submit id="submitbutton"></td>
       </tr>
     </form>
      
  </table>
 </div>
<div id="img-container">
<img src="image/img2.jpg" height="400px" width="400px" style ="border:5px solid rgb(144, 59, 230)">
</div>
</div>
</div>


     
</body>
</html>
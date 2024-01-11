<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input
{
border:1px solid rgb(144, 59, 230);
border-radius: 12px;
 padding: 8px 40px;
}
input:hover
{
border:1px solid rgb(144, 59, 230);
}
td,th
{
padding:10px ;
border-spacing:20px;
color:white;
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
width:50%;
}
#img-container
{

width:50%;
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
</style>
</head>
<body>
<% Movie m=(Movie)request.getAttribute("movie");%>
<div id="container">
<div id="frame">
<div id="tab_frame">
<table>
<form action="updatemovie" method="post"  enctype="multipart/form-data">
<tr>
<th colspan="3">AddMovie</th>
</tr>
<tr>
<td><lable for="mid">MovieId</lable></td>
<td>:</td>
<td><input type="number" name="movieid" id="mid" placeholder="Enter Movie Id..." value="<%=m.getMovieid()%>" readonly></td>
</tr>
<tr>
<td><lable for="mname">MovieName</lable></td>
<td>:</td>
<td><input type="text" name="moviename" id="mname" placeholder="Enter Movie Name..." value="<%=m.getMoviename()%>"></td>
</tr>
<tr>
<td>
<lable for="mprice">MoviePrice</lable>
</td>
<td>:</td>
<td><input type="text" name="movieprice" id="mprice" placeholder="Enter Movie Price..." value="<%=m.getMovieprice()%>"></td>
</tr>
<tr>
<td>
<lable for="mrating">MovieRating</lable>
</td>
<td>:</td>
<td><input type="text" name="movierating" id="mrating" placeholder="Enter Movie rating..." value="<%= m.getMovierating()%>"></td>
</tr>
<tr>
<td>
<lable for="mgenre">MovieGenre</lable>
</td>
<td>:</td>
<td><input type="text" name="moviegenre" id="mgenre" placeholder="Enter Movie Genre..." value="<%= m.getMoviegenre()%>"></td>
</tr>
<tr>
<td>
<lable for="mlang">MovieLanguage</lable>
</td>
<td>:</td>
<td><input type="text" name="movielanguage" id="mlang" placeholder="Enter movie Language..." value="<%= m.getMovielanguage()%>"></td>
</tr>
<tr>
<td>
<lable for="mimage">MovieImage</lable>
</td>
<td>:</td>
<td><input type="file" name="movieimage" id="mimage" ></td>
</tr>
<tr>
<td colspan="3"><%String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())) ;%>
<img src="data:image/jpeg;base64,<%=base64image %>" height="150px" widht="100px"></td>
</tr>
<tr>
<td colspan="3"><center><input type="submit" name="submit" id="sub-button"></center>
</tr>
</form>
</table>
</div>
<div id="img-container">
<img src="image/img3.jpg" height="400px" width="400px" style ="border:5px solid rgb(144, 59, 230)">
</div>
</div>
</div>
</body>
</html>
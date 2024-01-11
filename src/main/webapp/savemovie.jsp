<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SaveMovie::</title>
<style>
input
{
border:1px solid rgb(144, 59, 230);
border-radius: 12px;
 padding: 8px 40px;
}
input:hover
{
border:5px solid rgb(144, 59, 230);
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
<div id="container">
<div id="frame">
<div id="tab_frame">
<table>
<form action="savemovie" method="post"  enctype="multipart/form-data">
<tr>
<th colspan="3">AddMovie</th>
</tr>
<tr>
<td><lable for="mid">MovieId</lable></td>
<td>:</td>
<td><input type="number" name="movieid" id="mid" placeholder="Enter Movie Id..."></td>
</tr>
<tr>
<td><lable for="mname">MovieName</lable></td>
<td>:</td>
<td><input type="text" name="moviename" id="mname" placeholder="Enter Movie Name..."></td>
</tr>
<tr>
<td>
<lable for="mprice">MoviePrice</lable>
</td>
<td>:</td>
<td><input type="text" name="movieprice" id="mprice" placeholder="Enter Movie Price..."></td>
</tr>
<tr>
<td>
<lable for="mrating">MovieRating</lable>
</td>
<td>:</td>
<td><input type="text" name="movierating" id="mrating" placeholder="Enter Movie rating..."></td>
</tr>
<tr>
<td>
<lable for="mgenre">MovieGenre</lable>
</td>
<td>:</td>
<td><input type="text" name="moviegenre" id="mgenre" placeholder="Enter Movie Genre..."></td>
</tr>
<tr>
<td>
<lable for="mlang">MovieLanguage</lable>
</td>
<td>:</td>
<td><input type="text" name="movielanguage" id="mlang" placeholder="Enter movie Language..."></td>
</tr>
<tr>
<td>
<lable for="mimage">MovieImage</lable>
</td>
<td>:</td>
<td><input type="file" name="movieimage" id="mimage" ></td>
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
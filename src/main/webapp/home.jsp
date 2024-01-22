<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home::MoviesLibrary</title>
<style type="text/css">
body
{
text-align:center;
background-image:url("image/img3.jpg")
}
table
{
background-color:black;
text-align:center;
color:white;
border: 2px solid #c10e5e;

}
td,th
{
padding:50px;
border: 2px solid #c10e5e;

}
table,th,td
{
border-collapse:collapse;
}
button
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

<h1>Welcome</h1>

<%List<Movie>movies=(List)request.getAttribute("movies"); %>

<table border="2px" class="table">
<tr>
<th>ID</th>
<th>Name</th>
<th>Price</th>
<th>Rating</th>
<th>Genre</th>
<th>Language</th>
<th>Image</th>
<th>Delete</th>
<th>Edit</th>
</tr>
 <% for(Movie m:movies){ %>
<tr>
<td><%= m.getMovieid() %></td>
<td><%= m.getMoviename() %></td>
<td><%= m.getMovieprice() %></td>
<td><%= m.getMovierating() %></td>
<td><%= m.getMoviegenre() %></td>
<td><%= m.getMovielanguage() %></td>
<% String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())) ; %>
<td><img src="data:image/jpeg;base64,<%=base64image %>" height="100px" width=100px"></td>
<td><a href="deletemovie?id=<%=m.getMovieid()%>">Delete</a></td>
<td><a href="editmovie?id=<%=m.getMovieid()%>">Edit</a></td>
</tr>
<%}%> 
</table>
<br><br>
<button><a href="savemovie.jsp">AddMovie</a></button><br>
<button><a href="logout">Logout</a></button>
</body>
</html>
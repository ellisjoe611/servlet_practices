<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join" method='POST'>
		email : <input type='text' name='email' value=''/>
		<br><br>
		
		password : <input type='password' name = 'password' value = ''/>
		<br><br>
		
		birthdate : 
		<select name="birthYear">
			<option value="1990">1990년</option>
			<option value="1991">1991년</option>
			<option value="1992">1992년</option>
			<option value="1993">1993년</option>
			<option value="1994">1994년</option>
			<option value="1995">1995년</option>
		</select>
		<br><br>
		
		gender : 
		Male <input type='radio' name='gender' value='male' checked='checked'>
		Female <input type='radio' name='gender' value='female'>
		<br><br>
		
		hobby:
		Coding <input type='checkbox' name='hobby' value='coding'>
		PingPong <input type='checkbox' name='hobby' value='pingpong'>
		bowling <input type='checkbox' name='hobby' value='bowling'>
		<br><br>
		
		
		introduction<br>
		<textarea name='desc' rows="10px" cols="50px"></textarea>
		
		<br>
		<input type='submit' value='register'>
	</form>
</body>
</html>
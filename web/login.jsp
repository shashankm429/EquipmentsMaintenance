<html>
<head>
<title>  login  </title>
<style>
		body{ font-family:verdana; font-size:15px; }
		div#back_globe { background-color:white; border:1px solid #25b2d5; width:500px; margin:0 auto; box-shadow:1px 0px 15px ; margin-top:150px}
		input { display:block; margin:10px; }
		div#back_head{ background-color:25b2d5; text-align:center ; font-size:22px; font-weight:bold; color:white; padding:20px; }
		input[type=text],input[type=password]{ font-size:16px; padding:10px; border-radius:5px; border:1px solid #ddd ; }
		input[type=submit]{background-color:25b2d5; padding:5px 10px 5px 10 px; border-radius:5px; border:1pxsolid #319db8; color:white; font-weight:bold; }
		div#back_form{ display:flex; justify-content :center;}
		a.blue:link {color:#ff0000; cursor:pointer;}
		a.blue:visited { color: #00FF00; text-decoration:none; cursor:pointer;}
		a.blue:hover { color: hotpink; text-decoration:underline; cursor:pointer;}
		a.blue:active {color: blue; }
</style>
</head>
<center>
<body>
<div id="back_globe">
	<div id="back_head">
	<p class="normal">APPLIANCE MAINTENANCE SYSTEM</p>
	</div>
    <form action="LoginServlet.do" method ="post">
<div id="back_form">
<table width="450px">


<tr>
<td>
<label for="username">Username(PNo.)</label>
</td>
<td>
<input type="text" name="username"  placeholder="username" maxlength="50" size="30">
</td>
</tr>


<tr>
<td>
<label for="password">Password</label>
</td>
<td>
<input type="password"  name="password" placeholder="password" maxlength="30" size="30">
</td>
</tr>


<tr>
<td>
<input type="submit"  value="login" maxlength="30" size="30">
</td>
</tr>

<tr>
<td>
    <p><a style="color: blue" href="register.jsp" > Register here </a></p>
</td>
</tr>


</table>
</div>
</form>
</div>
</body>
</html>   
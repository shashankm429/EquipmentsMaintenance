<html>
<head>
<title>  Register  </title>
<style>
		body{ font-family:verdana; font-size:15px; }
		div#back_globe { background-color:white; border:1px solid #25b2d5; width:500px; margin:0 auto; box-shadow:1px 0px 15px ; margin-top:50px}
		input { display:block; margin:10px; }
		div#back_head{ background-color:25b2d5; text-align:center ; font-size:22px; font-weight:bold; color:white; padding:20px; }
		input[type=text],input[type=password]{ font-size:16px; padding:10px; border-radius:5px; border:1px solid #ddd ; }
		input[type=submit]{background-color:25b2d5; padding:5px 10px 5px 10 px; border-radius:5px; border:1pxsolid #319db8; color:white; font-weight:bold; }
		div#back_form{ display:flex; justify-content :center;}
</style>
</head>
<center>
<body>
<div id="back_globe">
	<div id="back_head">
	<p class="normal">APPLIANCE MAINTENANCE SYSTEM</p>
	</div>
    <form action="RegisterServlet.do" method="post">
<table width="450px">


<tr>
<td>
<label for="name">Name</label>
</td>
<td>
<input type="text" name="name"  placeholder="name" maxlength="50" size="30">
</td>
</tr>

<tr>
<td>
<label for="username">Username(PNo.)</label>
</td>
<td>
<input type="text" name="username" placeholder="username" maxlength="50" size="30">
</td>
</tr>

<tr>
<td>
<label for="email">Email address</label>
</td>
<td>
<input type="text"  name="email" placeholder="email address" maxlength="80" size="30">
</td>
</tr>

<tr>
<td>
<label for="telephone">Telephone number</label>
</td>
<td>
<input type="text"  name="telephone" placeholder="telephone number" maxlength="30" size="30">
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
<label for="password">Confirm password</label>
</td>
<td>
<input type="password"  name="confirmpassword" placeholder="re-enter password" maxlength="30" size="30">
</td>
</tr>

<tr>

<td>
<input type="submit"  value="Register" maxlength="30" size="30">
</td>
<td>
    <a href="login.jsp" style="color: blue">Else, Sign-in Here</a>
</td>
</tr>

</table>
</form>
</div>
</body>
</html>   
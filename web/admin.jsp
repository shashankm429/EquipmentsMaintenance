<html>
		<head>
			<title> appliance maintenance system </title>
			<style>
			*  { margin:0px; padding:0px;}

					body{ font-family:verdana; font-size:15px; }
		div#back_globe { background-color:white; border:1px solid #25b2d5; width:500px; margin:0 auto; box-shadow:1px 0px 15px ; margin-top:50px}
		input { display:block; margin:10px; }
		div#back_head{ background-color:25b2d5; text-align:center ; font-size:22px; font-weight:bold; color:white; padding:20px; }
		input[type=text],input[type=password]{ font-size:16px; padding:10px; border-radius:5px; border:1px solid #ddd ; }
		input[type=submit]{background-color:25b2d5; padding:5px 10px 5px 10 px; border-radius:5px; border:1pxsolid #319db8; color:white; font-weight:bold; }
		div#back_form{ display:flex; justify-content :center;}
//div#outerbody { margin:0px; padding:0px;}
			div#header{ background-color:25b2d5; text-align:center ; font-size:22px; font-weight:bold; color:white; padding:50px; }
			div#menu {background-color: #000000 ; color:white; height:50px;}
			div#menu ul{ list-style:none;}
			div#menu ul li{float:left; margin:12px; margin-left:170px;}
			div#main { margin:auto; color:red; position: absolute; top: 50%;left: 35%; font-size:40px}

			a.colour:link {color:#ff0000; cursor:pointer;}
		a.colour:visited { color: #00FF00; text-decoration:none; cursor:pointer;}
		a.colour:hover { color: hotpink; text-decoration:underline; cursor:pointer;}
		a.colour:active {color: blue; }
			</style>
		</head>
	<body>
		<div id="outerbody" >
			<div id="header">
				<p class="normal">APPLIANCE MAINTENANCE SYSTEM</p>
			</div>
			<div id="menu" >
				<ul>
					<a class="colour" href="home.jsp">	<li>home</li></a>
				<a class="colour" href="change_password.jsp"><li>change password</li></a>
				<a class="colour" href="admin.jsp"><li>admin</li></a>
				<a class="colour" href="maintenance.jsp"><li>maintenance</li></a>
				<a class="colour" href="logout.jsp"><li>logout</li></a>
				</ul>
			</div>
			<div id="back_globe">
				<div id="back_head">
                                    <form action="AdminRegisterServlet.do" method="post">
					<div id="back_form">
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
<label for="username">PNo.</label>
</td>
<td>
<input type="text" name="username"  placeholder="PNo." maxlength="50" size="30">
</td>
</tr>
<tr>
<td>
<label for="email">email address</label>
</td>
<td>
<input type="text"  name="email" placeholder="email address" maxlength="80" size="30">
</td>
</tr>

<tr>
<td>
<label for="telephone">telephone number</label>
</td>
<td>
<input type="text"  name="telephone" placeholder="telephone number" maxlength="30" size="30">
</td>
</tr>

<tr>
<td>
<label for="password">password</label>
</td>
<td>
<input type="password"  name="password" placeholder="password" maxlength="30" size="30">
</td>
</tr>

<tr>
<td>
<label for="confirmpassword"> confirm password</label>
</td>
<td>
<input type="password"  name="confirmpassword" placeholder="re-enter password" maxlength="30" size="30">
</td>
</tr>

<tr>

<td>
<input type="submit"  value="Register" maxlength="30" size="30">
</td>
</tr>

</table>
</form>
			</div>

		</div>


	</body>
</html>

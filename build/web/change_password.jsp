<html>
		<head>
			<title> appliance maintenance system </title>
			<style>
			*  { margin:0px; padding:0px;}
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
			<div id="main">
                            <form action="ChangePasswordServlet.do" method="post">
					<table width="450px">
                                            <tr>
<td>
<label for="username">Username(Pno.)</label>
</td>
<td>
    <input type="text"  name="username" placeholder="enter pno." maxlength="30" size="30"><br><br>
</td>
</tr>
<tr>
<td>
<label for="password">current password</label>
</td>
<td>
<input type="password"  name="password" placeholder="password" maxlength="30" size="30"><br><br>
</td>
</tr>

<tr>
<td>
<label for="password">new password</label>
</td>
<td>
<input type="password"  name="newpassword" placeholder="new password" maxlength="30" size="30"><br><br>
</td>
</tr>


<tr>
<td>
<label for="password">re-enter new password</label>
</td>
<td>
<input type="password"  name="confirmnewpassword" placeholder="re-enter new password" maxlength="30" size="30"><br>
</td>
</tr>
<br>
<tr>
<td>
<label for="submit"></label>
</td>
<td>
<br>
<input type="submit" value="submit" name="submit" maxlength="30" size="30">
</td>
</tr>
                                        </table>
                                        </form>
			</div>

		</div>


	</body>
</html>

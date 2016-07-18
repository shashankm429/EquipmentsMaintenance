<html>
		<head>
			<title> appliance maintenance system </title>
			<style>
			*  { margin:0px; padding:0px;}
//div#outerbody { margin:0px; padding:0px;}

div#back_globe { background-color:white; border:1px solid #25b2d5; width:500px; margin:0 auto; box-shadow:1px 0px 15px ; margin-top:100px ;}
div#back_head{ background-color:25b2d5 ; text-align:center ;  font-size:50px; font-weight:bold; color:white; padding:20px; }
div#back_form{ display:flex; justify-content :center;}
			div#header{ background-color:25b2d5; text-align:center ; font-size:22px; font-weight:bold; color:white; padding:50px; }
			div#menu {background-color: #000000 ; color:white; height:50px;}
			div#menu ul{ list-style:none;}
			div#menu ul li{float:left; margin:12px; margin-left:170px;}
			div#main { margin:auto; color:red; position: absolute; top: 50%;left: 35%;}

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
                                    <form action="MaintenanceServlet.do" method="post">
					<div id="back_form">
<table width="450px">
</tr>

<tr>
<td>
<label for="Name of the area">Name of the area</label>
</td>
<td>
<input type="text" name="area"  placeholder="Name of the area" maxlength="50" size="30"><br><br>
</td>
</tr>

<tr>
<td>
<label for="Name of the Equipment">Name of the Equipment</label>
</td>
<td>
<input type="text" name="equipment" placeholder="Name of the Equipment" maxlength="50" size="30"><br><br>
</td>
</tr>


<tr>
<td>
<label for="Maintenance Schedule/ Frequency">Maintenance Schedule/Frequency</label></td>
<td>
<input type="text" name="frequency" placeholder="Maintenance Schedule/Frequency" maxlength="50" size="30"><br><br>
</td>
</tr>

<tr>
<td>
<label for="Maintenance Date">Maintenance Date(dd-mm-yyyy)</label></td>
<td>
    <input type="text" name="maintenancedate" placeholder="Maintenance Date" maxlength="50" size="30"><br><br>
</td>
</tr>

<tr>
<td>
<label for="To be Inspected by">To be Inspected by</label>
</td>
<td>
<input type="text" name="inspected" placeholder="To be Inspected by" maxlength="50" size="30"><br><br>
</td>
</tr>


<tr>
<td>
<input type="submit"  value="submit" maxlength="30" size="30">
</td>
</tr>

</table>
</form>
					</div>
				</div>

		</div>
                    <br>
                    <br>
                    <center>  <a style="color: blue" href="ViewMaintenanceServlet.do">View Maintenance List</a> </center>
                    <br>
                    <br>
                    <center>  <a style="color: blue" href="Compliance1.jsp">Feed Compliance Date and Remarks</a> </center>

	</body>
</html>

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
				<a class="colour" href="#">	<li>home</li></a>
				<a class="colour" href="change_password.jsp"><li>change password</li></a>
				<a class="colour" href="admin.jsp"><li>admin</li></a>
				<a class="colour" href="maintenance.jsp"><li>maintenance</li></a>
				<a class="colour" href="logout.jsp"><li>logout</li></a>
			</ul>
			</div>
				<div id="main">
					<form action="ComplianceServlet.do" method="POST">
            <table border="0">
                <thead>
                    <tr>
                <th style="color: blue"> Compliance and Remarks of Equipments</th></center>
                    </tr>
                </thead>
                
                <tbody>
                    
                    <tr>
                        <td>Compliance Date(dd-mm-yyyy)</td>
                        <td><input type="text" name="compliancedate" value="" /></td>
                    </tr>
                    <tr>
                        <td>Remarks</td>
                        <td><input type="text" name="remarks" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Refresh" /></td>
                        <td><input type="submit" value="Submit" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
				</div>

		</div>


	</body>
</html>

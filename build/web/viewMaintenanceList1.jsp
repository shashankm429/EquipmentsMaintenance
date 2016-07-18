<%@page import="com.myapp.struts.Maintenance"%>
<%@page import="java.util.ArrayList"%>
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
                    <br>
                    <br>
                    <br>
                    
                                    <table border="1">
<tr>
<th style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AREA</th>
<th style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EQUIPMENT</th>
<th style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FREQUENCY</th>
<th style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MAINTENANCE DATE</th>
<th style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;INSPECTED BY</th>
<th style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NEXT MAINTENANCE</th>

</tr>

					<%
             ArrayList al=(ArrayList)session.getAttribute("al");
            int i;

            //out.println("<h4> AREA       EQUIPMENT       FREQUENCY    MAINTENANCE DATE    INSPECTED BY</h4>");
           // out.println(al==null);
            for(i=0;i<al.size();i++)
               {
               Maintenance c=(Maintenance)al.get(i);

               out.println("<br />");

                                        %>
       <tr>
        
        <td style="margin-left:20px" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= c.getArea() %></td>
        <td style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= c.getEquipment() %></td>
        <td style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= c.getFrequency() %></td>
        <td style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= c.getMaintenancedate() %></td>
        <td style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%= c.getInspected() %></td>
        <td style="margin-left:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <% String md = c.getMaintenancedate();
        int day = Integer.parseInt(md.substring(0, 2));
        int month = Integer.parseInt(md.substring(3,5));
        int year = Integer.parseInt(md.substring(6,10));
        int nday = day;
        int nmonth,nyear;
        if(month>=7)
            nmonth = month-6;
        else nmonth = month+6 ;
        nyear= year+1;
        out.println("Date" + nday + "-" + nmonth + "-" + nyear+ "<br>");
        %>
        </td>
    </tr>
    <%
               }
        %>
</table>

        
				</div>
		
	</body>
</html>

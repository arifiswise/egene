<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.util.List,java.util.Arrays,java.util.Date,java.text.SimpleDateFormat" %>
<%
    Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("MMMM, dd yyyy; HH:mm:ss");
%>
<!--
Design by http://www.hotwebsitetemplates.net
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>eGENE</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->

<script type="text/javascript" src="js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<script type="text/javascript" src="js/datetime.js"></script>
<script type="text/javascript" src="js/jquery.blockUI.js"></script>
<script type="text/javascript" src="js/scroll-startstop.events.jquery.js"></script>
<script type="text/javascript" src="js/jquery.simpletip-1.3.1.pack.js"></script>
<script type="text/javascript" src="js/tea.js"></script>
<script type="text/javascript">
	$.blockUI.defaults.css.border = 'none';
	$.blockUI.defaults.css.padding = '15px';
	$.blockUI.defaults.css.backgroundColor = '#000';
	$.blockUI.defaults.overlayCSS.opacity = .5;
	$.blockUI.defaults.css.color = '#fff';

	$(document).ajaxStart($.blockUI).ajaxStop($.unblockUI);
	
	
	
</script>
	
</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
	
      <div class="menu_nav">
        <ul>
			<%
				String[] pathMenu = {"index.jsp", "#"};
				String[] menu = {"Home", "About"};
				List<String> lPathMenu = Arrays.asList(pathMenu);
				List<String> lMenu = Arrays.asList(menu);
				if (lPathMenu.size() != lMenu.size()) {
					// throw exception
				}
				
				if (lMenu.size() > 0) {
					String currentPath = request.getServletPath();
					
					if (!lPathMenu.contains(currentPath.substring(1))) {
						out.println("<li class=\"active\"><a href=\"" + lPathMenu.get(0) + "\">" + lMenu.get(0) + "</a></li>");
					} else if (currentPath.endsWith(lPathMenu.get(0))) {
						out.println("<li class=\"active\"><a href=\"" + lPathMenu.get(0) + "\">" + lMenu.get(0) + "</a></li>");
					} else {
						out.println("<li><a href=\"" + lPathMenu.get(0) + "\">" + lMenu.get(0) + "</a></li>");
					}
					
					if (lMenu.size() > 1) {
						for (int i = 1; i < lMenu.size(); i++) {
							if (currentPath.endsWith(lPathMenu.get(i))) {
								out.println("<li class=\"active\"><a href=\"" + lPathMenu.get(i) + "\">" + lMenu.get(i) + "</a></li>");
							} else {
								out.println("<li><a href=\"" + lPathMenu.get(i) + "\">" + lMenu.get(i) + "</a></li>");
							}					
						}
					}
				}


			%>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.jsp">e<span>GENE</span> <small>exam paper generator</small></a></h1>
      </div>
      <div class="clr"></div>
    </div>
  </div>
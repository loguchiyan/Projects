<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="algo.CipherHelper"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar" class="order-last" class="img" style="background-image: url(images/bg_5.jpg);">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	        </button>
        </div>
        <div class=""> <% String pic=session.getAttribute("pic").toString();
                  String name1=session.getAttribute("name").toString();%>
		
            <h2 style="font-family: cambria;">&nbsp;&nbsp;&nbsp;&nbsp;<img src='profile/<%=pic%>' style='width: 50px; height: 50px; border-radius: 15px;'>&nbsp;&nbsp;<%=name1%></h2>
		<ul class="list-unstyled components mb-5">
	          <li class="active">
	            <a href="Owner_Home.jsp"><span class="fa fa-home mr-3"></span> Data Owner Home</a>
	          </li>
	          <li>
	              <a href="Upload.jsp"><span class="fa fa-user mr-3"></span> Upload File</a>
	          </li>
	          <li>
              <a href="Viewfile.jsp"><span class="fa fa-sticky-note mr-3"></span> View File</a>
	          </li>
	          <li>
              <a href="Viewrequest.jsp"><span class="fa fa-cogs mr-3"></span> View Request</a>
	          </li><li>
              <a href="Manage.jsp"><span class="fa fa-sticky-note mr-3"></span> Manage File</a>
	          </li>
	          <li>
              <a href="index.html"><span class="fa fa-paper-plane mr-3"></span> Logout</a>
	          </li>
	        </ul>

	        <div class="mb-5 px-4">
						
	            <div class="form-group d-flex">
	            	<div class="icon"><span class="icon-paper-plane"></span></div>
	              
	            </div>
	          </form>
					</div>

	        <div class="footer px-4">
	        	
	        </div>

	      </div>

    	</nav>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
         <!-- <h2 class="mb-4" style="color:brown;">An Efficient Search Method Using Features to Match Joint Keywords on Encrypted Cloud Data</h2>
       -->
         <div style="background:white; height: 500px; margin-top: 50px;">    

            <center>                
                <style>
                    table{
                        line-height: 25px;
                        width: 50%;
                        margin-left: 20%;
                    }
                    h3{
                        font-weight: bold;
                        font-size: 30px;
                        color:darkblue;
                        margin-left: 50px;
                    }
                    td,input{
                        margin-bottom: 10px;
                    }
                    h4{
                        font-size: 20px;
                        color:navy;
                    }
                    
                </style>
                <h3>Upload Files</h3><br><br>
                <%
                    
                    String name=session.getAttribute("name").toString();
                    String id=session.getAttribute("id").toString();
                    System.out.println(name+"  "+id);
                    Random r = new Random(); 
                    String x = Integer.toString(r.nextInt(10000));
                    CipherHelper cc = new CipherHelper();
                    String tkey=cc.cipher("12345678",x);
                    DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
                    Calendar calobj = Calendar.getInstance();
                    String d=df.format(calobj.getTime());
                    System.out.println(d);
                %>
                <form action='Upload' method="post" enctype="multipart/form-data">
                <table>
                    <input type='hidden' name='id' value='<%=id%>'>
                    <input type='hidden' name='name' value='<%=name%>'>
                    <tr><td style='color:brown; font-size: 20px;'><storng><b>File Keyword:</b></storng></td><td><input type="text"name="keyword" value="" style=" border-radius: 2px;"></td></tr>
                    <tr><td style='color:brown; font-size: 20px;'><strong>File Key: </strong></td><td><input type="text" name="pkey" value='<%=x%>' style="border-radius: 2px;"></td></tr>
                    <tr><td style='color:brown; font-size: 20px;'><strong>Date: </strong></td><td><input type="text" name="date" value="<%=d%>" style="border-radius: 2px;"></td></tr>
                    <tr><td style='color:brown; font-size: 20px;'><strong>Trapdoor: </strong></td><td><input type="text" name="tkey" value="<%=tkey%>" style="border-radius: 2px;"></td></tr>
                    <tr><td style='color:brown; font-size: 20px;'><strong>Upload File:</strong></td><td><input type="file" name="image" style="border-radius: 2px;"></td></tr>
                    <tr><td align='center' colspan="2"><input type="submit" Value='Upload' style="border-radius: 2px; width: 100px; height: 30px;padding: 5px; text-align: center; background-color: lightblue; color:darkblue;"</td></tr>
                </table></form><br>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
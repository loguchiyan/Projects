<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>EduWell - Education HTML5 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
<!--

TemplateMo 573 EduWell

https://templatemo.com/tm-573-eduwell

-->
  </head>
  <style>
      .registration-form{
	padding: 50px 0;
}

.registration-form form{
    background-color: #fff;
    max-width: 600px;
    margin: auto;
    padding: 50px 70px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .form-icon{
	text-align: center;
    background-color: #5891ff;
    border-radius: 50%;
    font-size: 40px;
    color: white;
    width: 100px;
    height: 100px;
    margin: auto;
    margin-bottom: 50px;
    line-height: 100px;
}

.registration-form .item{
	border-radius: 20px;
    margin-bottom: 25px;
    padding: 10px 20px;
}

.registration-form .create-account{
    border-radius: 30px;
    padding: 10px 20px;
    font-size: 18px;
    font-weight: bold;
    background-color: #5791ff;
    border: none;
    color: white;
    margin-top: 20px;
}

.registration-form .social-media{
    max-width: 600px;
    background-color: #fff;
    margin: auto;
    padding: 35px 0;
    text-align: center;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    color: #9fadca;
    border-top: 1px solid #dee9ff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.075);
}

.registration-form .social-icons{
    margin-top: 30px;
    margin-bottom: 16px;
}

.registration-form .social-icons a{
    font-size: 23px;
    margin: 0 3px;
    color: #5691ff;
    border: 1px solid;
    border-radius: 50%;
    width: 45px;
    display: inline-block;
    height: 45px;
    text-align: center;
    background-color: #fff;
    line-height: 45px;
}

.registration-form .social-icons a:hover{
    text-decoration: none;
    opacity: 0.6;
}

@media (max-width: 576px) {
    .registration-form form{
        padding: 50px 20px;
    }

    .registration-form .form-icon{
        width: 70px;
        height: 70px;
        font-size: 30px;
        line-height: 70px;
    }
}
  </style>
<body>
  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                   
                      <a href="index.html" class="logo">
<h2><em>Designer</em></h2>
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                             <li><a href="index.html" class="active">Home</a></li>
                         
                          <li><a href="patient.jsp">Patient </a></li>
                         <li><a href="doctor.jsp">Doctor</a></li>
                          <li><a href="central.jsp">Central Server</a></li>
               
                      </ul>          
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <section class="main-banner" id="top">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 align-self-center">
          <div class="header-text">
       
            <h2><em>Doctor Register Form </em></h2>
            <em><form action="dregaction.jsp" method="post">
           
            <div class="form-group">
                <input type="text" class="form-control item" id="username" name="dname" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control item" id="pass" name="pass"  placeholder="Password" required>
            </div>
                     <div class="form-group">
                         <input type="text" class="form-control item" id="pass" name="hname"  placeholder="Hospital Name" required>
            </div>
                 <div class="form-group" >
                     <label class="form-control item">Select Designation &ensp;&ensp;
                     <select name="des"><option >--Choose--</option>
                     <option>Doctor</option>
                     <option>Nurse</option>
                     </select>
                 </label>
                 </div>  
                     <div class="form-group" >
                     <label class="form-control item">Specialist&ensp;&ensp;
                     <select name="spec"><option >--Choose--</option>
                         <option>General</option>
                     <option>Audiologists</option>
                     <option>Cardiologists </option>
                     <option>Dentist</option>
                     <option>Endocrinologist </option>
                     <option>Gynecologists</option>
                     <option>Neurologists</option>
                     <option>Oncologists</option>
                     <option>Pediatrician </option>
                     <option>Psychiatrists</option>
                     <option>Radiologist:</option>
                   
                     </select>
                 </label>
                 </div>  
            <div class="form-group">
                <input type="date" class="form-control item" id="dob" name="dob" placeholder="DOB" required>
            </div>
                 <div class="form-group">
                     <input type="email" class="form-control item" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item" name="contact"  id="contact" placeholder="Phone Number"pattern="[1-9]{1}[0-9]{9}"  required>
            </div>
            <div class="form-group">
                <input type="text" class="form-control item"  name="location" id="location" placeholder="Location" required>
            </div>
             <div class="form-group">
                <input type="submit" class="form-control item" style=" background-color: violet;" textcolor="white" value="Register">
            </div>
        </form>
            </em>
        
          </div>
        </div>
        <div class="col-lg-6">
          <div class="right-image">
            <img src="assets/images/Loggg.avif" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
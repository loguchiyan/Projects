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
    .select{
        max-width: 90%;
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
                         <li><a href="dhome.jsp" class="active">Home</a></li>
                          <li><a href="dpage.jsp">Add Design</a></li>
                          <li><a href="Manage.jsp">View & Manage Products</a></li>
                          <li><a href="mrequest.jsp">Manufacture Request</a></li>
                           <li><a href="index.html">Logout</a></li>
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
            <h2><em>Add Post</em></h2>
            <em>  <form action="Upload.jsp" method="post" class="bg-white">
                 <div class="">
                      <div class="form-group row">
                  <div class="col-md-12">
                    <label for="o_name" class="text-black">Owner Name <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="oname" name="oname" placeholder="">
                  </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="id" class="text-black">Product ID <span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="pid" name="pid" placeholder="Product Id">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                    <label for="p_name" class="text-black">Product Name<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="p_name" name="pname" placeholder="Product Name">
                  </div>
                </div>
                
                            <div class="form-group row">
                  <div class="col-md-12">
                    <label for="cont" class="text-black">Upload Image <span class="text-danger">*</span></label>
                    <input type="file" class="form-control" id="file" name="file"  placeholder="Product Name" >
                  </div>
                </div>
                       <div class="form-group row">
                  <div class="col-md-12">
                    <label for="p_name" class="text-black">Cost<span class="text-danger">*</span></label>
                    <input type="text" class="form-control" id="cost" name="cost" placeholder="Cost">
                  </div>
                </div>
                
                     
                   <div class="form-group row">
                  <div class="col-md-12">
                    <label for="date" class="text-black">Date & Time<span class="text-danger">*</span></label>
                    <input type="datetime-local" class="form-control" id="date" name="date">
                  </div>
                </div>
                <div class="form-group row">
                  <div class="col-md-12">
                      <label for="date" class="text-black">Bitting Date<span class="text-danger">*</span></label><br>
                    <select name="bdate" id="bdate" >
                        <option>1 DAY Remaining</option>
                        <option>2 Days Remaining</option>
                        <option>3 Days Remaining</option>
                       <option>4 Days Remaining</option>
                </select>
                  </div>
                </div>
                
                <div class="form-group row">
                   <div class="form-group">
                <input type="submit" class="form-control item" style=" background-color: violet;" textcolor="white" value="Submit">
            </div>
                
                </div>
              </div>
            </form>
          </div>
                        
            </em>
        
          </div>
        </div>
        <div class="col-lg-6">
          <div class="right-image">
            <img src="assets/images/alog.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>
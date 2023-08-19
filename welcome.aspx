<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="Cinema_Management_System.webLayput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="stylesheet" href="assets/style.css">
<head runat="server">
    
   
</head>
<body>


    <%--navbar--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"><span class="text-info">Cinema Management</span>System

          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              
              <li class="nav-item">
                 <asp:HyperLink class="nav-link" ID="HyperLink1" runat="server" NavigateUrl="~/welcome.aspx">Home</asp:HyperLink>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#about">About</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#services">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#portfolio">Portfolio</a>
              </li>
              <li class="nav-item">
                <asp:HyperLink class="nav-link" ID="HyperLink2" runat="server" NavigateUrl="~/RegistrationForm.aspx">Membership</asp:HyperLink>
              </li>
              <li class="nav-item">
               <asp:HyperLink class="nav-link" ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#contact">Contact</a>
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
   


    <%--Crousal--%>

    <section>
      <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/action.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption ">
              <h5>Action Movies</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum eum magni doloribus maxime fuga, consequatur itaque, dignissim.</p>
              <p> <a href="#" class="btn btn-warning mt-3">learn more</a></p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/advanture.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption ">
              <h5>Advanture Movies</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum eum magni doloribus maxime fuga, consequatur itaque, dignissim.</p>
              <p> <a href="#" class="btn btn-warning mt-3">learn more</a></p>
            </div>
          </div>
          
          <div class="carousel-item">
            <img src="images/cartoons.jpg" class="d-block w-100" alt="...">
            <div class="carousel-caption ">
              <h5>Kids Shows</h5>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. <br> Nostrum eum magni doloribus maxime fuga,<br> consequatur itaque, dignissim.</p>
              <p> <a href="#" class="btn btn-warning mt-3">learn more</a></p>
            </div>
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
</section>
<%--end crousal--%>





    <form id="form1" runat="server">
        
        <main>
        <section id="about" class="about section-padding">

          <div class="container">
            <div class="row">
              <div class="col-lg-4 col-md-4 col-12">
                <div class="about-img"> 
                  <br>
                  <img src="images/m1.jpg" alt="img-fluid">
                </div> 

                 

              </div>

               <div class="col-lg-8 col-md-4 col-12 ps-lg-5 mt-md-5">
                      
                <div class="about-text">
                  <h2>We provide best Quality <br> Services ever</h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, voluptates velit. Est iure illum deserunt magnam hic repudiandae praesentium optio maiores perspiciatis! Ex, exercitationem. Harum saepe ad exercitationem! Temporibus, aliquid!</p>
                  <a href="#" class="btn btn-warning">learn more</a>
                </div>
               </div>

            </div>
          </div>
        </section>

        <section id="services" class="sevices section-padding">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="section-header text-center pb-5">
                  <h2>Our  Services </h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, voluptates velit. <br> Est iure illum deserunt magnam hic repudiandae praesentium optio maiores perspiciatis! !</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="  col-12 col-md-12 col-lg-4">
                <div class="cars text-white text-center bg-dark pb-2">
                  <div class="card-body">
                    <i class="bi bi-layout-text-window-reverse"></i>
                    <h3 class="card-title">Best Quality</h3>
                    <p class="lead"> Lorem ipsum dolor, sit amet consectetur adipisicing elit. <br> <br> Recusandae eligendi mollitia unde accusantium aut omnis illo! Officiis, 
                      <button class="btn btn-warning text-dark">Read more</button>
                    </p>
                  </div>
                </div>
              </div>

              <div class="  col-12 col-md-12 col-lg-4">
                <div class="cars text-white text-center bg-dark pb-2">
                  <div class="card-body">
                    <i class="bi bi-stickies"></i>
                    <h3 class="card-title">integrity</h3>
                    <p class="lead"> Lorem ipsum dolor, sit amet consectetur adipisicing elit. <br> <br> Recusandae eligendi mollitia unde accusantium aut omnis illo! Officiis
                      <button class="btn btn-warning text-dark">Read more</button>
                    </p>
                  </div>
                </div>
              </div>
              

              <div class="col-12 col-md-12 col-lg-4">
                <div class="cars text-white text-center bg-dark pb-2">
                  <div class="card-body">
                    <i class="bi bi-question-circle"></i>
                    <h3 class="card-title">Help</h3>
                    <p class="lead"> Lorem ipsum dolor, sit amet consectetur adipisicing elit. <br> <br> Recusandae eligendi mollitia unde accusantium aut omnis illo! Officiis
                      <button class="btn btn-warning text-dark">Read more</button>
                    </p>
                  </div>
                </div>
              </div>


            </div>
          </div>
        </section>


        <section id="portfolio" class="portfolio section-padding ">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="section-header text-center pb-5">
                  <h2>Our  projects </h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, voluptates velit. <br> Est iure illum deserunt magnam hic repudiandae praesentium optio maiores perspiciatis! !</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12 col-md-12 col-lg-4">
                <div class="card  text-center bg-white pb-2 ">
                  <div class="card-body text-dark">
                    <div class="img-area mb-4">
                     <img src="images/entertainment.jpg" alt="" class="img-fluid">
                    </div>
                    <h3 class="card-title">Best Entertainment</h3>
                    <p class="lead">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eum ipsam nisi recusandae delectus iure ipsum voluptatem explicabo velit, consequatur neque?</p>
                    <button class="btn bg-warning text-dark">Learn more</button>
                  </div>
                </div>
              </div>

              <div class="col-12 col-md-12 col-lg-4">
                <div class="card  text-center bg-white pb-2 ">
                  <div class="card-body text-dark">
                    <div class="img-area mb-4">
                     <img src="images/cartoons.jpg" alt="" class="img-fluid">
                    </div>
                    <h3 class="card-title">Best Cartoons</h3>
                    <p class="lead">Lorem ipsum, dolor sit amet consectetur adipisicing elit. <br> Eum ipsam nisi recusandae  delectus iure ipsum voluptatem explicabo velit,  consequatur neque?</p>
                    <button class="btn bg-warning text-dark">Learn more</button>
                  </div>
                </div>
              </div>

              <div class="col-12 col-md-12 col-lg-4">
                <div class="card  text-center bg-white pb-2 ">
                  <div class="card-body text-dark">
                    <div class="img-area mb-4">
                     <img src="images/rom.jpg" alt="" class="img-fluid" >
                    </div>
                    <h3 class="card-title">Best shows</h3>
                    <p class="lead">Lorem ipsum, dolor sit amet consectetur adipisicing elit.  Eum ipsam nisi recusandae delectus iure ipsum voluptatem </p>
                    <button class="btn bg-warning text-dark">Learn more</button>
                  </div>
                </div>
              </div>

            </div>

            </div>
          </div>
        </section>

         <section id="Team" class="team section-padding">

          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="section-header text-center pb-5">
                  <h2>Our  projects </h2>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, voluptates velit. <br> Est iure illum deserunt magnam hic repudiandae praesentium optio maiores perspiciatis! !</p>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12 col-md-6 col-lg-3">
                <div class="card text-center">
                  <div class="card-body">
                    <img src="images/action.jpg" alt="" class="img-fluid rounded-circle">
                    <h3 class="card-title py-2">Action</h3>
                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique odit consequatur architecto accusamus incidunt consequuntur maxime nemo rerum  </p>
                    <p class="socials">
                      <i class="bi bi-twitter text-dark mx-1"></i>
                      <i class="bi bi-facebook text-dark mx-1"></i>
                      <i class="bi bi-linkedin text-dark mx-1"></i>
                      <i class="bi bi-instagram text-dark mx-1"></i>


                    </p>
                  </div>
                </div>
              </div>

              <div class="col-12 col-md-6 col-lg-3">
                <div class="card text-center">
                  <div class="card-body">
                    <img src="images/advanture.jpg" alt="" class="img-fluid rounded-circle">
                    <h3 class="card-title py-2">Advanture</h3>
                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique odit consequatur architecto accusamus incidunt consequuntur maxime nemo rerum  </p>
                    <p class="socials">
                      <i class="bi bi-twitter text-dark mx-1"></i>
                      <i class="bi bi-facebook text-dark mx-1"></i>
                      <i class="bi bi-linkedin text-dark mx-1"></i>
                      <i class="bi bi-instagram text-dark mx-1"></i>
                    </p>
                  </div>
                </div>
              </div>


              <div class="col-12 col-md-6 col-lg-3">
                <div class="card text-center">
                  <div class="card-body">
                    <img src="images/horror.jpg" alt="" class="img-fluid rounded-circle">
                    <h3 class="card-title py-2">Horror</h3>
                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique odit consequatur architecto accusamus incidunt consequuntur maxime nemo rerum  </p>
                    <p class="socials">
                      <i class="bi bi-twitter text-dark mx-1"></i>
                      <i class="bi bi-facebook text-dark mx-1"></i>
                      <i class="bi bi-linkedin text-dark mx-1"></i>
                      <i class="bi bi-instagram text-dark mx-1"></i>
                    </p>
                  </div>
                </div>
              </div>


              <div class="col-12 col-md-6 col-lg-3">
                <div class="card text-center">
                  <div class="card-body">
                    <img src="images/kids.jpg" alt="" class="img-fluid rounded-circle">
                    <h3 class="card-title py-2">KIDS</h3>
                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique odit consequatur architecto accusamus incidunt consequuntur maxime nemo rerum  </p>
                    <p class="socials">
                      <i class="bi bi-twitter text-dark mx-1"></i>
                      <i class="bi bi-facebook text-dark mx-1"></i>
                      <i class="bi bi-linkedin text-dark mx-1"></i>
                      <i class="bi bi-instagram text-dark mx-1"></i>


                    </p>
                  </div>
                </div>
              </div>

            </div>
            
          </div>
         </section>


      <section id="contact" class="contact section-padding">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-header text-center pb-5">
                <h2> Contact </h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic, voluptates velit. <br> Est iure illum deserunt magnam hic repudiandae praesentium optio maiores perspiciatis! !</p>
              </div>
            </div>
          </div>
           <div class="row m-0">
            <div class="col-md-12 p-0 pt-4 pb-4">
              
              <form action="#"  class="bg-light p-4.m-auto ">

                <div class="row">
                  <div class="col-md-12">
                    <div class="mb-3">
                      <input type="text" class="form-control" required placeholder="Your full name">
                    </div>
                  </div>
                
                  <div class="col-md-12">
                    <div class="mb-3">
                      <input type="email" class="form-control" required placeholder="Your Email">
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="mb-3">
                      <textarea  rows="3 required" class="form-control"> Your query </textarea>
                    </div>
                  </div> 
                  <br>
                  <br> <br>
                
                  <button class="btn btn-warning btn-lg btn-block mt-3">submit</button>
                
                </div>

              </form>
            
            </div>
           </div>
        </div>

    </section>
</main>
   










    </form>

    <footer class="bg-dark p-2 text-center">
        <div class="container">
          <p class="text-white">
            All right reserved @website name
          </p>
        </div>
      </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>



</body>
</html>

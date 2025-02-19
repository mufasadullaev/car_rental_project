<?php include('includes/header.php'); ?>

<div class="container">
    <?= alertSuccess(); ?>
</div>

<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
  
    <!-- Carousel item 1 with Large Ad -->
    <div class="carousel-item active">
      <img src="assets/images/car-bg.webp" class="d-block w-100" alt="...">
      <div class="carousel-ad-content">
        <h2>Explore Our Premium Collection</h2>
        <p>Discover the car that matches your style.</p>
        <a href="cars.php" class="btn btn-primary">View Cars</a>
      </div>
    </div>
    
    <!-- Carousel item 2 with Large Ad -->
    <div class="carousel-item">
      <img src="assets/images/car-bg.webp" class="d-block w-100" alt="...">
      <div class="carousel-ad-content">
        <h2>Rent Luxury, Drive in Style</h2>
        <p>Experience the luxury at unbeatable prices.</p>
        <a href="cars.php" class="btn btn-primary">View Cars</a>
      </div>
    </div>
    
    <!-- Carousel item 3 with Large Ad -->
    <div class="carousel-item">
      <img src="assets/images/car-bg.webp" class="d-block w-100" alt="...">
      <div class="carousel-ad-content">
        <h2>Find Your Perfect Ride</h2>
        <p>Rent the best cars at your convenience.</p>
        <a href="cars.php" class="btn btn-primary">View Cars</a>
      </div>
    </div>
    
  </div>
  
  <!-- Carousel controls -->
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  
</div>



<div class="py-5 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h4 class="main-heading">Welcome to <?= webSetting('title') ?? 'Car Rental Services'; ?></h4>
                <div class="underline mx-auto"></div>
                <p>
                Welcome to AvailableCar, the gateway to your next journey! Whether you're looking for the perfect ride to elevate your travel experience or seeking a trusted platform to rent out your car, we've got you covered. Discover convenience, flexibility, and peace of mind, all in one place. Let's hit the road together!
                </p>
            </div>
        </div>
    </div>
</div>


<div class="bg-car1">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h2 class="text-white">Rent a car in few steps</h2>
                <div class="underline"></div>
                <h4 class="text-white">Drive worry free with <?= webSetting('title') ?? 'Car Rental Services'; ?></h4>
                <h4 class="text-white">24X7 Roadside assistance whenever you need</h4>
            </div>
            <div class="col-md-4 my-auto">
                <a href="cars.php" class="btn btn-web text-white w-100 fw-bold">Book a car now !</a>
            </div>
        </div>
    </div>
</div>

<div class="section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h4 class="main-heading text-center">Our Testimonials</h4>
                <div class="underline mx-auto"></div>

                <div class="owl-carousel owl-theme car-testi">
                    <div class="item">
                        <div class="testi-card text-center">
                            <h4 class="title1 fs-16 mb-2">John Doe</h4>
                            <p class="testi-para">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testi-card text-center">
                            <h4 class="title1 fs-16 mb-2">John Doe</h4>
                            <p class="testi-para">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <div class="testi-card text-center">
                            <h4 class="title1 fs-16 mb-2">John Doe</h4>
                            <p class="testi-para">
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
                            </p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>

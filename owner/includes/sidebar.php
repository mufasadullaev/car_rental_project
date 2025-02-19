<?php
$pageName = substr($_SERVER["SCRIPT_NAME"],strrpos($_SERVER["SCRIPT_NAME"],"/")+1);
?>
<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 " id="sidenav-main">
    <div class="sidenav-header">
      <!-- <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i> -->
      <a class="navbar-brand m-0" href="dashboard.php" target="_blank">
        <!-- <img src="assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo"> -->
        <!-- <span class="ms-1 font-weight-bold">Funda Service</span> -->
        <h4><?= webSetting('title') ?? 'Funda Services'; ?></h4>
      </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse w-auto" id="sidenav-collapse-main">
      <ul class="navbar-nav">
       
        <li class="nav-item">
          <a class="nav-link 
            <?= $pageName == "dashboard.php"?'active':'' ?>" href="dashboard.php">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fa fa-home <?= $pageName == "dashboard.php"?'text-white':'text-dark' ?>   text-lg"></i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>

        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Manage Booking</h6>
        </li>
        <li class="nav-item">
          <a class="nav-link  <?= $pageName == "bookings.php"?'active':'' ?>"  href="bookings.php">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fa fa-list <?= $pageName == "bookings.php"?'text-white':'text-dark' ?>   text-lg"></i>
            </div>
            <span class="nav-link-text ms-1">Bookings</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= $pageName == "booking-history.php"?'active':'' ?>" href="booking-history.php">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fa fa-list <?= $pageName == "booking-history.php"?'text-white':'text-dark' ?> text-lg"></i>
            </div>
            <span class="nav-link-text ms-1">Booking History</span>
          </a>
        </li>

        <li class="nav-item mt-3">
          <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Manage Services</h6>
        </li>
        <li class="nav-item">
          <a class="nav-link <?= $pageName == "cars.php"?'active':'' ?>" href="cars.php">
            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fa fa-car-alt <?= $pageName == "cars.php"?'text-white':'text-dark' ?>   text-lg"></i>
            </div>
            <span class="nav-link-text ms-1">Cars</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="sidenav-footer mx-3 ">
      <a class="btn bg-gradient-primary mt-3 fs-6 w-100" href="logout.php">
        <i class="fa fa-sign-out me-2"></i> Logout
      </a>
    </div>
  </aside>
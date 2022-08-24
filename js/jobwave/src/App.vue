<template>
  <!--  <div id="nav">
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </div>-->
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg">
    <!-- Container wrapper -->
    <div class="container-fluid">
      <!-- Toggle button -->
      <button class="navbar-toggler" type="button" data-mdb-toggle="collapse">
        <i class="fas fa-bars"></i>
      </button>
      <!-- Collapsible wrapper -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Navbar brand -->
        <a class="navbar-brand mt-2 mt-lg-0" href="#">
          <img
            id="main-logo"
            src="../public/img/jobwavelogo.jpeg"
            alt="main-logo"
            loading="lazy"
          />
        </a>
      </div>
      <!-- Right elements -->
      <div class="d-flex align-items-center">
        <!-- Icon -->
        <a class="text-reset me-3" href="#">
          <i class="fas fa-shopping-cart"></i>
        </a>

        <!-- Notifications -->
        <div class="dropdown" id="logo-text">Trabalho Temporario lda</div>
      </div>
      <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
  </nav>
  <nav class="navbar navbar-expand-lg second-nav">
    <!-- Container wrapper -->
    <div class="container-fluid">
      <!-- Toggle button -->
      <button class="navbar-toggler" type="button">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Collapsible wrapper -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent_two">
        <!-- Navbar brand -->
        <a class="navbar-brand mt-2 mt-lg-0 second-nav-text" href="#"> Jobs </a>
        <a class="navbar-brand mt-2 mt-lg-0 second-nav-text" href="#">
          Upload CV
        </a>
      </div>
      <!-- Collapsible wrapper -->

      <!-- Right elements -->
      <div class="d-flex align-items-center">
        <!-- Icon -->
        <a class="text-reset me-3" href="#">
          <i class="fas fa-shopping-cart"></i>
        </a>

        <!-- Notifications -->
        <div class="dropdown" id="contact-logo">
          <a href="tel:+447477022455"
            ><i class="bi bi-telephone-fill contact-item"></i
          ></a>
          <a href="mailto:geral.jobwave@gamil.com"
            ><i class="bi bi-envelope-fill contact-item"></i
          ></a>
          <a href="#">
            <i class="bi bi-instagram contact-item"></i>
          </a>
          <a href="#">
            <i class="bi bi-facebook contact-item"></i>
          </a>
          <a href="#">
            <i class="bi bi-twitter contact-item"></i>
          </a>
        </div>
      </div>
      <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
  </nav>
  <!-- Navbar -->
  <router-view />
</template>

<style scoped>
#main-logo {
  width: 70px;
  margin-left: 100px;
}

#logo-text {
  margin-right: 100px;
  font-weight: bold;
  color: #5a5a5aff;
  font-size: 27px;
  font-family: "Trebuchet MS", sans-serif;
}

#navbarSupportedContent_two {
  margin-left: 70px;
}

#contact-logo {
  margin-right: 100px;
}

.contact-item {
  color: white;
  margin-left: 40px;
  font-size: 20px;
}

.second-nav {
  background-color: rgb(27, 199, 255);
  padding: 0;
}

.second-nav-text {
  width: 100px;
  text-align: center;
  font-size: 16px;
  font-family: "Trebuchet MS", sans-serif;
  color: white;
  padding-top: 10px;
  padding-bottom: 10px;
  margin: 0;
}

.second-nav-text:hover {
  color: white !important;
  background-color: rgb(27, 175, 255);
}
</style>

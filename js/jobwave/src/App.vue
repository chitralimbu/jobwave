<template>
  <header class="site-header">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="header-inner">
            <div class="site-branding">
              <a href="index.html" aria-label="jobwave">
                <img src="@/assets/img/jobwave-logo.png" alt="jobwave" />
              </a>
            </div>
            <!-- End of site branding -->

            <nav
              class="navbar navbar-expand-lg site-navigation"
              aria-label="main navigation"
            >
              <button
                class="offcanvas-toggler"
                type="button"
                data-bs-toggle="offcanvas"
                data-bs-target="#offcanvasRight"
                aria-controls="offcanvasRight"
              >
                <span></span>
                <span></span>
                <span></span>
              </button>

              <div
                class="offcanvas offcanvas-end"
                tabindex="-1"
                id="offcanvasRight"
                aria-labelledby="offcanvasRightLabel"
              >
                <div class="offcanvas-header text-light">
                  <h5
                    class="offcanvas-title text-light"
                    id="offcanvasRightLabel"
                  >
                    Menu
                  </h5>
                  <button
                    type="button"
                    class="btn-close btn-close-white"
                    data-bs-dismiss="offcanvas"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="offcanvas-body">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <router-link class="nav-link" to="/">Home</router-link>
                    </li>
                    <li class="nav-item">
                      <router-link class="nav-link" to="/about"
                        >About</router-link
                      >
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link" href="candidate-lists.html"
                        >For Candidates</a
                      >
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link" href="company-lists.html"
                        >For Company</a
                      >
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="blog.html">Blog</a>
                    </li>
                    <li class="nav-item">
                      <router-link class="nav-link" to="/contact"
                        >Contact</router-link
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
            <!-- End of site navigation -->
          </div>
        </div>
        <!-- End of col -->
      </div>
    </div>
  </header>
  <!-- End of header -->
  <div class="banner-social">
    <div class="container-fluid h-100">
      <!-- decoration -->
      <img
        src="@/assets/img/triangle.svg"
        alt="triangle"
        class="decoration triangle"
      />
      <img
        src="@/assets/img/rectangle.svg"
        alt="rectangle"
        class="decoration rect"
      />
      <img
        src="@/assets/img/circle-sm.svg"
        alt="circle"
        class="decoration circle"
      />
      <img
        src="@/assets/img/circle-big.svg"
        alt="circle"
        class="decoration circle"
      />
      <!-- end of decoration -->
      <div class="row justify-content-end h-100">
        <div class="col-md-12 text-end">
          <div class="social-content">
            <h3 class="social-title">Follow Us</h3>
            <ul class="social-list">
              <li>
                <a
                  href="https://www.facebook.com/geral.grstt/"
                  target="_blank"
                  aria-label="social links"
                >
                  <i class="fa-brands fa-facebook-f"></i>
                </a>
              </li>
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-instagram"></i>
                </a>
              </li>
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-twitter"></i>
                </a>
              </li>
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
          <!-- End of social content -->
        </div>
      </div>
    </div>
  </div>
  <!-- End of banner social -->
  <router-view />
  <footer class="footer text-center">
    <div class="top-footer">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <a href="index.html" aria-label="jobwave">
              <img src="@/assets/img/jobwave-logo.png" alt="jobwave" />
            </a>
          </div>
          <!-- col-end  -->
          <div class="col-12">
            <div class="widget useful-links">
              <ul class="nav justify-content-center">
                <li class="nav-item">
                  <a href="about.html"> Our Network </a>
                </li>
                <li class="nav-item">
                  <a href="./about.html#mission"> Mission </a>
                </li>
                <li class="nav-item">
                  <a href="./about.html#vision"> Vision </a>
                </li>
                <li class="nav-item">
                  <a href="./about.html#value"> Values </a>
                </li>
              </ul>
            </div>
          </div>
          <!-- col-end  -->
          <div class="col-12">
            <div class="widget info-list">
              <ul class="nav justify-content-center">
                <li class="nav-item">
                  <a href="investor.html"> Investor </a>
                </li>
                <li class="nav-item">
                  <a href="contact.html"> Feedback </a>
                </li>
                <li class="nav-item">
                  <a href="sitemap.html"> Sitemap </a>
                </li>
                <li class="nav-item">
                  <a href="terms.html"> Terms & Conditions </a>
                </li>
                <li class="nav-item">
                  <a href="policy.html"> Cookies Policy </a>
                </li>
                <li class="nav-item">
                  <a href="faq.html"> Help </a>
                </li>
              </ul>
            </div>
          </div>
          <!-- col-end  -->
          <div class="col-12">
            <ul class="social-link d-flex justify-content-center">
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-facebook-f"></i>
                </a>
              </li>
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-instagram"></i>
                </a>
              </li>
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-twitter"></i>
                </a>
              </li>
              <li>
                <a href="#" aria-label="social links">
                  <i class="fa-brands fa-linkedin-in"></i>
                </a>
              </li>
            </ul>
          </div>
          <!-- col-end  -->
        </div>
      </div>
      <!-- container end  -->
    </div>
    <!-- top footer end  -->
    <div class="lower-footer copy-right">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="copy-right-text">
              Copyright &copy; 2023
              <a href="index.html">Job Wave</a>. All Rights Reserved.
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- container end  -->
  </footer>
</template>

<style scoped></style>

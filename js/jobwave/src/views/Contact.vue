<template>
  <section class="banner page-title">
    <div class="banner-item">
      <div class="banner-content">
        <div class="container">
          <div class="row">
            <div class="col-md-7">
              <img
                class="banner-image"
                data-animation-in="scaleIn"
                data-duration-in="10"
                src="@/assets/img/blog-title.jpg"
                alt="banner image"
              />
              <div class="banner-inner">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                      <a href="#">Home</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">
                      Contact
                    </li>
                  </ol>
                </nav>
                <h1
                  class="banner-title"
                  data-animation-in="fadeInUp"
                  data-delay-in="0.4"
                >
                  Our Contact.
                </h1>
              </div>
            </div>
            <!-- End of col -->
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End of banner -->

  <section class="contact-info block">
    <div class="container">
      <div class="row">
        <div class="col-md-4 mb-4 mb-md-0">
          <a
            href="mailto:khamantalkwithyou@gmail.com?cc=geral.jobwave@gmail.com,geral.gratt@gmail.com,jobwave2022@gmail.com"
          >
            <div class="inner-info text-center">
              <div class="icon mb-3">
                <svg width="62" height="70" viewBox="0 0 62 70" fill="none">
                  <path
                    d="M31 0L61.3109 17.5V52.5L31 70L0.689112 52.5V17.5L31 0Z"
                    fill="#E2F4FC"
                  />
                </svg>
                <i class="fa-solid fa-envelope"></i>
              </div>
              <h3>Email</h3>
              <a
                href="mailto:khamantalkwithyou@gmail.com?cc=geral.jobwave@gmail.com,geral.gratt@gmail.com,jobwave2022@gmail.com"
                >khamantalkwithyou@gmail.com</a
              ><br />
              <a href="mailto:jobwave2022@gmail.com">jobwave2022@gmail.com</a
              ><br />
              <a href="mailto:geral.gratt@gmail.com">geral.gratt@gmail.com</a
              ><br />
              <a href="mailto:geral.jobwave@gmail.com"
                >geral.jobwave@gmail.com</a
              >
            </div>
            <!-- inner info end  -->
          </a>
        </div>
        <!-- col end  -->
        <div class="col-md-4 mb-4 mb-md-0">
          <a href="#">
            <div class="inner-info text-center">
              <div class="icon mb-3">
                <svg width="62" height="70" viewBox="0 0 62 70" fill="none">
                  <path
                    d="M31 0L61.3109 17.5V52.5L31 70L0.689112 52.5V17.5L31 0Z"
                    fill="#E2F4FC"
                  />
                </svg>
                <i class="fa-solid fa-phone"></i>
              </div>
              <h3>Phone</h3>
              <a href="tel:+447477022455" target="_blank">+44 7477022455</a>
              <br />
              <a href="tel:+351289824506" target="_blank">+351 289 824 506</a
              ><br />
              <a href="tel:+351 916 047 044" target="_blank">+351 916 047 044</a
              ><br /><br />
            </div>
            <!-- inner info end  -->
          </a>
        </div>
        <!-- col end  -->
        <div class="col-md-4">
          <a href="#">
            <div class="inner-info text-center">
              <div class="icon mb-3">
                <svg width="62" height="70" viewBox="0 0 62 70" fill="none">
                  <path
                    d="M31 0L61.3109 17.5V52.5L31 70L0.689112 52.5V17.5L31 0Z"
                    fill="#E2F4FC"
                  />
                </svg>
                <i class="fa-solid fa-location-dot"></i>
              </div>
              <h3>Location</h3>
              <a>United Kingdom (HQ)</a> <br />
              <a>Portugal</a><br />
              <a>Netherlands</a><br />
              <a>UAE, Nepal</a><br />
            </div>
            <!-- inner info end  -->
          </a>
        </div>
        <!-- col end  -->
      </div>
    </div>
  </section>

  <section class="contact-form-container">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2 class="section-title">Get in <span>Touch Now.</span></h2>
        </div>
      </div>
      <form class="contact-form" action="mailto:khamantalkwithyou@gmail.com?cc=geral.jobwave@gmail.com,geral.gratt@gmail.com,jobwave2022@gmail.com">
        <!-- method not included -->
        <div class="row">
          <div class="col-sm-6 form-group">
            <label class="control-label" for="username">Your Name</label>
            <input
              type="text"
              name="username"
              id="username"
              class="form-control"
              placeholder="Enter your name"
              required=""
            />
          </div>
          <!-- form group end  -->
          <div class="col-sm-6 form-group">
            <label class="control-label" for="email">Your Email</label>
            <input
              type="email"
              name="email"
              id="email"
              class="form-control"
              placeholder="Enter your email address"
              required=""
            />
          </div>
          <!-- form group end  -->
        </div>
        <div class="row">
          <div class="col-sm-12 form-group">
            <label class="control-label" for="message">Your Message</label>
            <textarea
                name="body"
              class="form-control"
              id="message"
              placeholder="Write your message.."
              data-error="Write your message"
              required=""
            ></textarea>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12 form-group">
            <div class="custom-control custom-checkbox">
              <input
                type="checkbox"
                name="accept"
                class="custom-control-input"
                id="accept"
                required=""
              />
              <label class="custom-control-label" for="accept"
                >Accept Term &amp; privacy Policy</label
              >
            </div>
          </div>
          <div class="col-sm-12">
            <button class="btn btn-primary" type="submit" tabindex="0">
              <i class="fa-solid fa-paper-plane"></i>
              Send Message
            </button>
          </div>
        </div>
      </form>
    </div>
  </section>

  <section class="map-container block pt-5">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="map">
            <iframe
              style="height: 350px; width: 100%; border: 0"
              src="https://www.google.com/maps/embed/v1/place?q=United+Kingdom&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"
            ></iframe>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

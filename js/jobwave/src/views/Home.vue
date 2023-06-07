<template>
  <section class="banner">
    <div class="banner-slider">
      <div class="banner-item">
        <div class="banner-content">
          <div class="container">
            <div class="row">
              <div class="col-md-7">
                <img
                  class="banner-image"
                  data-animation-in="scaleIn"
                  data-duration-in="10"
                  src="@/assets/img/recruitment.jpg"
                  alt="banner image"
                />
                <div class="banner-inner">
                  <h2
                    class="banner-subtitle white"
                    data-animation-in="fadeInUp"
                    data-delay-in="0.2"
                  >
                    JOB WAVE
                  </h2>
                  <h1
                    class="banner-title white"
                    data-animation-in="fadeInUp"
                    data-delay-in="0.4"
                  >
                    A Trusted Global Network.
                  </h1>
                </div>
              </div>
              <!-- End of col -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End of banner slider -->
  </section>

  <section class="feature block">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2 class="section-title">Work with us</h2>
        </div>
      </div>
      <!-- End of row -->
      <div class="row gy-50">
        <div class="col-md-12">
          <div class="card feature-card">
            <figure class="card-img">
              <img src="@/assets/img/for-talent.jpg" alt="feature image" />
            </figure>
            <div class="card-body">
              <div class="content-left">
                <h3 class="card-title white">For Talent</h3>
                <div class="description">
                  <p></p>
                </div>
                <!-- End of row -->
                <div class="mt-4">
                  <a href="job-list.html" class="btn btn-outline-light">
                    <i class="fa-solid fa-briefcase"></i>
                    Job Opportunities
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- End of card -->
        </div>
        <!-- End of col -->
        <div class="col-md-12">
          <div class="card feature-card">
            <figure class="card-img">
              <img src="@/assets/img/for-client-2.jpg" alt="feature image" />
            </figure>
            <div class="card-body">
              <div class="content-left">
                <h3 class="card-title white">For Client</h3>
                <div class="description">
                  <p></p>
                </div>
                <!-- End of row -->
                <div class="mt-4">
                  <a href="/clients" class="btn btn-outline-light">
                    <i class="fa-solid fa-bell"></i>
                    To Know More
                  </a>
                </div>
              </div>
            </div>
          </div>
          <!-- End of card -->
        </div>
        <!-- End of col -->
      </div>
    </div>
  </section>

  <section class="jobs block">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="wrap">
            <h2 class="section-title">Featured <span>Industries</span></h2>
            <!--            <div class="slider-buttons">
              <button class="arrow arrow-prev" aria-label="button prev">
                <i class="fa-solid fa-chevron-left"></i>
              </button>
              <button class="arrow arrow-next" aria-label="button next">
                <i class="fa-solid fa-chevron-right"></i>
              </button>
            </div>-->
          </div>
        </div>
      </div>
      <!-- end of row -->
      <div class="row">
        <div class="col-md-12">
          <div class="row jobs-slider">
            <div
              class="col-lg-4 slider-item"
              v-for="(job, index) in jobsList"
              :key="index"
            >
              <Job :image="job.image" :text="job.title"></Job>
            </div>
          </div>
        </div>
        <!-- end of col -->
      </div>
    </div>
  </section>

  <section class="block-sm pb-0">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card feature-card feature-sm">
            <figure class="card-img">
              <img src="@/assets/img/work.jpg" alt="feature image" />
            </figure>
            <div class="card-body">
              <div class="content-left">
                <h2 class="card-title mb-4">Full-time or part time jobs?</h2>
              </div>
              <div class="button-group">
                <a
                  @click="this.$router.push('contact')"
                  class="btn btn-primary"
                >
                  <i class="fa-solid fa-share"></i>
                  Contact us
                </a>
              </div>
            </div>
          </div>
          <!-- End of card -->
        </div>
      </div>
    </div>
  </section>

  <section class="block">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-7">
          <h2 class="section-title">Job Wave: Who we are</h2>
          <div class="description">
            <p>
              JOB WAVE Is the realization of a long-held dream, where
              collaboration with the customer is central. Aware of the
              surrounding market, we stand out for our great responsiveness in
              services to our Clients, having been expanding its areas of
              intervention, in order to face respond positively to the new
              demands of the market. We propose a partnership that aims at the
              success of the Client, where delivery, dedication and
              professionalism are essential in the relationship and mission
              given. We are the solution you need for temporary worker needs!
            </p>
          </div>
        </div>
        <!-- End of col -->
        <div class="col-lg-5">
          <figure class="thumbnail text-center mt-3 mt-md-0">
            <img
              class="founder-img"
              src="@/assets/img/founder2.jpg"
              alt="smiling girl"
            />
          </figure>
        </div>
      </div>
    </div>
  </section>

  <!--  <section class="testimonials block">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="section-title dark pe-0">
            What People Say <span>About Us.</span>
          </h2>
        </div>
        &lt;!&ndash; end of col &ndash;&gt;
        <div class="col-md-12">
          <div class="testimonials-slider">
            &lt;!&ndash;            <div class="slider-buttons">
              <button class="arrow arrow-prev" aria-label="button prev">
                <i class="fa-solid fa-chevron-left"></i>
              </button>
              <button class="arrow arrow-next" aria-label="button next">
                <i class="fa-solid fa-chevron-right"></i>
              </button>
            </div>&ndash;&gt;
            <div class="slider-content">
              <div class="slider-item">
                <div class="card testimonial-card">
                  <div class="rating">
                    <img src="@/assets/img/icon-star.svg" alt="star" />
                    <img src="@/assets/img/icon-star.svg" alt="star" />
                    <img src="@/assets/img/icon-star.svg" alt="star" />
                    <img src="@/assets/img/icon-star.svg" alt="star" />
                    <img src="@/assets/img/icon-star.svg" alt="star" />
                  </div>
                  <span class="card-slogan"
                    >Lorem Ipsum is simply dummy text of the printing and
                    typesetting industry.</span
                  >
                  <div class="card-body">
                    <div class="description">
                      <p>
                        “There are many variations of passages of Lorem Ipsum
                        available, but the majority have suffered alteration in
                        some form, by injected humour, or randomised words which
                        don't look even.
                      </p>
                      <p>
                        slightly believable. If you are going to use a passage
                        of Lorem Ipsum, you need to be sure there isn't anything
                        embarrassing hidden in the middle of text.
                      </p>
                      <p>
                        Lorem Ipsum, you need to be sure there isn't anything
                        arrassing hidden in the middle of text.”
                      </p>
                    </div>
                  </div>
                  <div class="card-clients">
                    <figure class="avatar">
                      <img src="@/assets/img/team-1.jpg" alt="team one" />
                    </figure>
                    <div class="card-content">
                      <h3 class="client-name">Reman Das Shrestha</h3>
                      <span class="position">Ceo of Hamrobazar</span>
                    </div>
                  </div>
                </div>
              </div>
              &lt;!&ndash; End of slider item &ndash;&gt;
            </div>
            &lt;!&ndash; End of slider content &ndash;&gt;
          </div>
        </div>
        &lt;!&ndash; End of card &ndash;&gt;
      </div>
    </div>
  </section>-->

  <section class="our-location">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h2 class="section-title mb-75">
            Company’s Operating <span>Continent.</span>
          </h2>
        </div>
        <!-- end of col -->
        <div class="col-md-12">
          <figure class="thumbnail text-center">
            <img src="@/assets/img/map.png" alt="map" />
          </figure>
        </div>
      </div>
    </div>
  </section>

  <section class="clients-and-partners block pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-5 mb-5 text-center text-md-start">
          <h2 class="section-title">Our <span>Clients.</span></h2>
          <div class="description">
            <p>
<!--              Lorem Ipsum is simply dummy text of the printing and typesetting.-->
            </p>
          </div>
        </div>
        <!-- End of col -->
        <div class="col-lg-6 offset-lg-1 mb-5 text-center text-md-start">
          <h2 class="section-title">Our <span>Partners.</span></h2>
          <div class="client-area text-center text-md-start">
            <div class="row">
              <div class="col-lg-3">
                <img src="@/assets/img/nau.jpeg" alt="client" />
              </div>
              <div class="col-lg-3">
                <img src="@/assets/img/nh.jpeg" alt="client" />
              </div>
              <div class="col-lg-3">
                <img src="@/assets/img/tivoli.jpeg" alt="client" />
              </div>
              <div class="col-lg-3">
                <img src="@/assets/img/schroll.jpg" alt="client" />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import Job from "@/components/Job";
export default {
  name: "Home",
  data() {
    return {
      jobsList: [
        {
          title: "Manufacturing",
          image: "manufacturing.jpg",
        },
        {
          title: "Construction",
          image: "construction.jpg",
        },
        {
          title: "Farm/Agriculture",
          image: "farm.jpg",
        },
        {
          title: "Hospitality",
          image: "hotel.jpg",
        },
        {
          title: "Health/Medical",
          image: "healthcare.jpg",
        },
        {
          title: "Education/Consultancy",
          image: "education.jpg",
        },
      ],
    };
  },
  components: { Job },
};
</script>

<style scoped>
.slider-item {
  margin-top: 5px;
}

.founder-img {
  border-radius: 20px;
}
</style>

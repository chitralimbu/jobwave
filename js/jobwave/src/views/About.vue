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
                src="@/assets/img/about-banner.jpg"
                alt="banner image"
              />
              <div class="banner-inner">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                      <a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">
                      About
                    </li>
                  </ol>
                </nav>
                <h1
                  class="banner-title"
                  data-animation-in="fadeInUp"
                  data-delay-in="0.4"
                >
                  About Us.
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

  <section class="show-discription block" id="mission">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <h2 class="section-title">Our <span>Mission.</span></h2>
          <h5>
            There are many variations of passages of Lorem Ipsum available, but
            the majority have suffered alteration in some form, by injected
            humour, or randomised words but the majority which.
          </h5>
        </div>
        <!-- col end  -->

        <div class="col-lg-6">
          <figure class="support-img mt-3 mt-md-0">
            <img
              src="@/assets/img/building.jpg"
              alt="support-img"
              class="w-100 h-100"
            />
          </figure>
        </div>
      </div>
      <!-- End of row -->

      <div class="row mt-5">
        <div class="col-lg-5 offset-lg-3">
          <p class="discription-text">
            All the Lorem Ipsum generators on the Internet tend to repeat
            predefined chunks as necessary, making this the first true generator
            on the Internet. It uses a dictionary of over 200.
          </p>
        </div>
        <div class="col-lg-4">
          <p>
            All the Lorem Ipsum generators on the Internet tend to repeat
            predefined chunks as necessary, making this the first true generator
            on the Internet. It uses a dictionary of over 200.
          </p>
        </div>
      </div>
      <!-- end of row  -->
    </div>
  </section>
  <!-- end of mission section  -->

  <section class="vision" id="vision">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="showcase-wrapper position-relative">
            <figure class="main-showcase">
              <img src="@/assets/img/room.jpg" alt="main-showcase" />
            </figure>
            <figure class="circle-deco position-absolute">
              <img src="@/assets/img/feature-shape.svg" alt="feature-shape" />
            </figure>
            <div class="row">
              <div class="col-lg-6 offset-lg-6">
                <div class="vision-content">
                  <h2 class="section-title">Our <span>Vision.</span></h2>
                  <p class="mb-0">
                    All the Lorem Ipsum generators on the Internet tend to
                    repeat predefined chunks as necessary, making this the first
                    true generator on the Internet. It uses a dictionary of over
                    200.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- vision section end  -->

  <section class="value" id="value">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="value-content">
            <h2 class="section-title mb-0">Our <span>Value.</span></h2>
          </div>
        </div>
        <!-- col end  -->
      </div>
      <div class="row">
        <div class="col-12">
          <ul class="list">
            <li>
              All the Lorem Ipsum generators on the Internet tend to repeat
              predefined chunks as necessary, making this the.
            </li>
            <li>
              There are many variations of passages of Lorem Ipsum available,
              but the majority have suffered alteration in some form, by
              injected humour, or randomised words but the majority which.
            </li>
            <li>
              All the Lorem Ipsum generators on the Internet tend to repeat
              predefined chunks as necessary, making this the.
            </li>
            <li>
              There are many variations of passages of Lorem Ipsum available,
              but the majority have suffered alteration in some form, by
              injected humour, or randomised words but the majority which.
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  <!-- value section end  -->

  <section class="team block">
    <div class="container">
      <div class="row">
        <div class="col-12 text-center">
          <h2 class="section-title">Our <span>Team.</span></h2>
        </div>
        <!-- endof col  -->
      </div>
      <!-- end of row  -->

      <div class="row">
        <People
          v-for="(person, index) in this.people"
          :key="index"
          :image="person.image"
          :name="person.name"
          :title="person.title"
          :instagram="person.instagram"
          :twitter="person.twitter"
          :linkedin="person.linkedin"
        >
        </People>
      </div>
    </div>
  </section>
  <!-- teams section End  -->
</template>

<script>
import People from "@/components/People";

export default {
  name: "About",
  components: { People },
  data() {
    return {
      people: [
        {
          image: "team-4.jpg",
          name: "Khaman Singh Gurung",
          title: "Founder",
          instagram: "#",
          twitter: "#",
          linkedin: "#",
        },
      ],
    };
  },
};
</script>

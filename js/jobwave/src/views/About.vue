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
                src="@/assets/img/business.jpg"
                alt="banner image"
              />
              <div class="banner-inner">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                      <a href="index.html">Home</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">
                      For Clients
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
            JOB WAVE - JOB TEMPORÁRIO LDA is the realization of a long-held
            dream, where collaboration with the customer is central.
          </h5>
        </div>
        <!-- col end  -->

        <div class="col-lg-6">
          <figure class="support-img mt-3 mt-md-0">
            <img
              src="@/assets/img/mission.jpg"
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
            Aware of the surrounding market, we stand out for our great
            responsiveness in services to our Clients, having been expanding its
            areas of intervention, in order to face and respond positively to
            the new demands of the market. We propose a partnership that aims at
            the success of the client, where delivery, dedication and
            professionalism are essential in the relationship and mission given.
            We are the solution you need for temporary worker needs!
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
              <img src="@/assets/img/vision.jpg" alt="main-showcase" />
            </figure>
            <figure class="circle-deco position-absolute">
              <img src="@/assets/img/feature-shape.svg" alt="feature-shape" />
            </figure>
            <div class="row">
              <div class="col-lg-6 offset-lg-6">
                <div class="vision-content">
                  <h2 class="section-title">Our <span>Vision.</span></h2>
                  <p class="mb-0">
                    JOB WAVE seeks to respond quickly to needs of its clients,
                    guaranteeing a permanent follow-up, so that this so we can
                    work in partnership. We are convinced that when we work in
                    together we will be excellent partners in business.
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
            <h2 class="section-title mb-0">Our <span>Values.</span></h2>
          </div>
        </div>
        <!-- col end  -->
      </div>
      <div class="row">
        <div class="col-12">
          <ul class="list">
            <li>
              Increasingly customize and improve the our services to our Client.
            </li>
            <li>Become excellent partners to your business</li>
            <li>Delivery, dedication and professionalism</li>
            <li>Respond positively to the demands of the market</li>
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
          image: "founder.jpg",
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

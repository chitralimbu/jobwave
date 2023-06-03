<template>
  <div class="col-md-6 col-lg-3">
    <div class="card team-card">
      <img :src="require(`@/assets/img/${this.image}`)" alt="team-1" />
      <div class="card-body">
        <div class="overlay"></div>
        <span class="rank">{{ title }}</span>

        <ul class="social-list">
          <li>
            <a href="#" aria-label="social links">
              <i class="fa-brands fa-@/assets-f"></i>
            </a>
          </li>
          <li>
            <a :href="this.instagram" aria-label="social links">
              <i class="fa-brands fa-instagram"></i>
            </a>
          </li>
          <li>
            <a :href="this.twitter" aria-label="social links">
              <i class="fa-brands fa-twitter"></i>
            </a>
          </li>
          <li>
            <a :href="this.linkedin" aria-label="social links">
              <i class="fa-brands fa-linkedin-in"></i>
            </a>
          </li>
        </ul>

        <h5 class="card-title">{{ this.name }}</h5>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "People",
  props: {
    image: String,
    name: String,
    title: String,
    instagram: String,
    twitter: String,
    linkedin: String,
  },
};
</script>

<style scoped>
.card {
  margin-top: 5px;
}
</style>

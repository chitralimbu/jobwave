<template>
  <div class="card card-style rounded overflow-hidden">
    <figure class="card-img">
      <img :src="require(`@/assets/img/${this.image}`)" alt="job image" />
    </figure>
    <div class="card-body">
      <h3 class="card-title">
        <a>{{ this.text }}</a>
      </h3>
    </div>
  </div>
  <!-- End of card -->
</template>

<script>
export default {
  name: "Job Tile",
  props: {
    image: String,
    text: String,
  },
  data() {},
};
</script>

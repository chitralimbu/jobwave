<template>
  <!-- Remove the container if you want to extend the Footer to full width. -->
  <footer class="text-white text-center text-lg-start bg-dark footer">
    <!-- Grid container -->
    <div class="container p-4">
      <!--Grid row-->
      <div class="row mt-3">
        <!--Grid column-->
        <div class="col">
          <h5 class="text-uppercase mb-4">Jobwave</h5>
          <p>Trabalho Temporario lda</p>
        </div>

        <!--Grid column-->
        <div class="col col-right">
          <h5 class="text-uppercase mb-4">Contact us</h5>
          <p><i class="bi bi-phone"></i> +351 916047044</p>
          <p><i class="bi bi-phone"></i> +44 7477022455</p>
          <p><i class="bi bi-envelope"></i> geral.jobwave@gamil.com</p>
          <p><i class="bi bi-envelope"></i> geral.grstt@gamil.com</p>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
      <span>© 2022 Copyright: </span>
      <span
        ><a class="text-white" href="https://mdbootstrap.com/"
          >jobwave.eu</a
        ></span
      >
      <span> | </span>
      <span><a href="#" style="color: white">Chitra Limbu</a></span>
    </div>
    <!-- Copyright -->
  </footer>
</template>

<script>
export default {
  name: "Footer",
};
</script>

<style scoped>
.footer {
  font-family: "Trebuchet MS", sans-serif;
  font-size: 13.5px;
}

.col-right {
  margin-left: 50%;
}
</style>

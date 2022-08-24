<template>
  <div id="container">
    <div id="wrapper">
      <div id="form-container">
        <div id="form-wrapper">
          <form>
            <div class="row">
              <div id="tell" class="col">Tell us about yourself ...</div>
            </div>
            <div class="row g-3">
              <div class="col">
                <input
                  type="text"
                  class="form-control"
                  placeholder="First name"
                  aria-label="First name"
                  required
                />
              </div>
              <div class="col">
                <input
                  type="text"
                  class="form-control"
                  placeholder="Last name"
                  aria-label="Last name"
                  required
                />
              </div>
            </div>
            <div class="row g-3">
              <div class="col">
                <input
                  type="text"
                  class="form-control"
                  placeholder="Phone Number"
                  aria-label="Phone Number"
                  pattern="[0-9].*"
                  required
                />
              </div>
              <div class="col">
                <input
                  type="email"
                  class="form-control"
                  placeholder="my@email.com"
                  aria-label="Email"
                  required
                />
              </div>
            </div>
            <div class="row g-3">
              <div class="col">
                <input
                  type="text"
                  class="form-control"
                  placeholder="More Details"
                  aria-label="More Details"
                />
              </div>
              <div class="col">
                <input
                  class="form-control"
                  type="file"
                  id="formFile"
                  required
                />
              </div>
            </div>
            <div class="row">
              <div class="col">
                <button id="submit-form" type="submit" class="btn btn-primary">
                  Submit
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div id="bottom-container">
    <div id="bottom-wrapper">
      <div class="row row-cols-8 bottom-grid">
        <div class="col">housekeeping</div>
        <div class="col">waiter</div>
        <div class="col">cook</div>
        <div class="col">cleaner</div>
        <div class="col">agriculture</div>
        <div class="col">butler</div>
        <div class="col">cruise</div>
        <div class="col">many more</div>
      </div>
    </div>
  </div>

  <div id="footer-container">
    <Footer />
  </div>
</template>

<script>
import Footer from "@/components/Footer";

export default {
  name: "Home",
  components: { Footer },
};
</script>

<style scoped>
#container {
  width: 100%;
}

#wrapper {
  position: relative;
  width: 100%;
  background-image: url("../../public/img/work.jpg");
  background-size: cover;
  background-color: skyblue;
  height: 70vh;
}

#bottom-container {
  width: 100%;
  height: 100%;
}

#bottom-wrapper {
  width: 100%;
  background-color: rgb(27, 199, 255);
  height: 10.9vh;
}

#form-container {
  height: 80%;
  background-color: white;
  width: 60vw;
  margin: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

#submit-form {
  width: 100%;
  border: none;
  background-color: rgb(27, 175, 255);
}

.col {
  padding-top: 25px;
  font-family: "Trebuchet MS", sans-serif;
}

#form-wrapper {
  width: 85%;
  margin: 0;
  position: absolute;
  top: 45%;
  left: 50%;
  transform: translate(-50%, -50%);
}

#tell {
  font-size: 40px;
}

.bottom-grid {
  color: white;
  text-align: center;
  margin-left: 70px;
  margin-right: 100px;
}

#footer-container {
  max-width: 100vw;
}
</style>

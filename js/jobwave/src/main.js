import { createApp } from "vue";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import "@/assets/vendors/fontawesome/css/all.min.css";
import "@/assets/vendors/bootstrap/css/bootstrap.min.css";
import "@/assets/vendors/slick/slick.css";
import "@/assets/vendors/slick/slick-theme.css";
import "@/assets/vendors/nice-select/nice-select.css";
import "@/assets/css/style.min.css";
import "@/assets/js/jquery.min.js";
import "@/assets/vendors/bootstrap/js/bootstrap.bundle.min.js";
import "@/assets/vendors/slick/slick.min.js";
import "@/assets/vendors/chartjs/chart.umd.js";

createApp(App).use(router).mount("#app");

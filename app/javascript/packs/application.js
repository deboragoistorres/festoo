import "bootstrap";
import flatpickr from 'flatpickr';

require("flatpickr/dist/flatpickr.css");
console.log("applicationjs")



document.addEventListener("turbolinks:load", () => {
  console.log("turbolinks load")
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "d/m/Y",
    dateFormat: "Y-m-d",
    // locale: Portuguese
  });
});

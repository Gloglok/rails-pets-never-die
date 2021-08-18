import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const startDate = document.getElementById("range_start");
const endDate = document.getElementById("range_end");
const totalDays = document.getElementById("total-days");
const pricePerDay = document.getElementById("price-per-day");
const totalPriceElement = document.getElementById("total-price");

const initFlatpickr = () => {
  const reservationForm = document.getElementById('reservation-form-div');
  if (reservationForm) {
    const reservations = JSON.parse(reservationForm.dataset.reservations);
    console.log(reservations);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end"})],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": reservations,
    })
  }
};

const dynamicPrice = () => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
  let nbrOfDays = dateDiffInMilliseconds / 86400000;

  if (startDate.value && endDate.value) {
    totalPriceElement.innerText = nbrOfDays * pricePerDay.innerText;
    totalDays.innerText = nbrOfDays
  }
};

if (startDate) {
  [startDate, endDate].forEach((date) => {
    date.addEventListener("change", () => {
      dynamicPrice();
    });
  });
};

export { initFlatpickr };
export { dynamicPrice };

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const startDate = document.getElementById("range_start");
const endDate = document.getElementById("range_end");
const totalDays = document.getElementById("total-days")
const pricePerDay = document.getElementById("price-per-day").innerText;
const totalPriceElement = document.getElementById("total-price");

const initFlatpickr = () => {
  const reservationForm = document.getElementById('reservation-form-div');
  if (reservationForm) {
    const reservations = JSON.parse(reservationForm.dataset.reservations);
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
  console.log(startDate.value);
  console.log(endDate.value);
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
  console.log(dateDiffInMilliseconds);
  let nbrOfDays = dateDiffInMilliseconds / 86400000;

  if (startDate.value && endDate.value) {
    totalPriceElement.innerText = nbrOfDays * pricePerDay
    totalDays.innerText = nbrOfDays
  }
};

[startDate, endDate].forEach(date => {
  date.addEventListener("change", () => {
    dynamicPrice();
  });
})

export { initFlatpickr };
export { dynamicPrice };

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  const reservationForm = document.getElementById('reservation-form-div');
  if (reservationForm) {
    const reservations = JSON.parse(reservationForm.dataset.reservations);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end" })],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": reservations
    })

    const startDate = document.getElementById("range_start");
    const endDate = document.getElementById("range_end");
    const totalDays = document.getElementById("total-days")
    const pricePerDay = document.getElementById("price-per-day").innerText;
    const totalPriceElement = document.getElementById("total-price");

    const dynamicPrice = () => {
      let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
      let nbrOfDays = dateDiffInMilliseconds / 86400000;
      if (startDate.value && endDate.value) {
        totalDays.innerText = nbrOfDays
        totalPriceElement.innerText = nbrOfDays * pricePerDay
      }
    };

    [startDate, endDate].forEach(date => {
      date.addEventListener("change", (event) => {
        dynamicPrice();
      });
    })
  }
};

export { initFlatpickr };

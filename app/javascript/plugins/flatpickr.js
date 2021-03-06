import flatpickr from "flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"



const initFlatpickr = () => {
  const bookingForm = document.getElementById('booking-form-div');
  if (bookingForm) {
    const bookings = JSON.parse(bookingForm.dataset.bookings);
    flatpickr("#range_start", {
      plugins: [new rangePlugin({ input: "#range_end"})],
      minDate: "today",
      inline: true,
      dateFormat: "Y-m-d",
      "disable": bookings,
    })
  }
};

// je récupère les dates
const startDate = document.getElementById("range_start");
const endDate = document.getElementById("range_end");
// je récupère l'emplacement du nombre de nuits
const totalNights = document.getElementById("total-nights")
// je récupère le prix d'une nuit sur le yacht
const yachtPricePerNight = document.getElementById("flat-price-per-night").innerText;
console.log(yachtPricePerNight)
// et l'emplacement du prix total
const totalPriceElement = document.getElementById("total-price");

const dynamicPrice = () => {
  let dateDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
  let nbrOfNights = dateDiffInMilliseconds / 86400000;
  // je n'affiche le nombre de nuits que si les 2 dates sont séléctionnées
  if(startDate.value && endDate.value) {
    totalNights.innerText = nbrOfNights
    totalPriceElement.innerText = nbrOfNights * yachtPricePerNight
  }
};

[startDate, endDate].forEach(date => {
  date.addEventListener("change", (event) => {
    dynamicPrice();
  });
})

export { initFlatpickr };

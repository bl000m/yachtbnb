import { Controller } from "stimulus"
import mapboxgl from "mapbox-gl"

export default class extends Controller {
    static targets = ["coordinates", "address"]

    connect() {
      console.log("The 'geocode' controller is now loaded!");
    }

export default class extends Controller {
  static targets = ["coordinates", "address"]

  connect() {
    console.log("The 'geocode' controller is now loaded!");
  }

  show(event) {
    event.preventDefault();
    const apiKey = `https://api.mapbox.com/geocoding/v5/mapbox.places/${this.addressTarget.value}.json?access_token=pk.eyJ1IjoibWF0aGlhcGFnYW5pIiwiYSI6ImNsMzJ2bjJnNzAyMmgzbHBqMzFoNDhmNXcifQ.u5YYTMSyhi7K7GIvPOLtjA`;
    fetch(apiKey)
      .then(response => response.json())
      .then((data) => {
        const longitude = data.features[0].center[0];
        const latitude = data.features[0].center[1];
        this.coordinatesTarget.innerText = `longitude: ${longitude} latitude: ${latitude}`;
        mapboxgl.accessToken = "pk.eyJ1IjoibWF0aGlhcGFnYW5pIiwiYSI6ImNsMzJ2bjJnNzAyMmgzbHBqMzFoNDhmNXcifQ.u5YYTMSyhi7K7GIvPOLtjA";
        const map = new mapboxgl.Map({
          container: "map",
          style: "mapbox://styles/mapbox/streets-v9",
          center: [Number(longitude), Number(latitude)],
          zoom: 12
        });
        new mapboxgl.Marker()
          .setLngLat([Number(longitude), Number(latitude)])
          .addTo(map);
      });
  }
}

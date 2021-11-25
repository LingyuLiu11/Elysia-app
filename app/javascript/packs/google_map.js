import { Loader } from '@googlemaps/js-api-loader';
const loader = new Loader({
  apiKey: "AIzaSyAvwMrjYJ-pgIW-gEaxSQFkIqEPvwnNyQI",
  version: "weekly",
  libraries: ["places"]
});

const mapOptions = {
  center: {
    lat: 0,
    lng: 0
  },
  zoom: 4
};

// Promise
loader
  .load()
  .then((google) => {
    new google.maps.Map(document.getElementById("map"), mapOptions);
  })
  .catch(e => {
    console.log(123)
});

loader.loadCallback(e => {
  if (e) {
    console.log(e);
  } else {
    new google.maps.Map(document.getElementById("map"), mapOptions);
  }
});
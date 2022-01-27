const http = require('http');
const fs = require('fs');

const weather = {
  Clouds: '^^^',
  Clear: ':::',
  Rain: ':::',
  Thunderstorm: '/\/',
  Fog: '---',
  Mist: '---',
  Snow: ':::',
  Smoke: '__-',
};

let output;

const appid1 = "5d401c08179c9b831011bece440cc099";
const appid2 = "2bfc63843702bd4c64c8d285d2ec26e8";
//http://api.openweathermap.org/data/2.5/weather?id=2023469&appid=2bfc63843702bd4c64c8d285d2ec26e8

http.get(
  `http://api.openweathermap.org/data/2.5/weather?id=2023469&appid=${appid2}`,
  resp => {
    let data = "";

    resp.on("data", (chunk) => data += chunk);

    resp.on("end", () => {

      let json = JSON.parse(data);
      if (!json.main.temp) return;
      let temp = Math.round(json.main.temp - 273);
      if (temp > 0) temp = "+" + temp;
      output = `${temp}°`;
      fs.writeFile('/home/gamabunta/nodejs/txt', output,'utf8', (err) => {
        if (err) {
          throw err;
          console.log(err);
        }
      })
    });
  }
)

.on("error", err => {
  let error = err.message;
  fs.writeFile('/home/gamabunta/nodejs/error', error, (err) => {
    if (err) {
      throw err;
      console.log('write err: ' + err);
    }
  })
});

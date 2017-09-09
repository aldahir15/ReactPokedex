const MovingObject = require('./lib/moving_object.js');
const Util = require('./lib/util.js');
const Asteroid = require('./lib/asteroid.js');
document.addEventListener("DOMContentLoaded", function(){
  let m = new MovingObject({position: [50,50], radius: 10, color: "red", velocity: [20,10]});
  var canvas = document.getElementById('canvas');
  var c = canvas.getContext('2d');
  m.move();
  m.draw(c);
  let asteroid = new Asteroid([50,50]);
  console.log(asteroid.velocity);
});

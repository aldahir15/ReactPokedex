const MovingObject = require("./moving_object.js");
const Util = require("./util.js");


class Asteroid extends MovingObject{
  constructor(pos){
    super({position: pos, radius : Asteroid.prototype.RADIUS,
    color: Asteroid.prototype.COLOR , velocity : Util.randomVec(20)});
  }
}

Asteroid.prototype.COLOR = "red";
Asteroid.prototype.RADIUS = 15;


module.exports = Asteroid;

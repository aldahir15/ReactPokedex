Function.prototype.inherits = function(superClass) {
  this.prototype = Object.create(superClass.prototype);
  this.prototype.constructor = this;
};

function MovingObject () {}


function Ship () {}
Ship.inherits(MovingObject);

function Asteroid () {}
Asteroid.inherits(MovingObject);

MovingObject.prototype.sayName = function() {
   console.log('adsfads');
};

const asteroid = new Asteroid();
asteroid.sayName();

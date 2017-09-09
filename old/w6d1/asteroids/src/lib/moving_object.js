class MovingObject{
  constructor(options){
    this.position = options.position;
    this.radius = options.radius;
    this.color = options.color;
    this.velocity =options.velocity;
  }

  draw(ctx){
    ctx.fillStyle = this.color;
    ctx.beginPath();
    ctx.arc(...this.position, this.radius,0, Math.PI *2);
    ctx.fill();
  }

  move() {
    this.position[0] += this.velocity[0];
    this.position[1] += this.velocity[1];    
  }
}



module.exports = MovingObject;

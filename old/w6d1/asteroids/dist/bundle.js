/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports, __webpack_require__) {

const MovingObject = __webpack_require__(1);
const Util = __webpack_require__(2);
const Asteroid = __webpack_require__(3);
document.addEventListener("DOMContentLoaded", function(){
  let m = new MovingObject({position: [50,50], radius: 10, color: "red", velocity: [20,10]});
  var canvas = document.getElementById('canvas');
  var c = canvas.getContext('2d');
  m.move();
  m.draw(c);
  let asteroid = new Asteroid([50,50]);
  console.log(asteroid.velocity);
});


/***/ }),
/* 1 */
/***/ (function(module, exports) {

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


/***/ }),
/* 2 */
/***/ (function(module, exports) {

const Util = {
  inherits (childClass, parentClass){
    childClass.prototype = Object.create(parentClass.prototype);
    childClass.constructor = childClass;
  },
  scale(vec, m){
    return [vec[0] * m, vec[1] * m];

  },
  randomVec (length) {
    const deg = 2 * Math.PI * Math.random();
    return Util.scale([Math.sin(deg), Math.cos(deg)],length);
  }
};

module.exports = Util;


/***/ }),
/* 3 */
/***/ (function(module, exports, __webpack_require__) {

const MovingObject = __webpack_require__(1);
const Util = __webpack_require__(2);


class Asteroid extends MovingObject{
  constructor(pos){
    super({position: pos, radius : Asteroid.prototype.RADIUS,
    color: Asteroid.prototype.COLOR , velocity : Util.randomVec(20)});
  }
}

Asteroid.prototype.COLOR = "red";
Asteroid.prototype.RADIUS = 15;


module.exports = Asteroid;


/***/ })
/******/ ]);
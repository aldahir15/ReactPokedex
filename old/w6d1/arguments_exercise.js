// function sum(...arg) {
//   let total = 0;
//   arg.forEach(function(el) {
//     total += el;
//   });
//
//   return total;
// }
//
// console.log(sum(1,2,3,4,5,6,7));
//
// Function.prototype.myBind = function(context, ...bindArgs) {
//   let that = this;
//   return function(...callArgs) {
//     return that.apply(context, bindArgs.concat(callArgs));
//   };
// };
//
// class Cat {
//   constructor(name) {
//     this.name = name;
//   }
//
//   says(sound, person) {
//     console.log(`${this.name} says ${sound} to ${person}!`);
//     return true;
//   }
// }
//
// const markov = new Cat("Markov");
// const breakfast = new Cat("Breakfast");
//
// markov.says("meow", "Ned");
// // Markov says meow to Ned!
// // true
//
// // bind time args are "meow" and "Kush", no call time args
// markov.says.myBind(breakfast, "meow", "Kush")();
// // Breakfast says meow to Kush!
// // true
//
// // no bind time args (other than context), call time args are "meow" and "me"
// markov.says.myBind(breakfast)("meow", "a tree");
// // Breakfast says meow to a tree!
// // true
//
// // bind time arg is "meow", call time arg is "Markov"
// markov.says.myBind(breakfast, "meow")("Markov");
// // Breakfast says meow to Markov!
// // true
//
// // no bind time args (other than context), call time args are "meow" and "me"
// const notMarkovSays = markov.says.myBind(breakfast);
// notMarkovSays("meow", "me");
// // Breakfast says meow to me!
// // true
//
// // function.myBind(newThis, someArgs)

function curriedSum(numArgs) {
  let args = [];

  return function _sum(arg) {
    args.push(arg);
    if (args.length === numArgs) {
      return args.reduce(function(total, el) {
        return total + el;
      }, 0);
    }
    else {
      return _sum;
    }
  };

}


Function.prototype.curry = function(numArgs) {
  let args = [];
  let that = this;

  return function waiter(arg) {
    args.push(arg);
    if (args.length === numArgs) {
      return that.apply(that, args);
    }
    else return waiter;
  };
};

const powersOfTwo = Math.pow.curry(2)(2);


console.log(powersOfTwo(5)); //should return 2 ^5 = 64
//shoulde return 4;

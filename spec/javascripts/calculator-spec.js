// require('./spec_helper.js');
// include('../../public/javascripts/calculator.js');

var calculator = {

  add: function(a,b) {
    return a+b;
  }, 

  sub: function(a,b) {
    return a-b;
  },

  div: function(a,b) {
	  return a/b;
  },

  mul: function(a,b) {
  	return a*b;
  }
};

//rSpec Tests 

describe("calculator functions", function() {
  it("returns the correct sum", function() {
    var a = 4;
    var b = 2;
  expect(calculator.add(a,b)).toBe(6);
  });

  it("returns the correct difference", function() {
    var a = 4;
    var b = 2;
  expect(calculator.sub(a,b)).toBe(2)
  });

  it("returns the correct quotient", function() {
    var a = 4;
    var b = 2;
  expect(calculator.div(a,b)).toBe(2)
  });

  it("returns the correct product", function() {
    var a = 4;
    var b = 2;
  expect(calculator.mul(a,b)).toBe(8)
  });
});












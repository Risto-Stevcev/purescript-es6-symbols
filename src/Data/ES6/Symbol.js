'use strict';

exports.symbol = function() {
  return Symbol();
}

exports["symbol'"] = function(name) {
  return Symbol(name);
}

exports.iterator = Symbol.iterator;

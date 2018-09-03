defmodule Semiring.Foreign do
  import Bitwise
  
  def intAdd do
    fn(x) ->
      fn(y) ->
  (x + y) ||| 0
      end
    end
  end

  def intMul do
    fn(x) ->
      fn(y) ->
  (x * y) ||| 0
      end
    end
  end

  def numAdd do
    fn(x) ->
      fn(y) ->
  (x + y)
      end
    end
  end
  
  def numMul do
    fn(x) ->
      fn(y) ->
  (x * y)
      end
    end
  end  
end

# "use strict";

# exports.intAdd = function (x) {
#   return function (y) {
#     /* jshint bitwise: false */
#     return x + y | 0;
#   };
# };

# exports.intMul = function (x) {
#   return function (y) {
#     /* jshint bitwise: false */
#     return x * y | 0;
#   };
# };

# exports.numAdd = function (n1) {
#   return function (n2) {
#     return n1 + n2;
#   };
# };

# exports.numMul = function (n1) {
#   return function (n2) {
#     return n1 * n2;
#   };
# };

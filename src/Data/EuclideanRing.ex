
defmodule EuclideanRing.Foreign do
  def intDegree do
    fn(x) ->
      min(abs(x), 2147483647)
    end
  end

  def intDiv do
    fn(x) ->
      fn(y) ->
  if y == 0 do
    0
  else
    case y > 0 do
      true -> Float.floor(x / y)
      false -> -Float.floor(x / -y)
    
  end
      end
    end
  end
end

#   "use strict";

# exports.intDegree = function (x) {
#   return Math.min(Math.abs(x), );
# };

# // See the Euclidean definition in
# // https://en.m.wikipedia.org/wiki/Modulo_operation.
# exports.intDiv = function (x) {
#   return function (y) {
#     if (y === 0) return 0;
#     return y > 0 ? Math.floor(x / y) : -Math.floor(x / -y);
#   };
# };

# exports.intMod = function (x) {
#   return function (y) {
#     if (y === 0) return 0;
#     var yy = Math.abs(y);
#     return ((x % yy) + yy) % yy;
#   };
# };

# exports.numDiv = function (n1) {
#   return function (n2) {
#     return n1 / n2;
#   };
# };

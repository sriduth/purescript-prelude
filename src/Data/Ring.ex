defmodule Ring.Foreign do
  import Bitwise
  
  def intSub do
    fn(x) ->
      fn(y) ->
	(x - y) ||| 0
      end
    end
  end

  def numSub do
    fn(n1) ->
      fn(n2) ->
	n1 - n2
      end
    end
  end
end

# "use strict";

# exports.intSub = function (x) {
#   return function (y) {
#     /* jshint bitwise: false */
#     return x - y | 0;
#   };
# };

# exports.numSub = function (n1) {
#   return function (n2) {
#     return n1 - n2;
#   };
# };

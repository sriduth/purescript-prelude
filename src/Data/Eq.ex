defmodule Eq.Foreign do
  def refEq do
    fn (r1) ->
      fn (r2) ->
  r1 == r1
      end
    end
  end

  def eqArrayImpl do
    fn (f) ->
      fn (xs) ->
  fn (ys) ->
    xs == ys
  end
      end
  end
end

  # "use strict";

# exports.refEq = function (r1) {
#   return function (r2) {
#     return r1 === r2;
#   };
# };

# exports.eqArrayImpl = function (f) {
#   return function (xs) {
#     return function (ys) {
#       if (xs === ys) return true;
#       if (xs.length !== ys.length) return false;
#       for (var i = 0; i < xs.length; i++) {
#         if (!f(xs[i])(ys[i])) return false;
#       }
#       return true;
#     };
#   };
# };

defmodule Semigroup.Foreign do
  def concatString do
    fn(s1) ->
      fn(s2) ->
	s1 <> s2
      end
    end
  end


  def concatArray do
    fn(xs) ->
      fn(ys) ->
	xs ++ ys
      end
    end
  end
end

# "use strict";

# exports.concatString = function (s1) {
#   return function (s2) {
#     return s1 + s2;
#   };
# };

# exports.concatArray = function (xs) {
#   return function (ys) {
#     if (xs.length === 0) return ys;
#     if (ys.length === 0) return xs;
#     return xs.concat(ys);
#   };
# };

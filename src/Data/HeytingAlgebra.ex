defmodule HeytingAlgebra.Foreign do
  def boolConj do
    fn(b1) ->
      fn(b2) ->
	b1 && b2
      end
    end
  end

  def boolDisj do
    fn(b1) ->
      fn(b2) ->
	b1 || b2
      end
    end
  end

  def boolNot do
    fn(b1) ->
      not b1
    end
  end
end

# "use strict";

# exports.boolConj = function (b1) {
#   return function (b2) {
#     return b1 && b2;
#   };
# };

# exports.boolDisj = function (b1) {
#   return function (b2) {
#     return b1 || b2;
#   };
# };

# exports.boolNot = function (b) {
#   return !b;
# };

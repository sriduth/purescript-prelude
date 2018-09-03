defmodule Functor.Foreign do
  def arrayMap do
    fn(f) ->
      fn(arr) ->
	l = length(arr)
	result = []

	Enum.each(0..l, fn(i) ->
	  result = [result | f.(arr[i])]
	end)

	result
      end
    end
  end
end

# "use strict";

# exports.arrayMap = function (f) {
#   return function (arr) {
#     var l = arr.length;
#     var result = new Array(l);
#     for (var i = 0; i < l; i++) {
#       result[i] = f(arr[i]);
#     }
#     return result;
#   };
# };

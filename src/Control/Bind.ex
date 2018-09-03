defmodule Bind.Foreign do
  def arrayBind do
    fn(arr) ->
      fn(f) ->
	len = length arr
	result = []
	Enum.each(0..len, fn(i) ->
	  result = [result | f.(arr[i])]
	end)

	result
      end
    end
  end
end

# "use strict";

# exports.arrayBind = function (arr) {
#   return function (f) {
#     var result = [];
#     for (var i = 0, l = arr.length; i < l; i++) {
#       Array.prototype.push.apply(result, f(arr[i]));
#     }
#     return result;
#   };
# };

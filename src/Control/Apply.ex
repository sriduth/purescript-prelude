defmodule Apply.Foreign do
  def arrayApply do
    fn (fs) ->
      fn (xs) ->
  l = length fs
  k = length xs
  result = []

  n = 0

  Enum.each(0..l, fn(i) ->
    f = fs[i]
    Enum.each(0..k, fn(j) ->
      result[n] = f.(xs[j])
      n = n + 1
    end)
  end)

  result
      end
    end
  end
end

# "use strict";

# exports.arrayApply = function (fs) {
#   return function (xs) {
#     var l = fs.length;
#     var k = xs.length;
#     var result = new Array(l*k);
#     var n = 0;
#     for (var i = 0; i < l; i++) {
#       var f = fs[i];
#       for (var j = 0; j < k; j++) {
#         result[n++] = f(xs[j]);
#       }
#     }
#     return result;
#   };
# };

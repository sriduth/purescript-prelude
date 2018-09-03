defmodule Unsafe.Foreign do
  def unsafeCompareImpl do
    fn (eq) ->
      fn (gt) ->
	fn (x) ->
	  fn (y) ->
	    case x < y do
	      true -> lt
	      false ->
		if x == y do
		  eq
		else
		  gt
		end
	    end
	  end
	end
      end
    end
  end
end

# "use strict";


# exports.unsafeCompareImpl = function (lt) {
#   return function (eq) {
#     return function (gt) {
#       return function (x) {
#         return function (y) {
#           return x < y ? lt : x === y ? eq : gt;
#         };
#       };
#     };
#   };
# };

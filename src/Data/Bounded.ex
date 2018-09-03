defmodule Bounded.Foreign do
  def topInt do
    2147483647    	   	  
  end

  def bottomInt do
    -2147483648
  end

  def topChar do
    ""
  end

  def bottomChar do
    ""
  end

  def topNumber do
  end

  def bottomNumber do
  end
end

# "use strict";

# exports.topInt = 2147483647;
# exports.bottomInt = -2147483648;

# exports.topChar = String.fromCharCode(65535);
# exports.bottomChar = String.fromCharCode(0);

# exports.topNumber = Number.POSITIVE_INFINITY;
# exports.bottomNumber = Number.NEGATIVE_INFINITY;

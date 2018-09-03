defmodule Show.Foreign do
  def showIntImpl do
    fn(n) -> inspect n end
  end

  def showNumberImpl do
    fn(str) -> inspect str end
  end

  def showCharImple do
    fn(ch) -> inspect ch end
  end

  def showStringImpl do
    fn(str) -> inspect str end
  end

  def showArrayImpl do
    fn(f) ->
      fn(xs) ->
  xs = Enum.map xs, fn(item) ->
    f.(item)
  end
  
  inspect xs
      end
    end
  end

  def cons do
    fn(head) ->
      fn(tail) ->
  head ++ tail
      end
    end
  end
  
  def join do
    fn(separator) -> 
      fn(xs) ->
  Enum.join xs, separator
      end
    end
  end
end

# "use strict";

# exports.showIntImpl = function (n) {
#   return n.toString();
# };

# exports.showNumberImpl = function (n) {
#   var str = n.toString();
#   return isNaN(str + ".0") ? str : str + ".0";
# };

# exports.showCharImpl = function (c) {
#   var code = c.charCodeAt(0);
#   if (code < 0x20 || code === 0x7F) {
#     switch (c) {
#       case "\x07": return "'\\a'";
#       case "\b": return "'\\b'";
#       case "\f": return "'\\f'";
#       case "\n": return "'\\n'";
#       case "\r": return "'\\r'";
#       case "\t": return "'\\t'";
#       case "\v": return "'\\v'";
#     }
#     return "'\\" + code.toString(10) + "'";
#   }
#   return c === "'" || c === "\\" ? "'\\" + c + "'" : "'" + c + "'";
# };

# exports.showStringImpl = function (s) {
#   var l = s.length;
#   return "\"" + s.replace(
#     /[\0-\x1F\x7F"\\]/g, // eslint-disable-line no-control-regex
#     function (c, i) {
#       switch (c) {
#         case "\"":
#         case "\\":
#           return "\\" + c;
#         case "\x07": return "\\a";
#         case "\b": return "\\b";
#         case "\f": return "\\f";
#         case "\n": return "\\n";
#         case "\r": return "\\r";
#         case "\t": return "\\t";
#         case "\v": return "\\v";
#       }
#       var k = i + 1;
#       var empty = k < l && s[k] >= "0" && s[k] <= "9" ? "\\&" : "";
#       return "\\" + c.charCodeAt(0).toString(10) + empty;
#     }
#   ) + "\"";
# };

# exports.showArrayImpl = function (f) {
#   return function (xs) {
#     var ss = [];
#     for (var i = 0, l = xs.length; i < l; i++) {
#       ss[i] = f(xs[i]);
#     }
#     return "[" + ss.join(",") + "]";
#   };
# };

# exports.cons = function (head) {
#   return function (tail) {
#     return [head].concat(tail);
#   };
# };

# exports.join = function (separator) {
#   return function (xs) {
#     return xs.join(separator);
#   };
# };
